# Gtk imports
import gi, cairo
gi.require_version('Gtk', '3.0')
gi.require_version('Gdk', '3.0')

from gi.repository import Gtk as gtk
from gi.repository import Gdk as gdk

# Python imports
import os

# Application imports


class Settings:
    def __init__(self):
        self.SCRIPT_PTH = os.path.dirname(os.path.realpath(__file__)) + "/"
        self.builder = gtk.Builder()
        self.builder.add_from_file(self.SCRIPT_PTH + "../resources/Main_Window.glade")

        # 'Filters'
        self.images = ('.png', '.jpg', '.jpeg', '.gif')
        HOME_PATH   = os.path.expanduser('~')
        self.SCREENSHOTS_DIR = HOME_PATH + "/" + ".screenshots"

        if not os.path.isdir(self.SCREENSHOTS_DIR):
            os.mkdir(self.SCREENSHOTS_DIR)


    def createWindow(self):
        # Get window and connect signals
        window = self.builder.get_object("Main_Window")
        window.connect("delete-event", gtk.main_quit)
        self.setWindowData(window)
        return window

    def setWindowData(self, window):
        screen = window.get_screen()
        visual = screen.get_rgba_visual()

        if visual != None and screen.is_composited():
            window.set_visual(visual)

        # bind css file
        cssProvider  = gtk.CssProvider()
        cssProvider.load_from_path(self.SCRIPT_PTH + '../resources/stylesheet.css')
        screen       = gdk.Screen.get_default()
        styleContext = gtk.StyleContext()
        styleContext.add_provider_for_screen(screen, cssProvider, gtk.STYLE_PROVIDER_PRIORITY_USER)

    def getMonitorData(self):
        screen      = self.builder.get_object("Main_Window").get_screen()
        wdth        = screen.get_width()
        hght        = screen.get_height()
        mon0        = gdk.Rectangle()
        mon0.width  = wdth
        mon0.height = hght
        monitors    = []

        monitors.append(mon0)
        for m in range(screen.get_n_monitors()):
            monitors.append(screen.get_monitor_geometry(m))

        return monitors


    def returnBuilder(self):             return self.builder
    def returnScreenshotsDir(self):      return self.SCREENSHOTS_DIR

    # Filter returns
    def returnImagesFilter(self):        return self.images
