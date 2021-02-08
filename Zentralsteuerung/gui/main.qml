import QtQuick 2.4
import QtQuick.Window 2.2
import QtQuick.Controls 2.2

ApplicationWindow {
    id: window
    width: 1920
    height: 1080
    visible: true
    title: qsTr("Login Page")

    Connections {
        target: bridge


        // Function To Open The Window
        function onSignalLogin(boolValue) {
            if(boolValue) {
                page_Dashboard.changeVisibility(true)
                page_Login.changeVisibility(false)
                page_Login.wrongPass(false)
                component_Menu.changeVisibility(true)

            } else {
                page_Login.wrongPass(true)

            }
        }
    }


    Page_Login {
        id: page_Login
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter


    }

    Page_Battery {
        id: page_Battery
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        visible: false
    }

    Page_Dashboard {
        id: page_Dashboard
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        visible: false
    }

    Page_Diagnosis {
        id: page_Diagnosis
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        visible: false
    }

    Page_Settings {
        id: page_Settings
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        visible: false
    }

    Component_Menu {
        id: component_Menu
        x: 0
        anchors.top: parent.top
        anchors.topMargin: -160
        anchors.horizontalCenter: parent.horizontalCenter
    }


}


/*##^##
Designer {
    D{i:0;formeditorZoom:0.5;height:1080;width:1920}
}
##^##*/
