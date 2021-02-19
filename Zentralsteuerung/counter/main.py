# This Python file uses the following encoding: utf-8
import sys
from os.path import abspath, dirname, join

from PySide2.QtCore import QObject, Slot, Signal
from PySide2.QtGui import QGuiApplication
from PySide2.QtQml import QQmlApplicationEngine


# Bridge Class connected to main.qml
class Bridge(QObject):
    def __init__(self):
        QObject.__init__(self)

    # Signals To Send Data
    counter = Signal(int)

    @Slot(int)
    def increment(self, value):
        value = value + 1
        self.counter.emit(value)
        print(value)

    @Slot(int)
    def decrement(self, value):
        value = value - 1
        self.counter.emit(value)
        print(value)


# Instance Class
if __name__ == "__main__":

    app = QGuiApplication(sys.argv)
    engine = QQmlApplicationEngine()

    # Instance of the Python object
    bridge = Bridge()

    # Expose the Python object to QML
    context = engine.rootContext()
    context.setContextProperty("bridge", bridge)

    # Get the path of the current directory, and then add the name
    # of the QML file, to load it.
    qmlFile = join(dirname(__file__), 'main.qml')
    engine.load(abspath(qmlFile))

    if not engine.rootObjects():
        sys.exit(-1)

    sys.exit(app.exec_())
