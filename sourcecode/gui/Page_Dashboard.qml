import QtQuick 2.4
import QtQuick.Controls 2.2
import QtQuick.Shapes 1.14
import QtQuick.Timeline 1.0

Item {
    id: dashPage
    width: 1920
    height: 1080

    // Properties
    // Value Properties
    property alias valueDegEngineText: valueDegEngine.text

    // Functions
    // Function To Change The Visibility State of the State
    function changeVisibility(boolValue) {
        if(boolValue) {
            dashPage.visible = true

        } else {
            dashPage.visible = false

        }
    }

    Rectangle {
        id: rectangle
        x: 0
        y: 0
        width: 1920
        height: 1080
        color: "#0d1218"

        Image {
            id: iconBattery
            x: 1370
            y: 463
            width: 90
            height: 84
            anchors.verticalCenter: iconCPU.verticalCenter
            source: "Pictures/icon_battery_grey.png"

            Text {
                id: degBattery
                x: 48
                y: 90
                width: 61
                height: 78
                color: "#666666"
                text: "°C"
                anchors.verticalCenter: parent.verticalCenter
                font.pixelSize: 45
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                anchors.verticalCenterOffset: 90
                textFormat: Text.RichText
                anchors.horizontalCenterOffset: 30
                anchors.horizontalCenter: parent.horizontalCenter
            }

            Text {
                id: valueDegBattery
                x: -72
                y: 93
                width: 120
                height: 78
                color: "#ffffff"
                text: "40"
                anchors.verticalCenter: degBattery.verticalCenter
                anchors.right: degBattery.left
                font.pixelSize: 45
                horizontalAlignment: Text.AlignRight
                verticalAlignment: Text.AlignVCenter
                textFormat: Text.RichText
                anchors.rightMargin: 0
                transformOrigin: Item.Right
            }
            fillMode: Image.PreserveAspectFit
        }
        Image {
            id: iconOut
            x: 1670
            y: 460
            width: 98
            height: 90
            anchors.verticalCenter: iconCPU.verticalCenter
            source: "Pictures/icon_out.png"

            Text {
                id: degOut
                x: 48
                y: 90
                width: 61
                height: 78
                color: "#666666"
                text: "°C"
                anchors.verticalCenter: parent.verticalCenter
                font.pixelSize: 45
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                anchors.verticalCenterOffset: 90
                textFormat: Text.RichText
                anchors.horizontalCenterOffset: 30
                anchors.horizontalCenter: parent.horizontalCenter
            }

            Text {
                id: valueDegOut
                x: -72
                y: -379
                width: 120
                height: 78
                color: "#ffffff"
                text: "15"
                anchors.verticalCenter: degOut.verticalCenter
                anchors.right: degOut.left
                font.pixelSize: 45
                horizontalAlignment: Text.AlignRight
                verticalAlignment: Text.AlignVCenter
                textFormat: Text.RichText
                anchors.rightMargin: 0
                transformOrigin: Item.Right
            }
            fillMode: Image.PreserveAspectFit
        }

        Image {
            id: iconCPU
            x: 150
            y: 848
            width: 90
            height: 84
            source: "Pictures/icon_cpu.png"
            fillMode: Image.PreserveAspectFit

            Text {
                id: degCPU
                x: 814
                y: 90
                width: 61
                height: 78
                color: "#666666"
                text: "°C"
                anchors.verticalCenter: parent.verticalCenter
                font.pixelSize: 45
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                anchors.verticalCenterOffset: 90
                textFormat: Text.RichText
                anchors.horizontalCenterOffset: 30
                anchors.horizontalCenter: parent.horizontalCenter
            }

            Text {
                id: valueDegCPU
                x: -72
                y: 93
                width: 120
                height: 78
                color: "#ffffff"
                text: "26"
                anchors.verticalCenter: degCPU.verticalCenter
                anchors.right: degCPU.left
                font.pixelSize: 45
                horizontalAlignment: Text.AlignRight
                verticalAlignment: Text.AlignVCenter
                textFormat: Text.RichText
                anchors.rightMargin: 0
                transformOrigin: Item.Right
            }
        }

        Image {
            id: battery
            x: 1543
            y: 494
            width: 57
            height: 118
            visible: true
            anchors.verticalCenter: dashComponent.verticalCenter
            source: "Pictures/icon_battery_green.png"
            fillMode: Image.PreserveAspectFit

            Text {
                id: percBattery
                x: 159
                y: 20
                width: 61
                height: 78
                color: "#666666"
                text: "%"
                anchors.verticalCenter: parent.verticalCenter
                font.pixelSize: 50
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                anchors.horizontalCenterOffset: 150
                anchors.horizontalCenter: parent.horizontalCenter
                textFormat: Text.RichText
            }

            Text {
                id: valueBattery
                x: 39
                y: 20
                width: 120
                height: 78
                color: "#ffffff"
                text: "50"
                anchors.verticalCenter: percBattery.verticalCenter
                anchors.right: percBattery.left
                font.pixelSize: 51
                horizontalAlignment: Text.AlignRight
                verticalAlignment: Text.AlignVCenter
                anchors.rightMargin: 0
                transformOrigin: Item.Right
                textFormat: Text.RichText
            }
        }

        Image {
            id: iconEngine
            x: 450
            y: 845
            width: 98
            height: 90
            anchors.verticalCenter: iconCPU.verticalCenter
            source: "Pictures/icon_engine.png"
            fillMode: Image.PreserveAspectFit

            Text {
                id: degEngine
                x: 509
                y: 90
                width: 61
                height: 78
                color: "#666666"
                text: "°C"
                anchors.verticalCenter: parent.verticalCenter
                font.pixelSize: 45
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                anchors.verticalCenterOffset: 90
                anchors.horizontalCenterOffset: 30
                anchors.horizontalCenter: parent.horizontalCenter
                textFormat: Text.RichText
            }

            Text {
                id: valueDegEngine
                x: -72
                y: 93
                width: 120
                height: 78
                color: "#ffffff"
                text: "55"
                anchors.verticalCenter: degEngine.verticalCenter
                anchors.right: degEngine.left
                font.pixelSize: 45
                horizontalAlignment: Text.AlignRight
                verticalAlignment: Text.AlignVCenter
                anchors.rightMargin: 0
                transformOrigin: Item.Right
                textFormat: Text.RichText
            }
        }

        Component_Dash {
            id: dashComponent
            x: 520
            y: 48
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenterOffset: 0
            anchors.verticalCenterOffset: 0
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Component_Light {
            id: component_Light
            y: 50
            width: 100
            height: 60
            anchors.verticalCenter: component_Blinker.verticalCenter
            anchors.left: parent.left
            anchors.leftMargin: 100
            state: ""

            Component_Highbeam {
                id: component_Highbeam
                y: 2
                width: 100
                height: 60
                visible: true
                anchors.verticalCenter: parent.verticalCenter
                anchors.left: parent.right
                state: ""
                anchors.leftMargin: 40
            }
        }

        Component_Mode {
            id: component_Mode
            x: 62
            y: 320
            anchors.verticalCenter: parent.verticalCenter
        }

        Component_Blinker {
            id: component_Blinker
            x: 1720
            y: 60
            width: 100
            height: 70

            Component_Blinker {
                id: component_Blinker1
                width: 101
                anchors.right: parent.left
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 0
                anchors.topMargin: 0
                anchors.rightMargin: 20
                rotation: 180
            }
        }
    }

    Timeline {
        id: timeline
        animations: [
            TimelineAnimation {
                id: timelineAnimation
                running: true
                duration: 1000
                loops: 1
                to: 1000
                from: 0
            }
        ]
        endFrame: 1000
        startFrame: 0
        enabled: true
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
##^##*/
