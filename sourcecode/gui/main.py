# This Python file uses the following encoding: utf-8

# Import Python Modules
import sys
import mysql.connector
from os.path import abspath, dirname, join

# Import QML Modules
from PySide2.QtCore import QObject, Slot, Signal
from PySide2.QtGui import QGuiApplication
from PySide2.QtQml import QQmlApplicationEngine


# Bridge Class connected to the MainWindow
class Bridge(QObject):
    def __init__(self):
        QObject.__init__(self)

    # Signals To Send Data
    signalUser = Signal(str)
    signalPass = Signal(str)
    signalLogin = Signal(bool)

    # Funktion To Check Login
    @Slot(str, str)
    def loginData(self, password, username):
        # Database credentials
        dbhost = "localhost"
        dbuser = "root"
        dbpass = "8Yf!97mmnZbvYJe"
        dbname = "login_data"

        # Connection to the database
        con = mysql.connector.connect(host=dbhost, user=dbuser,
                                      password=dbpass, database=dbname)

        # Creating cursor for database queries
        cursor = con.cursor()

        # Querying the data from the database
        sql = "select * from users where username = %s and password = %s"
        cursor.execute(sql, [(username), (password)])
        results = cursor.fetchall()

        if results:
            for i in results:
                # Send User
                self.signalUser.emit(username)

                # Send Login Signal
                self.signalLogin.emit(True)

        else:
            self.signalLogin.emit(False)


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
