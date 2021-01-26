import QtQuick 2.0
import QtQuick.Layouts 1.12
import QtQuick.Controls 2.12
import QtQuick.Window 2.12
import QtQuick.Controls.Material 2.12

Item {
    id: view
    height: 1080
    width: 1920
    Page_Login {
        id: loginPage
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter

    }

    Page_Dashboard {
        id: dashPage
        visible: false
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
    }

    Page_Battery {
        id: batteryPage
        x: 0
        y: 0
        visible: false
    }

    Page_Diagnosis {
        id: diagnosisPage
        x: 0
        y: 0
        visible: false
    }

    Page_Settings {
        id: settingsPage
        x: 0
        y: 0
        visible: false
    }

    Component_Menu {
        id: component_Menu
        x: 0
        visible: false
        anchors.top: parent.top
        anchors.horizontalCenterOffset: 0
        anchors.topMargin: -160
        anchors.horizontalCenter: parent.horizontalCenter
    }

    states: [
        State {
            name: "dash"
            PropertyChanges {
                target: loginPage
                visible: false
            }

            PropertyChanges {
                target: dashPage
                visible: true
            }

            PropertyChanges {
                target: component_Menu
                opacity: 1
                visible: true
            }
        },
        State {
            name: "battery"
            PropertyChanges {
                target: loginPage
                visible: false
            }

            PropertyChanges {
                target: dashPage
                visible: false
            }

            PropertyChanges {
                target: batteryPage
                visible: true
            }

            PropertyChanges {
                target: component_Menu
                visible: true
            }
        },
        State {
            name: "diagnosis"
            PropertyChanges {
                target: loginPage
                visible: false
            }

            PropertyChanges {
                target: dashPage
                visible: false
            }

            PropertyChanges {
                target: batteryPage
                visible: false
            }

            PropertyChanges {
                target: diagnosisPage
                visible: true
            }

            PropertyChanges {
                target: component_Menu
                visible: true
            }
        },
        State {
            name: "settings"
            PropertyChanges {
                target: loginPage
                visible: false
            }

            PropertyChanges {
                target: dashPage
                visible: false
            }

            PropertyChanges {
                target: batteryPage
                visible: false
            }

            PropertyChanges {
                target: settingsPage
                visible: true
            }

            PropertyChanges {
                target: component_Menu
                visible: true
            }
        }
    ]
}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.5;height:1080;width:1920}
}
##^##*/
