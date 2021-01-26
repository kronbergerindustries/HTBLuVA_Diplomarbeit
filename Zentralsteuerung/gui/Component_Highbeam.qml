import QtQuick 2.0

Item {
    id: highbeam
    width: 215
    height: 111
    visible: true
    Image {
        id: highbeam_off
        visible: true
        source: "Pictures/highbeam_off.png"
        anchors.fill: parent
    }

    Image {
        id: highbeam_on
        visible: false
        source: "Pictures/highbeam_on.png"
        anchors.fill: parent
    }
    states: [
        State {
            name: "on"

            PropertyChanges {
                target: highbeam_off
                visible: false
            }

            PropertyChanges {
                target: highbeam_on
                visible: true
            }
        }
    ]

}
