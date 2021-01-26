import QtQuick 2.0
import QtQuick.Layouts 1.12
import QtQuick.Controls 2.12
import QtQuick.Window 2.12
import QtQuick.Controls.Material 2.12

ApplicationWindow {
    id: app
    width: 1920
    height: 1080
    visible: true

    View_States {
        id: view
        x: 0
        y: 0
        anchors.verticalCenter: parent.verticalCenter
        anchors.bottom: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter
    }

}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.5;height:1080;width:1920}D{i:1}
}
##^##*/
