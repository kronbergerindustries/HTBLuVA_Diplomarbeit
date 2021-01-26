import QtQuick 2.0

Item {
    id: menuLogout
    implicitHeight: 120
    implicitWidth: 120

    Image {
        id: menu_logout_white
        anchors.verticalCenter: parent.verticalCenter
        height: 100
        width: 100
        source: "Pictures/menu_logout_white.png"
        anchors.horizontalCenter: parent.horizontalCenter
        fillMode: Image.PreserveAspectFit
    }

    Image {
        id: menu_logout_grey
        visible: false
        anchors.verticalCenter: parent.verticalCenter
        height: 100
        width: 100
        source: "Pictures/menu_logout_grey.png"
        anchors.horizontalCenter: parent.horizontalCenter
        fillMode: Image.PreserveAspectFit
    }

    MouseArea {
        id: mouseArea
        anchors.fill: parent
        onClicked: {
            view.state = "base state"
            menuBar.state = "base state"
        }
    }

    states: [
        State {
            name: "used"

            PropertyChanges {
                target: menu_logout_white
                visible: false
            }

            PropertyChanges {
                target: menu_logout_grey
                visible: true
            }
        }
    ]
}
