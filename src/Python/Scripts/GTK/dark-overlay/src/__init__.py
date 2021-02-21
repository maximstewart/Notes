# Python imports
import inspect


# Gtk imports


# Application imports
from utils import Settings
from signal_classes import CrossClassSignals


class Main:
    def __init__(self, args):
        settings = Settings()
        builder  = settings.returnBuilder()

        # Gets the methods from the classes and sets to handler.
        # Then, builder connects to any signals it needs.
        classes  = [CrossClassSignals(settings)]

        handlers = {}
        for c in classes:
            methods = inspect.getmembers(c, predicate=inspect.ismethod)
            handlers.update(methods)

        builder.connect_signals(handlers)
        window = settings.createWindow()
        window.show()
