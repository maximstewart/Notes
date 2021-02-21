#!/usr/bin/env python3

# Python Imports
import sys
import enum
import argparse

# Lib Imports
from Xlib import display
from Xlib.ext import randr, xinerama


try:
    from . import __version__
except ImportError:
    __version__ = "N/A"


class Position(enum.Enum):
    TOP    = enum.auto()
    BOTTOM = enum.auto()
    LEFT   = enum.auto()
    RIGHT  = enum.auto()

    def __str__(self):
        return self.name.lower()

    @staticmethod
    def from_str(pos):
        try:
            return Position[pos.upper()]
        except KeyError:
            raise ValueError(f"value '{pos}' not part of the Pos enum")


class Shape:
    def __init__(self, major, minor):
        if max(major, minor) > 1.0 or min(major, minor) < 0.0:
            raise ValueError(f"Shape out of range [0,1]: major={major}, minor={minor}")
        self.major = major
        self.minor = minor


class Monitor:
    def __init__(self, name, x, y, width, height):
        self.name   = name
        self.x      = x
        self.y      = y
        self.width  = width
        self.height = height


DEFAULTS = {
    "name": "Smart Position",
    "shape": (1.0, 0.4),
    "position": str(Position.LEFT),
}


class SmartPositioner:
    def __init__(self, name: str, shape: Shape, pos: Position, positioner_argv: list = None):
        self.positioner_argv = positioner_argv
        self.display    = display.Display()
        self.screen     = self.display.screen()
        self.root       = self.screen.root

        # self.fakeWindow = self.screen.root.create_window(0, 0, 1, 1, 1, self.screen.root_depth)

        self.name       = name
        self.shape      = shape
        self.pos        = pos
        self.id         = None
        self.monitors   = []

        self.printXineramaVersion()
        self.generateMonitorList()
        self.getActiveMonitor()


    def on_keybind(self, _, be):
        pass
        # if be.binding.command == f"nop {self.name}":
        #     self.toggle()


    def _get_instance(self):
        pass
        # tree = self.i3.get_tree()
        # if self.id is None:
        #     matches  = tree.find_instanced(self.name)
        #     instance = {m.window_instance: m for m in matches}.get(self.name, None)
        #     if instance is not None:
        #         self.id = instance.id
        # else:
        #     instance = tree.find_by_id(self.id)
        # return instance

    def toggle(self):
        scrSize = self.getScreenSize()
        mPos    = self.getMousePosition()
        self.display.flush() # Needed in some instances to prompt XWindows

        # kitty = self._get_instance()
        # if kitty is None:
        #     self.spawn()
        # else:
        #     focused_ws = self._get_focused_workspace()
        #     if focused_ws is None:
        #         print("no focused workspaces; ignoring toggle request")
        #         return
        #     if kitty.workspace().name == focused_ws.name:  # kitty present on current WS; hide
        #         self.i3.command(f"[con_id={self.id}] floating enable, move scratchpad")
        #     else:
        #         self.fetch(focused_ws)


    def getMousePosition(self):
        data = self.screen.root.query_pointer()._data
        return data["root_x"], data["root_y"]

    def getActiveMonitor(self):
        pos = self.getMousePosition()
        for mon in self.monitors:
            pass

    def getScreenSize(self):
        w = self.display.screen().width_in_pixels
        h = self.display.screen().height_in_pixels
        return w, h


    def printXineramaVersion(self):
        xinerama_version = self.display.xinerama_query_version()
        print('Found XINERAMA version %s.%s' % (
          xinerama_version.major_version,
          xinerama_version.minor_version,
        ), file=sys.stderr)

    def generateMonitorList(self):
        print('Available screens:')
        screens = xinerama.query_screens(self.root).screens
        i       = 1
        for (idx, screen) in enumerate(screens):
            x, y, w, h = screen.x, screen.y, screen.width, screen.height
            print('screen %d: %s' % (idx, screen))
            self.monitors.append( Monitor( "Monitor " + str(i), x, y, w, x ) )
            i += 1

        # resources = randr.get_screen_resources(self.root)
        # for output in resources.outputs:
        #     params = self.display.xrandr_get_output_info(output, resources.config_timestamp)
        #     if not params.crtc:
        #        continue

        #     crtc = self.display.xrandr_get_crtc_info(params.crtc, resources.config_timestamp)
        #     self.monitors.append( Monitor(params.name, crtc.width, crtc.height) )


    def spawn(self):
        pass
        # cmd_base = f"exec --no-startup-id kitty --name {self.name}"
        # if self.positioner_argv is None:
        #     cmd = cmd_base
        # else:
        #     argv = " ".join(self.positioner_argv)
        #     cmd  = f"{cmd_base} {argv}"
        # self.i3.command(cmd)

    def on_spawned(self, _, we):
        pass
        # if we.container.window_instance == self.name:
        #     self.id = we.container.id
        #     self.i3.command(f"[con_id={we.container.id}] "
        #                     "floating enable, "
        #                     "border none, "
        #                     "move scratchpad")
        #     self.fetch(self._get_focused_workspace())

    def on_moved(self, _, we):
        pass
        # # Con is floating wrapper; the Kitty window/container is a child
        # is_kitty = we.container.find_by_id(self.id)
        # if not is_kitty:
        #     return
        # focused_ws = self._get_focused_workspace()
        # if focused_ws is None:
        #     return
        # kitty = self._get_instance()  # need "fresh" instance to capture destination WS
        # kitty_ws = kitty.workspace()
        # if (kitty_ws is None or kitty_ws.name == focused_ws.name or
        #         kitty_ws.name == "__i3_scratch"):  # FIXME: fragile way to check if hidden?
        #     return
        # self.fetch(kitty_ws, retrieve=False)

    def _get_focused_workspace(self):
        pass
        # focused_workspaces = [w for w in self.i3.get_workspaces() if w.focused]
        # if not len(focused_workspaces):
        #     return None
        # return focused_workspaces[0]

    def fetch(self, ws, retrieve=True):
        pass
        # if self.id is None:
        #     raise RuntimeError("Kitty instance ID not yet assigned")
        #
        # if self.pos in (Position.TOP, Position.BOTTOM):
        #     width = round(ws.rect.width * self.shape.major)
        #     height = round(ws.rect.height * self.shape.minor)
        #     x = ws.rect.x
        #     y = ws.rect.y if self.pos is Position.TOP else ws.rect.y + ws.rect.height - height
        # else:  # LEFT || RIGHT
        #     width = round(ws.rect.width * self.shape.minor)
        #     height = round(ws.rect.height * self.shape.major)
        #     x = ws.rect.x if self.pos is Position.LEFT else ws.rect.x + ws.rect.width - width
        #     y = ws.rect.y
        #
        # self.i3.command(f"[con_id={self.id}] "
        #                 f"resize set {width}px {height}px, "
        #                 f"{', move scratchpad, scratchpad show' if retrieve else ''}"
        #                 f"move absolute position {x}px {y}px")

    @staticmethod
    def on_shutdown(_, se):
        exit(0)


