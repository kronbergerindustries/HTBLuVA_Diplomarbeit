import QtQuick 2.0

Item {
    id: light
    width: 196
    height: 115

    Image {
        id: light_on
        visible: false
        source: "Pictures/light_on.png"
        anchors.fill: parent
    }

    Image {
        id: ligh_off
        source: "Pictures/ligh_off.png"
        anchors.fill: parent
    }
    states: [
        State {
            name: "on"

            PropertyChanges {
                target: ligh_off
                visible: false
            }

            PropertyChanges {
                target: light_on
                visible: true
            }
        }
    ]

}
