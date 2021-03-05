#!/usr/bin/python3



from setproctitle import setproctitle
import gi, os, faulthandler, signal, inspect, gi, cairo

gi.require_version('Gtk', '3.0')

from gi.repository import Gtk as gtk
from gi.repository import Gdk as gdk
from gi.repository import GdkPixbuf as gbuf


class SupportMixin:
    def setFile(self):
        dialog = gtk.FileChooserDialog(title="Please choose a file", action=gtk.FileChooserAction.OPEN)
        dialog.add_buttons(gtk.STOCK_CANCEL, gtk.ResponseType.CANCEL, gtk.STOCK_OPEN, gtk.ResponseType.OK)

        response = dialog.run()
        if response == gtk.ResponseType.OK:
            self.file = dialog.get_filename()
            self.setupSurfaceData(self.file)
        elif response == gtk.ResponseType.CANCEL:
            pass

        dialog.destroy()

    def setupSurfaceData(self, file):
        pb = gbuf.Pixbuf.new_from_file(file)
        if pb:
            self.surface = cairo.ImageSurface(cairo.FORMAT_ARGB32, pb.get_width(), pb.get_height())
            context      = cairo.Context(self.surface)

            gdk.cairo_set_source_pixbuf(cr=context, pixbuf=pb, pixbuf_x=0, pixbuf_y=0)
            context.paint()

            self.drawArea.set_size_request(width=pb.get_width(), height=pb.get_height())
            self.drawArea.queue_draw()


class Main_Draw_Area(SupportMixin):
    def __init__(self, _builder):
        self.surface  = None
        self.file     = None
        self.drawArea = _builder.get_object("drawArea1")

    def setMainFile(self, widget):
        self.setFile()

    def onDraw1(self, area, context):
        if self.surface is not None:
            context.set_source_surface(self.surface, 0.0, 0.0)
            context.paint()

        return False


class File_Select_Draw_Area(SupportMixin):
    def __init__(self, _builder):
        self.surface  = None
        self.file     = None
        self.drawArea = _builder.get_object("drawArea2")

    def setPopupFile(self, widget):
        self.setFile()

    def onDraw2(self, area, context):
        if self.surface is not None:
            context.set_source_surface(self.surface, 0.0, 0.0)
            context.paint()
        return False


class Window():
    def __init__(self):
        setproctitle('double_draw_areas')
        SCRIPT_PTH   = os.path.dirname(os.path.realpath(__file__)) + "/"
        GLADE_FILE   = "main.glade"
        self.builder = gtk.Builder()

        self.builder.add_from_file(SCRIPT_PTH + GLADE_FILE)
        handlers = {}
        classes  = [self, Main_Draw_Area(self.builder), File_Select_Draw_Area(self.builder)]
        for c in classes:
            methods = None
            try:
                methods = inspect.getmembers(c, predicate=inspect.ismethod)
                handlers.update(methods)
            except Exception as e:
                pass

        self.builder.connect_signals(handlers)
        self.fileSelectionPopup = self.builder.get_object("fileSelectionPopup")
        window = self.builder.get_object("main_window")
        window.connect("delete_event", gtk.main_quit)
        window.show()

    def openFileSelectionPopup(self, widget):
        self.fileSelectionPopup.popup()


if __name__ == '__main__':
    faulthandler.enable()  # For better debug info
    window = Window()
    gtk.main()
