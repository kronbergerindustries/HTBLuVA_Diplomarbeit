import QtQuick 2.0

Item {
    id: item1
    implicitHeight: 400
    implicitWidth: 400

    Text {
        id: modeSport
        x: 157
        y: 130
        width: 169
        height: 49
        color: "#666666"
        text: qsTr("SPORT")
        anchors.bottom: parent.bottom
        font.pixelSize: 50
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        anchors.bottomMargin: 215

        Rectangle {
            id: indicatorSport
            x: -63
            y: 45
            width: 40
            height: 40
            color: "#00000000"
            radius: 20
            border.color: "#fd412b"
            anchors.verticalCenter: parent.verticalCenter
            anchors.right: parent.left
            anchors.rightMargin: 10
        }
    }

    Text {
        id: modeEco
        x: 157
        width: 169
        height: 49
        color: "#ffffff"
        text: qsTr("ECO")
        anchors.top: modeSport.bottom
        font.pixelSize: 50
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        anchors.topMargin: 30
        font.bold: false

        Rectangle {
            id: indicatiorEco
            x: -56
            y: 5
            width: 40
            height: 40
            color: "#fd412b"
            radius: 25
            border.color: "#fd412b"
            anchors.verticalCenter: parent.verticalCenter
            anchors.right: parent.left
            anchors.rightMargin: 10
        }
    }
    states: [
        State {
            name: "sport"

            PropertyChanges {
                target: modeSport
                color: "#ffffff"
            }

            PropertyChanges {
                target: modeEco
                color: "#666666"
            }

            PropertyChanges {
                target: indicatorSport
                color: "#fd412b"
            }

            PropertyChanges {
                target: indicatiorEco
                color: "#00000000"
            }
        }
    ]

}

/*##^##
Designer {
    D{i:0;autoSize:true;formeditorColor:"#4c4e50";formeditorZoom:1.75;height:400;width:400}
}
##^##*/
