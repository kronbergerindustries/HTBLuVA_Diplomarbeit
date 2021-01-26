import QtQuick 2.0
import QtQuick.Layouts 1.12
import QtQuick.Controls 2.12
import QtQuick.Window 2.12
import QtQuick.Controls.Material 2.12

Item {
    id: view
    anchors.verticalCenter: parent.verticalCenter
    anchors.horizontalCenter: parent.horizontalCenter
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
        id: page_Battery
        x: 0
        y: 0
        visible: false
    }

    Page_Diagnosis {
        id: page_Diagnosis
        x: 0
        y: 0
        visible: false
    }

    Page_Settings {
        id: page_Settings
        x: 0
        y: 0
        visible: false
    }

    states: [
        State {
            name: "dash"

            PropertyChanges {
                target: mainPage
                visible: true
            }

            PropertyChanges {
                target: loginPage
                visible: false
            }

            PropertyChanges {
                target: dashPage
                visible: true
            }
        },
        State {
            name: "battery"
            PropertyChanges {
                target: mainPage
                visible: true
            }

            PropertyChanges {
                target: loginPage
                visible: false
            }

            PropertyChanges {
                target: dashPage
                visible: false
            }

            PropertyChanges {
                target: page_Battery
                visible: true
            }
        },
        State {
            name: "diagnosis"
            PropertyChanges {
                target: mainPage
                visible: true
            }

            PropertyChanges {
                target: loginPage
                visible: false
            }

            PropertyChanges {
                target: dashPage
                visible: false
            }

            PropertyChanges {
                target: page_Battery
                visible: false
            }

            PropertyChanges {
                target: page_Diagnosis
                visible: true
            }
        },
        State {
            name: "settings"
            PropertyChanges {
                target: mainPage
                visible: true
            }

            PropertyChanges {
                target: loginPage
                visible: false
            }

            PropertyChanges {
                target: dashPage
                visible: false
            }

            PropertyChanges {
                target: page_Battery
                visible: false
            }

            PropertyChanges {
                target: page_Settings
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
