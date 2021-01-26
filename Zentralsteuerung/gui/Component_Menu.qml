import QtQuick 2.0
import QtQuick.Timeline 1.0

Item {
    id: menuBar
    implicitWidth: 1920
    implicitHeight: 380

    Rectangle {
        id: rectangle
        x: 0
        y: 0
        width: 1920
        height: 160
        color: "#1a1d22"
        border.color: "#00000000"

        Rectangle {
            id: rectangle1
            x: 860
            y: 100
            width: 150
            height: 160
            visible: true
            color: "#1a1d22"
            radius: 60
            border.color: "#00000000"
            anchors.top: rectangle.bottom
            anchors.topMargin: -100
            anchors.horizontalCenter: parent.horizontalCenter

            MouseArea {
                id: mouseArea
                width: 180
                height: 70
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.topMargin: 79
                anchors.rightMargin: 0
                anchors.leftMargin: 0
                anchors.bottomMargin: 0
                onClicked: {
                    if (menuBar.state === "base state") {
                        menuBar.state = "open";
                    }
                    else {
                        menuBar.state = "base state"
                    }
                }
            }

            Image {
                id: icon_menu
                x: 910
                y: 192
                width: 60
                anchors.bottom: parent.bottom
                source: "Pictures/icon_menu.png"
                anchors.bottomMargin: 5
                anchors.horizontalCenterOffset: 0
                anchors.horizontalCenter: parent.horizontalCenter
                rotation: 90
                fillMode: Image.PreserveAspectFit
            }

        }

        Component_Menu_Logout {
            id: component_Menu_Logout
            x: 0
            y: 136
            width: 100
            height: 100
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenterOffset: -340
            anchors.horizontalCenter: component_Menu_Settings.horizontalCenter
        }

        Component_Menu_Settings {
            id: component_Menu_Settings
            x: 0
            y: 40
            width: 100
            height: 100
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenterOffset: -340
            anchors.horizontalCenter: component_Menu_Dashboard.horizontalCenter
        }

        Component_Menu_Dashboard {
            id: component_Menu_Dashboard
            x: 900
            y: 40
            width: 100
            height: 100
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Component_Menu_Battery {
            id: component_Menu_Battery
            width: 100
            height: 100
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenterOffset: 340
            anchors.horizontalCenter: component_Menu_Diagnosis.horizontalCenter
        }

        Component_Menu_Diagnosis {
            id: component_Menu_Diagnosis
            width: 100
            height: 100
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenterOffset: 340
            anchors.horizontalCenter: component_Menu_Dashboard.horizontalCenter
        }


        states: [
            State {
                name: "open"

                PropertyChanges {
                    target: icon_menu
                    rotation: -90
                }

                PropertyChanges {
                    target: rectangle
                    x: 0
                    y: 280
                }
            }
        ]
    }

    Timeline {
        id: timeline
        animations: [
            TimelineAnimation {
                id: timelineAnimation
                loops: 1
                duration: 1000
                running: true
                to: 1000
                from: 0
            }
        ]
        startFrame: 0
        enabled: true
        endFrame: 1000
    }
    states: [
        State {
            name: "open"

            PropertyChanges {
                target: rectangle
                x: 0
                y: 160
            }

            PropertyChanges {
                target: icon_menu
                y: 160
                rotation: -90
            }

            PropertyChanges {
                target: rectangle1
                y: 160
            }

            PropertyChanges {
                target: mouseArea
                y: 160
            }

            PropertyChanges {
                target: component_Menu_Logout
                y: 160
            }

            PropertyChanges {
                target: component_Menu_Settings
                y: 160
            }

            PropertyChanges {
                target: component_Menu_Dashboard
                y: 160
            }

            PropertyChanges {
                target: component_Menu_Battery
                y: 160
            }

            PropertyChanges {
                target: component_Menu_Diagnosis
                y: 160
            }
        }
    ]
}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.66;height:380;width:1920}
}
##^##*/
