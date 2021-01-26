# This Python file uses the following encoding: utf-8
import sys
import mysql.connector as sql
from os.path import abspath, dirname, join


from PySide2.QtCore import QObject, Slot
from PySide2.QtGui import QGuiApplication
from PySide2.QtQml import QQmlApplicationEngine


class Bridge(QObject):

    @Slot(str, result=bool)
    def loginData(self, username, password):
        # Verbindungsaufbau zur Datenbank
        dbhost = "localhost"
        dbuser = "root"
        dbpass = "8Yf!97mmnZbvYJe"
        dbname = "login_data"

        # Verbindung zur Datenbank herstellen
        con = sql.connector.connect(host=dbhost, user=dbuser, password=dbpass, database=dbname)

        # Cursor für Datenbank abfragen erzeugen
        cursor = con.cursor(buffered=True)

        data = ("SELECT password FROM login_data" "WHERE username = %s")

        if data == password:
            return True

        else:
            return False


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
    qmlFile = join(dirname(__file__), 'main_Admin.qml')
    engine.load(abspath(qmlFile))

    if not engine.rootObjects():
        sys.exit(-1)

    sys.exit(app.exec_())
