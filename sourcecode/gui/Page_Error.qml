import QtQuick 2.4
import QtQuick.Controls 2.2
import QtQuick.Shapes 1.12

Item {
    id: settingsPage
    width: 1920
    height: 1080

    // Function
    // Function To Change The Visibility State of the Page
    function changeVisibility(boolValue) {
        if (boolValue) {
            settingsPage.visible = true

        } else {
            settingsPage.visible = false

        }
    }

    Rectangle {
        id: background
        x: 0
        y: 0
        width: 1920
        height: 1080
        color: "#0d1218"

        Item {
            id: topColumn
            x: 0
            y: 920
            height: 160
            width: 1920

            Rectangle {
                id: rec_option
                width: 200
                color: "#1a1d22"
                border.color: "#000000"
                border.width: 2
                anchors.left: parent.left
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.topMargin: 0
                anchors.bottomMargin: 0
                anchors.leftMargin: 0

                Text {
                    id: txt_name1
                    x: 200
                    y: 0
                    color: "#ffffff"
                    text: qsTr("ERROR")
                    anchors.fill: parent
                    font.pixelSize: 30
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                }
            }

            Rectangle {
                id: rec_name
                color: "#1a1d22"
                border.color: "#000000"
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
                    text: qsTr("NAME")
                    anchors.fill: parent
                    font.pixelSize: 30
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                }
            }

            Rectangle {
                id: rec_info
                color: "#1a1d22"
                border.color: "#000000"
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
                    text: qsTr("DESCRIPTION")
                    anchors.fill: parent
                    font.pixelSize: 30
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    anchors.rightMargin: 0
                    anchors.bottomMargin: 0
                    anchors.leftMargin: 0
                    anchors.topMargin: 0
                }
            }


        }
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.5}D{i:4}D{i:7}D{i:15}D{i:18}D{i:21}D{i:24}
}
##^##*/
