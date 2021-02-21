# Python imports
import threading, subprocess, os, cairo


# Gtk imports
import gi
gi.require_version('Gtk', '3.0')
from gi.repository import Gtk as gtk
from gi.repository import Gdk as gdk


# Application imports


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


class CrossClassSignals:
    def __init__(self, settings):
        self.settings         = settings
        self.builder          = self.settings.returnBuilder()

        self.window           = self.builder.get_object("Main_Window")
        self.drawArea         = self.builder.get_object("drawArea")
        self.brushColorProp   = self.builder.get_object("brushColorProp")
        self.wh               = self.builder.get_object("wh")
        self.xy               = self.builder.get_object("xy")

        self.opacityVal       = 0.75
        self.states           = StateController()
        self.area             = None
        self.states.isCtrlDown       = False
        self.states.isMouseHeld       = False
        self.doDrawBackground = True
        self.surface          = None
        self.brush            = None
        self.aw               = None  # Draw area width
        self.ah               = None  # Draw area height
        rgba                  = self.brushColorProp.get_rgba()
        self.brushColorVal    = [rgba.red, rgba.green, rgba.blue, self.opacityVal]
        self.startCoords      = [0.0, 0.0]
        self.w1               = 0.0
        self.h1               = 0.0

        self.window.set_keep_above(True)




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
        self.drawArea.queue_draw()
        self.drawArea.emit("configure_event", gdk.Event())


    def onOpacityChange(self, widget):
        self.opacityVal       = widget.get_value()
        self.brushColorVal[3] = self.opacityVal
        self.drawArea.queue_draw()
        self.drawArea.emit("configure_event", gdk.Event())


    def popupMenu(self, widget, eve):
        self.states.isMouseHeld = False
        if eve.type == gdk.EventType.BUTTON_RELEASE and eve.button == MouseButton.RIGHT_BUTTON:
            self.builder.get_object("rClickMenu").popup()


    def getStartCoords(self, widget, eve):
        if eve.type == gdk.EventType.BUTTON_PRESS and eve.button == MouseButton.LEFT_BUTTON:
            self.startCoords = [eve.x, eve.y]            # Used for delta calculations
            self.w1          = self.window.get_size()[0] # Ref window width
            self.h1          = self.window.get_size()[1] # Ref window height
            self.states.isMouseHeld  = True              # State check for when updating width 'n height


    def keyActionToggle(self, widget, eve):
        key_id = gdk.keyval_name(eve.keyval).upper()
        if key_id in ["CONTROL_R", "CONTROL_L"]:
            self.states.isCtrlDown = True

    def endKeyActionToggle(self, widget, eve):
        key_id = gdk.keyval_name(eve.keyval).upper()
        if key_id in ["CONTROL_R", "CONTROL_L"]:
            self.states.isCtrlDown = False


    def onMotion(self, widget, eve):
        if self.states.isMouseHeld:
            if self.states.isCtrlDown is False:
                px1 = self.window.get_position()[0] # Ref window x
                py1 = self.window.get_position()[1] # Ref window y

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

                self.window.move(px, py)

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

                self.window.resize(w, h)


    def close_app(self, widget):
        gtk.main_quit()
