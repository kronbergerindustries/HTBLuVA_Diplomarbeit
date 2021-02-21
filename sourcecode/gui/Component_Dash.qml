import QtQuick 2.0

Item {
    id: dash
    implicitWidth: 880
    implicitHeight: 800

        Image {
            id: iconDash
            anchors.centerIn: parent
            width: 770
            height: 770
            source: "Pictures/dash.png"
            fillMode: Image.PreserveAspectFit

            Text {
                id: textSpeed
                x: 237
                y: 275
                width: 296
                height: 182
                color: "#ffffff"
                text: "100"
                font.pixelSize: 150
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }

            Text {
                id: kmh
                x: 282
                y: 456
                width: 206
                height: 78
                color: "#666666"
                text: "km/h"
                font.pixelSize: 40
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                textFormat: Text.RichText
            }

            Component_Bar {
                id: powerBar
                x: -40
                y: -40
                width: 880
                height: 880
                anchors.verticalCenter: parent.verticalCenter
                progressStrokeColor: "#fd412b"
                maxValue: 100
                progressWidth: 18
                bgstrokeWidth: 18
                anchors.horizontalCenter: parent.horizontalCenter
            }

            Component_Bar {
                id: speedBar
                x: 260
                y: 260
                width: 750
                height: 750
                anchors.verticalCenter: parent.verticalCenter
                roundCap: false
                value: textSpeed.text / 120 *100
                progressWidth: 18
                bgstrokeWidth: 18
                anchors.horizontalCenter: parent.horizontalCenter
            }

            Component_Bar {
                id: batteryBar
                x: -55
                y: -55
                width: 880
                height: 880
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                progressStrokeColor: "#2bcc48"
                startAngle: 45
                maxValue: -100
                value: valueBattery.text
                progressWidth: 18
                bgstrokeWidth: 18
            }
        }
    }
/*##^##
Designer {
    D{i:0;height:880;width:880}
}
##^##*/
