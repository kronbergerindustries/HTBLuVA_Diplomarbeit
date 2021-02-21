import QtQuick 2.0

Item {
    id:menuDashboard
    implicitHeight: 120
    implicitWidth: 120

    Image {
        id: menu_dash_white
        anchors.fill: parent
        source: "Pictures/menu_dash_white.png"
        fillMode: Image.PreserveAspectFit
    }

    Image {
        id: menu_dash_grey
        visible: false
        anchors.fill: parent
        source: "Pictures/menu_dash_grey.png"
        fillMode: Image.PreserveAspectFit
    }

    MouseArea {
        id: mouseArea
        visible: true
        anchors.fill: parent
        onClicked: {
            component_Menu.pageDash()
            menuBar.state = "base state"

        }
    }
    states: [
        State {
            name: "used"

            PropertyChanges {
                target: menu_dash_grey
                visible: true
            }

            PropertyChanges {
                target: menu_dash_white
                visible: false
            }
        }
    ]



}

/*##^##
Designer {
    D{i:0;autoSize:true;height:120;width:120}D{i:1}D{i:2}D{i:3}
}
##^##*/
