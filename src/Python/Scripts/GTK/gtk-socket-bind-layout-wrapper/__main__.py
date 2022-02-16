


#!/usr/bin/python3


# Python imports
import argparse
from setproctitle import setproctitle

# Gtk imports
import gi, faulthandler, signal
gi.require_version('Gtk', '3.0')
gi.require_version('Gdk', '3.0')
from gi.repository import Gtk
from gi.repository import Gdk
from gi.repository import GLib


# Application imports
# from __init__ import Main




class Main(Gtk.Window):
    """docstring for Main."""
    def __init__(self, args):
        super(Main, self).__init__()
        self.args = args
        width     = None
        height    = None

        try:
            width  = int(self.args.width)
            height = int(self.args.height)
        except Exception as e:
            print("Invalid width or height given. Using defaults...")
            width  = 800
            height = 600

        GLib.unix_signal_add(GLib.PRIORITY_DEFAULT, signal.SIGINT, Gtk.main_quit)
        self.connect('visibility-notify-event', self._reset_position)

        self.set_default_size(width, height)
        self.set_title(f"Yolo")
        # self.set_title(f"{app_name}")
        # self.set_icon_from_file("/usr/share/bulkr/bulkr.png")

        self.display   = Gdk.Display().get_default()
        self.mouse     = self.display.get_default_seat().get_pointer()
        self.placement = "bottom"
        self.set_decorated(False)
        self.show_all()


    def _reset_position(self, widget, eve):
        if eve.state == Gdk.VisibilityState.UNOBSCURED:
            screen, mouse_x, mouse_y = self.mouse.get_position()
            monitor    = self.display.get_monitor_at_point(mouse_x, mouse_y)
            window_w, window_h = self.get_size()
            geom_rect  = monitor.get_geometry()
            x, y, w, h = geom_rect.x, geom_rect.y, geom_rect.width, geom_rect.height
            new_x      = None
            new_y      = None

            print(f"Mouse: {mouse_x},{mouse_y}\nScreen: {w}x{h}|{x},{y}\nWindow: {window_w}x{window_h}")
            if self.guake_side == "top":
                new_x = (w - (window_w + ((w - window_w)/2) )) + x
                new_y = y
            if self.guake_side == "bottom":
                new_x = (w - (window_w + ((w - window_w)/2) )) + x
                new_y = (h - window_h) + y
            if self.guake_side == "left":
                new_x = x
                new_y = (h - (window_h + ((h - window_h)/2) )) + y
            if self.guake_side == "right":
                new_x = (w - window_w) + x
                new_y = (h - (window_h + ((h - window_h)/2) )) + y

            self.move(new_x, new_y)



if __name__ == "__main__":
    try:
        setproctitle('<replace this>')
        faulthandler.enable()  # For better debug info
        parser = argparse.ArgumentParser()
        # Add long and short arguments
        parser.add_argument("--folder", "-f", default="HOME", help="Specify a starting folder.")
        parser.add_argument("--placement", "-p", default="top", help="The placement of the terminal (top, bottom, left, right).")
        parser.add_argument("--key", "-k", default="f12", help="The key used to toggle the window.")
        parser.add_argument("--width", "-w", default="800", help="The width of the window.")
        parser.add_argument("--height", "-hh", default="600", help="The height of the window.")

        # Read arguments (If any...)
        args = parser.parse_args()
        main = Main(args)
        Gtk.main()
    except Exception as e:
        print( repr(e) )
