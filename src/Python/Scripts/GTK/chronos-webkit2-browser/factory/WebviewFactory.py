# Gtk imports
import gi
gi.require_version('WebKit2', '4.0')

from gi.repository import WebKit2 as webkit


# Python imports

# Application imports


class WebviewFactory:
    def __init__(self):
        self.index           = -1
        self.view_collection = []

    def createWebview(self):
        view = webkit.WebView()
        self.view_collection.append(view)
        self.index += 1
        return view

    def deleteWebview(self, index):
        if (len(self.view_collection) - 1) > 0:
            self.view_collection.pop(index)
            self.index -= 1
            return 0
        else:
            return 1

    def get_index(self, index):
        val = index
        if val >= 0 and val < len(self.view_collection):
            self.index = index
        return self.view_collection[self.index]

    def returnNotebookSize(self,):
        return len(self.view_collection)
