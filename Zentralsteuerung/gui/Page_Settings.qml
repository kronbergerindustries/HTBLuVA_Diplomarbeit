import QtQuick 2.4
import QtQuick.Controls 2.2
import QtQuick.Shapes 1.14

Item {
    id: page
    width: 1920
    height: 1080

    Rectangle {
        id: background
        x: 0
        y: 0
        width: 1920
        height: 1080
        color: "#0d1218"

        Rectangle {
            id: rectangle
            y: 24
            height: 160
            color: "#1a1d22"
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 0
            anchors.rightMargin: 0
            anchors.leftMargin: 0
        }

        ScrollView {
            id: scrollView
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: rectangle.top
            anchors.leftMargin: 0
            anchors.bottomMargin: 0
            anchors.topMargin: 0
            anchors.rightMargin: 0

            ListView {
                id: listView
                anchors.fill: parent
                delegate: Item {
                    x: 5
                    width: 80
                    height: 40
                    Row {
                        id: row1
                        spacing: 10
                        Rectangle {
                            width: 40
                            height: 40
                            color: colorCode
                        }

                        Text {
                            text: name
                            anchors.verticalCenter: parent.verticalCenter
                            font.bold: true
                        }
                    }
                }
                model: ListModel {
                    ListElement {
                        name: "Grey"
                        colorCode: "grey"
                    }

                    ListElement {
                        name: "Red"
                        colorCode: "red"
                    }

                    ListElement {
                        name: "Blue"
                        colorCode: "blue"
                    }

                    ListElement {
                        name: "Green"
                        colorCode: "green"
                    }
                }
            }
        }
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.5}
}
##^##*/
