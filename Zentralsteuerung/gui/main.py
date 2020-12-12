# This Python file uses the following encoding: utf-8
import sys
import os
from os.path import abspath, dirname, join

from PySide2.QtCore import QObject, Slot
from PySide2.QtGui import QGuiApplication
from PySide2.QtQml import QQmlApplicationEngine


class Bridge(QObject):

    @Slot(str, result = bool)
    def getPassword(self, s):


if __name__ == "__main__":
    app = QGuiApplication(sys.argv)
    engine = QQmlApplicationEngine()
    engine.load(os.path.join(os.path.dirname(__file__), "main.qml"))

    # Instance of the Python object
    bridge = Bridge()

    # Expose the Python object to QML
    context = engine.rootContext()
    context.setContextProperty("bridge", bridge)

    if not engine.rootObjects():
        sys.exit(-1)
    sys.exit(app.exec_())
