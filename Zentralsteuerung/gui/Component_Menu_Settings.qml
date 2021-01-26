import QtQuick 2.0

Item {
    id: menuSettings
    implicitHeight: 120
    implicitWidth: 120

    Image {
        id: menu_settings_white
        anchors.fill: parent
        source: "Pictures/menu_settings_white.png"
        fillMode: Image.PreserveAspectFit
    }

    Image {
        id: menu_settings_grey
        visible: false
        anchors.fill: parent
        source: "Pictures/menu_settings_grey.png"
        fillMode: Image.PreserveAspectFit
    }

    MouseArea {
        id: mouseArea
        anchors.fill: parent
        onClicked: {
            view.state = "settings"
            menuBar.state = "base state"

        }
    }
    states: [
        State {
            name: "used"

            PropertyChanges {
                target: mouseArea
                visible: true
            }

            PropertyChanges {
                target: menu_settings_white
                visible: false
            }

            PropertyChanges {
                target: menu_settings_grey
                visible: true
            }
        }
    ]


}
