import QtQuick 2.4
import QtQuick.Controls 2.2
import QtQuick.Shapes 1.14

Item {
    id: batteryPage
    width: 1920
    height: 1080

    // Function
    // Function To Change The Visibility State of the Page
    function changeVisibility(boolValue) {
        if (boolValue) {
            batteryPage.visible = true

        } else {
            batteryPage.visible = false

        }
    }

    Rectangle {
        id: background
        x: 0
        y: 0
        width: 1920
        height: 1080
        color: "#0d1218"

        Component_Bar {
            id: component_Bar
            x: 637
            y: 240
            width: 600
            height: 600
            anchors.verticalCenter: parent.verticalCenter
            anchors.verticalCenterOffset: 0
            anchors.horizontalCenterOffset: 0
            value: 50
            progressStrokeColor: "#2bcc48"
            roundCap: false
            bgstrokeWidth: 24
            progressWidth: 24
            startAngle: -90
            anchors.horizontalCenter: parent.horizontalCenter
            maxValue: 360

            Image {
                id: icon_battery_grey
                x: 260
                y: 171
                width: 80
                source: "Pictures/icon_battery_grey.png"
                anchors.horizontalCenter: parent.horizontalCenter
                fillMode: Image.PreserveAspectFit

                Image {
                    id: icon_battery_green
                    x: -294
                    y: 201
                    width: 80
                    anchors.verticalCenter: parent.verticalCenter
                    source: "Pictures/icon_battery_green.png"
                    anchors.horizontalCenter: parent.horizontalCenter
                    fillMode: Image.PreserveAspectFit
                }
            }

            Text {
                id: valueBattery
                x: 175
                y: 366
                width: 120
                height: 78
                color: "#ffffff"
                text: "50"
                font.pixelSize: 60
                horizontalAlignment: Text.AlignRight
                verticalAlignment: Text.AlignVCenter
                transformOrigin: Item.Right
                anchors.rightMargin: 960
                textFormat: Text.RichText

                Text {
                    id: percBattery
                    y: -283
                    width: 61
                    height: 78
                    color: "#666666"
                    text: "%"
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.left: parent.right
                    font.pixelSize: 60
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    anchors.leftMargin: 10
                    textFormat: Text.RichText
                }
            }
        }

    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.5}
}
##^##*/
