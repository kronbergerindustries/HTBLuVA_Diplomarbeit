import QtQuick 2.4
import QtQuick.Controls 2.2
import QtQuick.Shapes 1.14

Item {
    id: diagnosisPage
    width: 1920
    height: 1080

    // Function
    //Function To Change The Visibility State of the Page
    function changeVisibility(boolValue) {
        if (boolValue) {
            diagnosisPage.visible = true

        } else {
            diagnosisPage.visible = false

        }
    }

    Rectangle {
        id: background
        x: 0
        y: 0
        width: 1920
        height: 1080
        color: "#0d1218"

        Rectangle {
            id: rectangle
            y: 880
            height: 160
            color: "#1a1d22"
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 0
            anchors.rightMargin: 0
            anchors.leftMargin: 0

            Button {
                id: button
                x: 143
                y: 50
                width: 200
                height: 60
                text: qsTr("Leistung (Zeit)")
                anchors.verticalCenter: parent.verticalCenter
                anchors.right: button1.left
                highlighted: true
                flat: false
                font.pointSize: 12
                anchors.rightMargin: 150
            }

            Button {
                id: button1
                x: 527
                y: 50
                width: 200
                height: 60
                text: qsTr("Strom (Zeit)")
                anchors.verticalCenter: parent.verticalCenter
                anchors.right: button2.left
                font.pointSize: 12
                highlighted: true
                anchors.rightMargin: 150
            }

            Button {
                id: button2
                x: 860
                y: 50
                width: 200
                height: 60
                text: qsTr("Spannung (Zeit)")
                anchors.verticalCenter: parent.verticalCenter
                font.pointSize: 12
                highlighted: true
                anchors.horizontalCenter: parent.horizontalCenter
            }

            Button {
                id: button3
                y: 50
                width: 200
                height: 60
                text: qsTr("Batterielatung (Zeit)")
                anchors.verticalCenter: parent.verticalCenter
                anchors.left: button2.right
                font.pointSize: 12
                highlighted: true
                anchors.leftMargin: 150
            }

            Button {
                id: button4
                y: 50
                width: 200
                height: 60
                text: qsTr("Geschwindikeit (Zeit)")
                anchors.verticalCenter: parent.verticalCenter
                anchors.left: button3.right
                font.pointSize: 12
                highlighted: true
                anchors.leftMargin: 150
            }
        }
    }
}

/*##^#
Designer {
    D{i:0;formeditorZoom:0.66}
}
##^##*/

/*##^##
Designer {
    D{i:0;formeditorZoom:0.75}D{i:4}D{i:5}D{i:6}D{i:7}
}
##^##*/
