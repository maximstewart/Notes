#!/usr/bin/python3


# Python imports
import os, argparse
from setproctitle import setproctitle

# Lib imports
import faulthandler, signal, gi, cairo
gi.require_version('Gtk', '3.0')
from gi.repository import Gtk
from gi.repository import GLib
from gi.repository import Gdk

# Application imports



app_name = "DarkOverlay"




def threaded(fn):
    def wrapper(*args, **kwargs):
        threading.Thread(target=fn, args=args, kwargs=kwargs).start()
    return wrapper


class MouseButton:
    LEFT_BUTTON   = 1
    MIDDLE_BUTTON = 2
    RIGHT_BUTTON  = 3

class StateController:
    isDragging   = False
    isCtrlDown   = False


class Main(Gtk.Window):
    def __init__(self, args):
        super(Main, self).__init__()

        self._USER_HOME   = os.path.expanduser('~')
        self._CONFIG_PATH = f"{self._USER_HOME}/.config/{app_name.lower()}"
        self._CSS_FILE    = f"{self._CONFIG_PATH}/stylesheet.css"
        self._USR_PATH    = f"/usr/share/{app_name.lower()}"

        if not os.path.exists(self._CONFIG_PATH):
            os.mkdir(self._CONFIG_PATH)
        if not os.path.exists(self._CSS_FILE):
            self._CSS_FILE     = f"{self._USR_PATH}/stylesheet.css"


        box               = Gtk.Box()
        separator         = Gtk.Separator()
        event_box         = Gtk.EventBox()
        self.draw_area    = Gtk.DrawingArea()

        self.rclick_menu  = Gtk.Popover.new(separator)
        box2              = Gtk.Box()
        box3              = Gtk.Box()
        self.brush_color_prop = Gtk.ColorButton()
        label             = Gtk.Label(label="Opacity")
        spin_button       = Gtk.SpinButton()
        adjustment        = spin_button.get_adjustment()
        quit_button       = Gtk.Button.new_from_icon_name("gtk-quit", 16)

        box.set_orientation(1)
        box2.set_orientation(1)
        self.brush_color_prop.set_color(Gdk.Color(0,0,0))
        quit_button.set_label("Quit")
        spin_button.set_numeric(True)
        spin_button.set_digits(2)
        spin_button.set_increments(0.01, 10.00)
        spin_button.set_range(0.00, 1.00)
        spin_button.set_value(0.75)
        self.draw_area.set_vexpand(True)
        event_box.set_vexpand(True)
        event_box.set_can_focus(True)
        event_box.set_above_child(True)
        event_box.set_visible_window(False)
        box.set_vexpand(True)
        self.set_keep_above(True)
        box2.set_homogeneous(True)
        box3.set_homogeneous(True)
        box3.set_margin_top(10)
        box3.set_margin_bottom(10)
        self.rclick_menu.set_size_request(320, 220)
        self.set_size_request(320, 220)
        self.set_default_size(600, 480)
        self.set_decorated(False)

        self.opacityVal       = 0.75
        self.states           = StateController()
        self.area             = None
        self.states.isCtrlDown  = False
        self.states.isMouseHeld = False
        self.doDrawBackground = True
        self.surface          = None
        self.brush            = None
        self.aw               = None  # Draw area width
        self.ah               = None  # Draw area height
        rgba                  = self.brush_color_prop.get_rgba()
        self.brushColorVal    = [rgba.red, rgba.green, rgba.blue, self.opacityVal]
        self.startCoords      = [0.0, 0.0]
        self.w1               = 0.0
        self.h1               = 0.0

        event_box.set_events(Gdk.EventMask.BUTTON_PRESS_MASK)
        event_box.set_events(Gdk.EventMask.BUTTON_RELEASE_MASK)
        event_box.set_events(Gdk.EventMask.KEY_PRESS_MASK)
        event_box.set_events(Gdk.EventMask.KEY_RELEASE_MASK)
        event_box.set_events(Gdk.EventMask.STRUCTURE_MASK)


        self.brush_color_prop.connect("color-set", self.onColorSet)
        self.draw_area.connect("configure-event", self.onConfigure)
        self.draw_area.connect("draw", self.onDraw)
        adjustment.connect("value-changed", self.onOpacityChange)
        quit_button.connect("clicked", Gtk.main_quit)
        event_box.connect("button-press-event", self.getStartCoords)
        event_box.connect("button-release-event", self.popupMenu)
        event_box.connect("key-press-event", self.keyActionToggle)
        event_box.connect("key-release-event", self.endKeyActionToggle)
        event_box.connect("motion-notify-event", self.onMotion)
        self.connect("delete-event", Gtk.main_quit)

        event_box.add(self.draw_area)
        box.add(separator)
        box.add(event_box)
        box3.add(label)
        box3.add(spin_button)
        box2.add(self.brush_color_prop)
        box2.add(box3)
        box2.add(quit_button)
        self.rclick_menu.add(box2)
        self.add(box)

        event_box.show_all()
        box3.show_all()
        box2.show_all()
        box.show_all()

        self.setWindowData()
        self.show_all()
        # self.set_interactive_debugging(True)


    def setWindowData(self):
        screen = self.get_screen()
        visual = screen.get_rgba_visual()

        if visual != None and screen.is_composited():
            self.set_visual(visual)

        # bind css file
        cssProvider  = Gtk.CssProvider()
        cssProvider.load_from_path(self._CSS_FILE)
        screen       = Gdk.Screen.get_default()
        styleContext = Gtk.StyleContext()
        styleContext.add_provider_for_screen(screen, cssProvider, Gtk.STYLE_PROVIDER_PRIORITY_USER)

        self.get_style_context().add_class("regionWindow")



    def onConfigure(self, area, eve, data = None):
        self.area    = area
        aw           = area.get_allocated_width()
        ah           = area.get_allocated_height()
        self.aw      = aw
        self.ah      = ah
        self.surface = cairo.ImageSurface(cairo.FORMAT_ARGB32, aw, ah)
        self.brush   = cairo.Context(self.surface)

        self.drawBackground(self.brush, aw, ah)
        return False


    def onDraw(self, area, brush):
        if self.surface is not None:
            brush.set_source_surface(self.surface, 0.0, 0.0)
            brush.paint()
        else:
            print("No surface info...")

        return False


    # Draw background white
    def drawBackground(self, brush, aw, ah):
        rgba = self.brushColorVal
        brush.rectangle(0, 0, aw, ah) # x, y, width, height
        brush.set_source_rgba(rgba[0], rgba[1], rgba[2], rgba[3]) # x, y, width, height

        if not self.doDrawBackground: # If transparent or white
            self.brush.set_operator(0);

        brush.fill()
        self.brush.set_operator(1);   # reset the brush after filling bg...


    def onColorSet(self, widget):
        rgba = widget.get_rgba()
        self.brushColorVal = [rgba.red, rgba.green, rgba.blue, self.opacityVal]
        self.draw_area.queue_draw()
        self.draw_area.emit("configure_event", Gdk.Event())


    def onOpacityChange(self, widget):
        self.opacityVal       = widget.get_value()
        self.brushColorVal[3] = self.opacityVal
        self.draw_area.queue_draw()
        self.draw_area.emit("configure_event", Gdk.Event())


    def popupMenu(self, widget, eve):
        self.states.isMouseHeld = False
        if eve.type == Gdk.EventType.BUTTON_RELEASE and eve.button == MouseButton.RIGHT_BUTTON:
            self.rclick_menu.popup()


    def getStartCoords(self, widget, eve):
        if eve.type == Gdk.EventType.BUTTON_PRESS and eve.button == MouseButton.LEFT_BUTTON:
            self.startCoords = [eve.x, eve.y]            # Used for delta calculations
            self.w1          = self.get_size()[0] # Ref window width
            self.h1          = self.get_size()[1] # Ref window height
            self.states.isMouseHeld  = True              # State check for when updating width 'n height


    def keyActionToggle(self, widget, eve):
        key_id = Gdk.keyval_name(eve.keyval).upper()
        if key_id in ["CONTROL_R", "CONTROL_L"]:
            self.states.isCtrlDown = True

    def endKeyActionToggle(self, widget, eve):
        key_id = Gdk.keyval_name(eve.keyval).upper()
        if key_id in ["CONTROL_R", "CONTROL_L"]:
            self.states.isCtrlDown = False


    def onMotion(self, widget, eve):
        if self.states.isMouseHeld:
            if self.states.isCtrlDown is False:
                px1 = self.get_position()[0] # Ref window x
                py1 = self.get_position()[1] # Ref window y

                # Getting deltas of movement inner to draw event box
                x1  = self.startCoords[0]
                y1  = self.startCoords[1]
                x2 = eve.x
                y2 = eve.y
                px  = 0
                py  = 0

                # Calculate that to actual posion change
                if x2 > x1: # Is growing
                    px = px1 + (x2 - x1)
                else:       # Is shrinking
                    px = px1 - (x1 - x2)

                if y2 > y1: # Is growing
                    py = py1 + (y2 - y1)
                else:       # Is shrinking
                    py = py1 - (y1 - y2)

                self.move(px, py)

            if self.states.isCtrlDown:
                x1 = self.startCoords[0]
                y1 = self.startCoords[1]
                x2 = eve.x
                y2 = eve.y
                w  = 0
                h  = 0

                if x2 > x1: # Is growing
                    w = self.w1 + (x2 - x1)
                else:       # Is shrinking
                    w = self.w1 - (x1 - x2)

                if y2 > y1: # Is growing
                    h = self.h1 + (y2 - y1)
                else:       # Is shrinking
                    h = self.h1 - (y1 - y2)

                self.resize(w, h)


if __name__ == "__main__":
    try:
        setproctitle(f"{app_name}")
        GLib.unix_signal_add(GLib.PRIORITY_DEFAULT, signal.SIGINT, Gtk.main_quit)
        faulthandler.enable()  # For better debug info
        parser = argparse.ArgumentParser()
        # Add long and short arguments
        parser.add_argument("--file", "-f", default="firefox", help="JUST SOME FILE ARG.")

        # Read arguments (If any...)
        args = parser.parse_args()
        main = Main(args)
        Gtk.main()
    except Exception as e:
        print( repr(e) )
