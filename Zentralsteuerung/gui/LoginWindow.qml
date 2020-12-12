import QtQuick 2.4
import QtQuick.Controls 2.2

Item {
    id:loginWindow
    width: 720
    height: 720
    visible: true

    Rectangle {
        id: rectangle
        x: 0
        y: 0
        width: 720
        height: 720
        visible: true
        color: "#1a1d22"
        border.color: "#ffffff"
        border.width: 1
        Image {
            id: image3
            x: 175
            y: 73
            width: 371
            height: 330
            source: "Pictures/user.png"
            fillMode: Image.PreserveAspectFit
        }

        TextField {
            id: password
            x: 79
            y: 522
            width: 562
            height: 66
            horizontalAlignment: Text.AlignLeft
            font.pointSize: 22
        }

        Button {
            id: button
            x: 278
            y: 629
            width: 164
            height: 54
            text: qsTr("LOGIN")
            autoRepeat: true
            display: AbstractButton.TextBesideIcon
            highlighted: true
        }

        Text {
            id: user
            x: 235
            y: 417
            width: 251
            height: 59
            color: "#ffffff"
            text: qsTr("LOCAL USER")
            font.pixelSize: 40
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }
    }
}