def _split_args(args):
    try:
        split = args.index("--")
        return args[:split], args[split + 1:]
    except ValueError:
        return args, None


def _simple_fraction(arg):
    arg = float(arg)
    if not 0 <= arg <= 1:
        raise argparse.ArgumentError("Argument needs to be a simple fraction, within"
                                     "[0, 1]")
    return arg


def _parse_args(argv, defaults):
    ap = argparse.ArgumentParser(
        description="SmartPositioner: Window position wrapper for programs. "
                    "Arguments following '--' are forwarded to the program instance")
    ap.set_defaults(**defaults)
    ap.add_argument("-v", "--version",
                    action="version",
                    version=f"%(prog)s {__version__}",
                    help="show %(prog)s's version number and exit")
    ap.add_argument("-n", "--name",
                    help="name/tag connecting a Kitti3 bindsym with a Kitty instance. "
                         "Forwarded to Kitty on spawn and scanned for on i3 binding "
                         "events")
    ap.add_argument("-p", "--position",
                    type=Position.from_str,
                    choices=list(Position),
                    help="Along which edge of the screen to align the Kitty window")
    ap.add_argument("-s", "--shape",
                    type=_simple_fraction,
                    nargs=2,
                    help="shape of the terminal window major and minor dimensions as a "
                         "fraction [0, 1] of the screen size (note: i3bar is accounted "
                         "for such that a 1.0 1.0 shaped terminal would not overlap it)")

    args = ap.parse_args(argv)
    return args




def cli():
    argv_positioner3, argv_positioner = _split_args(sys.argv[1:])
    args = _parse_args(argv_positioner3, DEFAULTS)

    positioner = SmartPositioner(
        name=args.name,
        shape=Shape(*args.shape),
        pos=args.position,
        positioner_argv=argv_positioner,
    )
    # positioner.loop()


if __name__ == "__main__":
    cli()
