# This Python file uses the following encoding: utf-8
import sys
import mysql.connector
from os.path import abspath, dirname, join


from PySide2.QtCore import QObject, Slot
from PySide2.QtGui import QGuiApplication
from PySide2.QtQml import QQmlApplicationEngine


class Bridge(QObject):

    @Slot(str, str, result=bool)
    def loginData(self, password, username):
        # Verbindungsaufbau zur Datenbank
        dbhost = "localhost"
        dbuser = "root"
        dbpass = "8Yf!97mmnZbvYJe"
        dbname = "login_data"

        # Verbindung zur Datenbank herstellen
        con = mysql.connector.connect(host=dbhost, user=dbuser,
                                      password=dbpass, database=dbname)

        # Cursor für Datenbank abfragen erzeugen
        cursor = con.cursor()

        # Abfragen der Login Daten aus der Datenbank
        sql = "select * from users where username = %s and password = %s"
        cursor.execute(sql, [(username), (password)])
        results = cursor.fetchall()

        if results:
            for i in results:
                return True
                break
        else:
            return False

    @Slot(result=float)
    def fetchDash(self):
        count = 0
        while True:
            count = count + 1
            return count
            time.sleep(0.25)

            if count > 120:
                count = 0

    @Slot(result=float)
    def fetchTempEng(self):
        pass

    @Slot(result=float)
    def fetchTempOut(self):
        pass

    @Slot(result=float)
    def fetchTempBat(self):
        pass

    @Slot(result=float)
    def fetchTempCon(self):
        pass

    @Slot(result=str)
    def fetchDate(self):
        pass

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
