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
            id: settings
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.topMargin: 100
            anchors.bottomMargin: 160
            anchors.rightMargin: 0
            anchors.leftMargin: 0

            ScrollView {
                id: scrollView
                height: 824
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.topMargin: 0

                ListView {
                    id: listView
                    anchors.fill: parent
                    delegate: Item {
                        x: 5
                        width: 80
                        height: 40
                        Row {
                            id: row1
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
                            spacing: 10
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

        Item {
            id: topColumn
            height: 100
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
                    text: qsTr("OPTION")
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

    Row {
        id: view
        x: 666
        y: 1154
        width: 1920
        height: 160
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0
        anchors.horizontalCenter: parent.horizontalCenter

        Rectangle {
            id: all
            width: 480
            height: 160
            color: "#1a1d22"
            border.color: "#000000"
            border.width: 2

            Image {
                id: icon_settings
                y: 0
                width: 100
                anchors.verticalCenter: parent.verticalCenter
                anchors.left: parent.left
                source: "Pictures/menu_settings_grey.png"
                anchors.leftMargin: 60
                fillMode: Image.PreserveAspectFit

                Text {
                    id: text3
                    color: "#666666"
                    text: qsTr("SHOW ALL")
                    anchors.left: parent.right
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    font.pixelSize: 45
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    anchors.rightMargin: -250
                    anchors.bottomMargin: 0
                    anchors.topMargin: 0
                    anchors.leftMargin: 0
                }
            }
        }

        Rectangle {
            id: generall
            width: 480
            height: 160
            color: "#1a1d22"
            border.color: "#000000"
            border.width: 2

            Image {
                id: icon_cpu
                y: 0
                width: 100
                anchors.verticalCenter: parent.verticalCenter
                anchors.left: parent.left
                source: "Pictures/icon_cpu.png"
                anchors.leftMargin: 60
                fillMode: Image.PreserveAspectFit

                Text {
                    id: text2
                    color: "#666666"
                    text: qsTr("GENERAL")
                    anchors.left: parent.right
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    font.pixelSize: 45
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    anchors.rightMargin: -250
                    anchors.topMargin: 0
                    anchors.bottomMargin: 0
                    anchors.leftMargin: 0
                }
            }
        }

        Rectangle {
            id: motor
            width: 480
            height: 160
            color: "#1a1d22"
            border.color: "#000000"
            border.width: 2

            Image {
                id: icon_engine
                x: -380
                y: 42
                width: 100
                anchors.verticalCenter: parent.verticalCenter
                anchors.left: parent.left
                source: "Pictures/icon_engine.png"
                anchors.leftMargin: 60
                fillMode: Image.PreserveAspectFit

                Text {
                    id: text4
                    color: "#666666"
                    text: qsTr("MOTOR")
                    anchors.left: parent.right
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    font.pixelSize: 45
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    anchors.rightMargin: -250
                    anchors.leftMargin: 0
                    anchors.bottomMargin: 0
                    anchors.topMargin: 0
                }
            }
        }

        Rectangle {
            id: battery
            width: 480
            height: 160
            color: "#1a1d22"
            border.color: "#000000"
            border.width: 2

            Image {
                id: icon_battery
                x: -1340
                y: 30
                width: 100
                anchors.verticalCenter: parent.verticalCenter
                anchors.left: parent.left
                source: "Pictures/menu_battery_grey.png"
                anchors.leftMargin: 60
                fillMode: Image.PreserveAspectFit

                Text {
                    id: text1
                    color: "#666666"
                    text: qsTr("Text")
                    anchors.left: parent.right
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    font.pixelSize: 45
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    anchors.rightMargin: -250
                    anchors.leftMargin: 0
                    anchors.topMargin: 0
                    anchors.bottomMargin: 0
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
