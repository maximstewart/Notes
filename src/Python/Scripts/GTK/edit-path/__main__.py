#!/usr/bin/python3

# GTK Imports
import gi, faulthandler, signal
gi.require_version('Gtk', '3.0')

from gi.repository import Gtk as gtk
from gi.repository import GLib


# Python Imports
import os, threading, time

from setproctitle import setproctitle


def threaded(fn):
    def wrapper(*args, **kwargs):
        threading.Thread(target=fn, args=args, kwargs=kwargs).start()

    return wrapper



class Main:
    def __init__(self):
        setproctitle('PATH Edit Tool')
        GLib.unix_signal_add(GLib.PRIORITY_DEFAULT, signal.SIGINT, gtk.main_quit)
        faulthandler.enable()  # For better debug info

        self.HOME          = os.path.expanduser('~')
        PREFERED_BASH_PATH = self.HOME + "/" + ".bash_paths"
        SCRIPT_PTH         = os.path.dirname(os.path.realpath(__file__)) + "/"
        GLADE_FILE         = "main.glade"

        self.builder = gtk.Builder()
        self.builder.add_from_file(SCRIPT_PTH + GLADE_FILE)
        self.builder.connect_signals(self)

        self.pathTreeView  = self.builder.get_object("pathTreeView")
        self.messageWidget = self.builder.get_object("messageWidget")
        self.messageLabel  = self.builder.get_object("messageLabel")

        self.pathListStore = gtk.ListStore(str)
        self.success       = "#88cc27"
        self.warning       = "#ffa800"
        self.error         = "#ff0000"
        self.selected      = None
        self.bashrcPath    = ""

        if os.path.isfile(PREFERED_BASH_PATH):
            self.bashrcPath = PREFERED_BASH_PATH
        else:
            self.bashrcPath = self.HOME + "/" + ".bashrc"

        self.setupTreeview()
        self.loadPaths()

        window = self.builder.get_object("Main_Window")
        window.connect("delete-event", gtk.main_quit)
        window.show()



    def addEntry(self, widget):
        toAddPathTxt = self.builder.get_object("toAddPathEntry").get_text().strip()

        if os.path.isdir(toAddPathTxt):
            self.pathListStore.append([toAddPathTxt])
        else:
            self.displayMessage(self.warning, "Not a directory!")

    def deleteEntry(self, widget):
        self.pathListStore.remove(self.selected)

    def saveToBashrc(self, widget):
        try:
            paths = list()
            iter  = self.pathListStore.get_iter_first()
            while iter != None:
                pth = self.pathListStore.get_value(iter, 0)
                pth = pth.replace(self.HOME, "$HOME")
                paths.append(pth)
                # paths.append(self.pathListStore.get_value(iter, 0))
                iter = self.pathListStore.iter_next(iter)


            toExport = "export PATH=\"" + ':'.join(paths) + "\"\n\n"
            file     = open(self.bashrcPath, mode='r')
            for line in file:
                if "export PATH=" in line:
                    continue
                else:
                    toExport += line

            file.close()
            file = open(self.bashrcPath, mode='w')
            file.write(toExport)
            file.close()
            self.displayMessage(self.success, "Successfully saved file!")
        except Exception as e:
            self.displayMessage(self.error, "Opening/Writing to file failed!")
            print("Opening/Writing to file failed with the following:\n\n")
            print(e)


    def setSelected(self, user_data):
        selected = user_data.get_selected()[1]
        if selected:
            self.selected = selected

    def loadPaths(self):
        pathsStr = os.getenv("PATH")

        # If path exists in bashrc replace default selection...
        file = open(self.bashrcPath, mode='r')
        for line in file:
            if "export PATH=" in line:
                part     = line.replace("export PATH=", "")
                cleaned  = part.replace("\"", "")
                pathsStr = cleaned.strip()

        # Split string into list/tuple and add parts to store
        paths = pathsStr.split(":")
        for path in paths:
            self.pathListStore.append([path])


    def setupTreeview(self):
        renderer   = gtk.CellRendererText()
        pathColumn = gtk.TreeViewColumn(title="Paths", cell_renderer=renderer, text=0)
        self.pathTreeView.append_column(pathColumn)
        self.pathTreeView.set_model(self.pathListStore)


    def displayMessage(self, type, text):
        markup = "<span foreground='" + type + "'>" + text + "</span>"
        self.messageLabel.set_markup(markup)
        self.messageWidget.popup()
        self.hideMessageTimed()

    @threaded
    def hideMessageTimed(self):
        time.sleep(3)
        GLib.idle_add(self.messageWidget.popdown)



if __name__ == '__main__':
    main = Main()
    gtk.main()
