\import QtQuick 2.15
import QtGraphicalEffects 1.15
import QtQuick.Shapes 1.15

Item {
    id: speedBar
    implicitWidth: 250
    implicitHeight: 250

    // Proporties
    // General
    property bool roundCap: false
    property real startAngle: 135
    property real maxValue: 270
    property real value: 50
    property int sample: 12

    // BG Circle
    property color bgColor: "Transparent"
    property color bgStrokeColor: "#1a1d22"
    property int bgstrokeWidth: 16

    // Progress Circle
    property color progressStrokeColor: "#008adf"
    property int progressWidth: 16


    Shape{
        id: shape
        x: 0
        y: 0
        anchors.fill: parent
        layer.enabled: true
        layer.samples: speedBar.sample

        ShapePath{
            id: pathBG
            fillColor: speedBar.bgColor
            strokeColor: speedBar.bgStrokeColor
            strokeWidth: speedBar.bgstrokeWidth
            capStyle: speedBar.roundCap ? ShapePath.RoundCap : ShapePath.FlatCap

            PathAngleArc{
                radiusX: (speedBar.width / 2) - (speedBar.progressWidth / 2)
                radiusY: (speedBar.height / 2) - (speedBar.progressWidth / 2)
                centerX: speedBar.width / 2
                centerY: speedBar.height / 2
                startAngle: speedBar.startAngle
                sweepAngle: speedBar.maxValue
            }
        }

        ShapePath{
            id: path
            fillColor: "transparent"
            strokeColor: speedBar.progressStrokeColor
            strokeWidth: speedBar.progressWidth
            capStyle: ShapePath.FlatCap

            PathAngleArc{
                radiusX: (speedBar.width / 2) - (speedBar.progressWidth / 2)
                radiusY: (speedBar.height / 2) - (speedBar.progressWidth / 2)
                centerX: speedBar.width / 2
                centerY: speedBar.height / 2
                startAngle: speedBar.startAngle
                sweepAngle: (speedBar.maxValue / 100 * speedBar.value)
            }
        }
    }

}

/*##^##
Designer {
    D{i:0;autoSize:true;formeditorColor:"#ffffff";height:250;width:250}
}
##^##*/
