import QtQuick 2.0

Item {
    id:menuDiagnosis
    implicitHeight: 120
    implicitWidth: 120

    Image {
        id: menu_diagnosis_white
        anchors.fill: parent
        source: "Pictures/menu_diagnosis_white.png"

    }

    Image {
        id: menu_diagnosis_grey
        visible: false
        anchors.fill: parent
        source: "Pictures/menu_diagnosis_grey.png"
        fillMode: Image.PreserveAspectFit
    }

    MouseArea {
        id: mouseArea
        visible: true
        anchors.fill: parent
        onClicked: {
            component_Menu.pageDiagnosis()
            menuBar.state = "base state"

        }
    }

    states: [
        State {
            name: "used"

            PropertyChanges {
                target: menu_diagnosis_white
                visible: false
            }

            PropertyChanges {
                target: menu_diagnosis_grey
                visible: true
            }
        }
    ]

}
