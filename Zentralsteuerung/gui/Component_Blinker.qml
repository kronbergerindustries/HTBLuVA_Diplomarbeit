import QtQuick 2.0

Item {
    id: blinker
    implicitWidth: 212
    implicitHeight: 131
    Image {
        id: blinker_on
        x: 214
        y: 175
        visible: false
        source: "Pictures/icon_blinker_on.png"
        anchors.fill: parent
    }

    Image {
        id: blinker_off
        x: 214
        y: 175
        width: 212
        visible: true
        source: "Pictures/icon_blinker_off.png"
        anchors.fill: parent
    }
    states: [
        State {
            name: "on state"

            PropertyChanges {
                target: blinker_off
                visible: false
            }

            PropertyChanges {
                target: blinker_on
                visible: true
            }
        }
    ]

}
