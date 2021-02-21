import QtQuick 2.0
import QtQuick.Controls 2.15

Item {
    id: settings_entry
    height: 100
    width: 1920

    Rectangle {
        id: rec_option
        width: 200
        color: "#0d1218"
        border.color: "#666666"
        border.width: 2
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.topMargin: 0
        anchors.bottomMargin: 0
        anchors.leftMargin: 0

        Switch {
            id: switch1
            x: 45
            y: 30
            width: 70
            height: 60
            anchors.verticalCenter: parent.verticalCenter
            scale: 1.25
            font.pointSize: 10
            display: AbstractButton.TextOnly
            anchors.horizontalCenter: parent.horizontalCenter
        }
    }

    Rectangle {
        id: rec_name
        color: "#0d1218"
        border.color: "#666666"
        border.width: 2
        anchors.left: rec_option.right
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.topMargin: 0
        anchors.bottomMargin: 0
        anchors.leftMargin: 0
        anchors.rightMargin: 1129

        Text {
            id: txt_name
            color: "#ffffff"
            text: qsTr("Test Text")
            anchors.fill: parent
            font.pixelSize: 20
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }
    }

    Rectangle {
        id: rec_info
        color: "#0d1218"
        border.color: "#666666"
        border.width: 2
        anchors.left: rec_name.right
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.topMargin: 0
        anchors.bottomMargin: 0
        anchors.leftMargin: 0
        anchors.rightMargin: 0

        Text {
            id: txt_info
            x: 13
            y: 27
            color: "#ffffff"
            text: qsTr("Test Text")
            anchors.fill: parent
            font.pixelSize: 18
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            anchors.rightMargin: 0
            anchors.bottomMargin: 0
            anchors.leftMargin: 0
            anchors.topMargin: 0
        }
    }


}
