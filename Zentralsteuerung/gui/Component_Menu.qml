import QtQuick 2.0
import QtQuick.Timeline 1.0

Item {
    id: menuBar
    implicitWidth: 1920
    implicitHeight: 380
    visible: false

    function changeVisibility(boolValue) {
        if (boolValue) {
            menuBar.visible = true

        } else {
            menuBar.visible = false

        }
    }

    function pageBattery(boolValue) {
        page_Battery.changeVisibility(true)

        page_Dashboard.changeVisibility(false)
        page_Diagnosis.changeVisibility(false)
        page_Settings.changeVisibility(false)
        page_Login.changeVisibility(false)
    }

    function pageDash(boolValue) {
        page_Dashboard.changeVisibility(true)

        page_Battery.changeVisibility(false)
        page_Diagnosis.changeVisibility(false)
        page_Settings.changeVisibility(false)
        page_Login.changeVisibility(false)
    }

    function pageDiagnosis(boolValue) {
        page_Diagnosis.changeVisibility(true)

        page_Dashboard.changeVisibility(false)
        page_Battery.changeVisibility(false)
        page_Settings.changeVisibility(false)
        page_Login.changeVisibility(false)
    }

    function pageSettings(boolValue) {
        page_Settings.changeVisibility(true)

        page_Dashboard.changeVisibility(false)
        page_Battery.changeVisibility(false)
        page_Diagnosis.changeVisibility(false)
        page_Login.changeVisibility(false)
    }

    function pageLogin(boolValue) {
        page_Login.changeVisibility(true)

        page_Dashboard.changeVisibility(false)
        page_Battery.changeVisibility(false)
        page_Diagnosis.changeVisibility(false)
        page_Settings.changeVisibility(false)
    }

    Rectangle {
        id: buttonRectangle
        x: 885
        y: 60
        width: 150
        height: 160
        visible: true
        color: "#1a1d22"
        radius: 60
        border.color: "#000000"
        border.width: 1
        anchors.top: mainRectangle.bottom
        anchors.horizontalCenterOffset: 0
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
                    menuBar.state = "open"

                } else {
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

    Rectangle {
        id: mainRectangle
        x: 0
        y: 0
        width: 1920
        height: 160
        color: "#1a1d22"
        border.color: "#00000000"


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
    }

    states: [
        State {
            name: "open"

            PropertyChanges {
                target: mainRectangle
                x: 0
                y: 160
            }

            PropertyChanges {
                target: icon_menu
                rotation: -90
            }
        }
    ]
}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.66}
}
##^##*/
