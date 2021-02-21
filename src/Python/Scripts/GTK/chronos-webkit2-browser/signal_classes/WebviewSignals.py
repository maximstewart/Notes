# Gtk imports
import gi
gi.require_version('Gtk', '3.0')

from gi.repository import Gtk as gtk

# Python imports

# Application imports
from factory import WebviewFactory


class WebviewSignals:
    def __init__(self, settings):
        self.webviewFactory  = WebviewFactory()
        self.settings        = settings
        builder              = settings.returnBuilder()

        self.home_page       = settings.returnWebHome()
        self.webview_search  = builder.get_object("webview_search")
        self.notebook        = builder.get_object("notebook")
        self.page            = None
        self.index           = 0
        self.labelLen        = settings.returnLabelLen()

        self.addTab()
        self.page            = self.notebook.get_nth_page(0)


    def addTab(self, widget=None, uri=None):
        self.current_webview = self.createWebview()
        self.addToNotebook(self.current_webview, uri)

    def delTab(self, widget):
        state = self.webviewFactory.deleteWebview(self.index)
        if state == 0:
            self.notebook.remove_page(self.index)

    def selecte_view(self, widget, page, index):
        self.current_webview = self.webviewFactory.get_index(index)
        self.webview_search.set_text(self.current_webview.get_uri())
        self.page  = page
        self.index = index

    def createWebview(self):
        webview = self.webviewFactory.createWebview()
        webview.connect("create", self.webviewCreateSignal)
        self.set_webview_settings(webview)
        webview.load_uri(self.home_page)
        webview.connect("load-changed", self.setUrlBar)
        return webview

    def runSearchWebview(self, widget, data=None):
        query = widget.get_text().strip()
        if data.keyval == 65293: # If enter key pressed
            if "http://" in query or "https://" in query or "file://" in query:
                self.current_webview.load_uri(query)
            else:
                query = '+'.join(query.split())
                query = "http://www.google.com/search?q=" + query
                self.current_webview.load_uri(query)

            self.notebook.get_tab_label(self.page).set_text(query)

    def refreshPage(self, widget, data=None):
        self.current_webview.load_uri(self.current_webview.get_uri())

    def loadHome(self, widget):
        self.current_webview.load_uri(self.home_page)

    def setUrlBar(self, widget, data=None):
        uri   = widget.get_uri()
        self.webview_search.set_text(uri)
        label = uri[0: self.labelLen] + "..."
        self.notebook.get_tab_label(self.page).set_text(label)

    def webviewCreateSignal(self, widget, eve):
        uri  = eve.get_request()
        type = eve.get_navigation_type()
        isRedirect = eve.is_redirect()

        if isRedirect == False and type == 5: # Open in new tab
            self.addTab(None, uri.get_uri())


    def addToNotebook(self, view, uri=None):
        webview_box = gtk.Box()
        webview_box.pack_start(view, expand = True, fill = True, padding = 0)
        webview_box.show_all()

        if uri:
            self.notebook.append_page(webview_box, gtk.Label(uri))
            view.load_uri(uri)
        else:
            self.notebook.append_page(webview_box, gtk.Label(view.get_uri()))

    def set_webview_settings(self, view):
        self.settings.setDefaultWebviewSettings(view, view.get_settings())
