import QtQuick 2.13
import QtQuick.Window 2.13
import QtQuick.Controls 2.15

Window {
    id: mainWindow
    width: 280
    height: 480
    visible: true
    title: qsTr("Counter")

    property int textValue: 0
    property var counter: 0

    Connections {
        target: bridge

        function onCounter(intValue) {
            mainWindow.textValue = intValue;
        }
    }

    Rectangle {
        id: background
        x: 0
        y: 0
        width: 280
        height: 480
        color: "#0d1218"
        border.color: "#00000000"

        Button {
            id: incrementing
            x: 93
            y: 300
            width: 146
            height: 40
            text: qsTr("INCREMENTING")
            anchors.bottom: decrementing.top
            anchors.bottomMargin: 50
            font.wordSpacing: -0.1
            font.kerning: true
            checkable: false
            hoverEnabled: true
            enabled: true
            highlighted: true
            flat: false
            anchors.horizontalCenterOffset: 0
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: {
                bridge.increment(mainWindow.textValue)
            }
        }

        Button {
            id: decrementing
            x: 93
            y: 390
            width: 146
            height: 40
            text: qsTr("DECREMENTING")
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 50
            font.wordSpacing: -0.2
            font.kerning: true
            highlighted: true
            flat: false
            autoRepeat: false
            anchors.horizontalCenterOffset: 0
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: {
                bridge.decrement(mainWindow.textValue)
            }
        }

        Rectangle {
            id: text_background
            x: 0
            width: 280
            color: "#2d2d2f"
            anchors.top: parent.top
            anchors.bottom: incrementing.top
            anchors.bottomMargin: 80
            anchors.topMargin: 80

            Text {
                id: textBox
                color: "#ffffff"
                text: mainWindow.textValue
                anchors.fill: parent
                font.pixelSize: 32
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }
        }
    }
}
