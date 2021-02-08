import QtQuick 2.0

Item {
    id:menuBattery
    implicitHeight: 120
    implicitWidth: 120

    Image {
        id: menu_battery_white
        anchors.fill: parent
        source: "Pictures/menu_battery_white.png"
        rotation: -90
        fillMode: Image.PreserveAspectFit
    }

    Image {
        id: menu_battery_grey
        visible: false
        anchors.fill: parent
        source: "Pictures/menu_battery_grey.png"
        fillMode: Image.PreserveAspectFit
    }

    MouseArea {
        id: mouseArea
        visible: true
        anchors.fill: parent
        onClicked: {
            component_Menu.pageBattery()
            menuBar.state = "base state"

        }
    }
    states: [
        State {
            name: "used"

            PropertyChanges {
                target: menu_battery_grey
                visible: true
                rotation: -90
            }

            PropertyChanges {
                target: menu_battery_white
                visible: false
            }
        }
    ]



}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
##^##*/
