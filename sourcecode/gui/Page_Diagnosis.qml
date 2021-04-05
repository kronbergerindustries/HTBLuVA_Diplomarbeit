import QtQuick 2.4
import QtQuick.Controls 2.2
import QtQuick.Shapes 1.14
import "Chart.js" as Char

Item {
    id: diagnosisPage
    width: 1920
    height: 1080

    // Function
    //Function To Change The Visibility State of the Page
    function changeVisibility(boolValue) {
        if (boolValue) {
            diagnosisPage.visible = true

        } else {
            diagnosisPage.visible = false

        }
    }

    Rectangle {
        id: background
        x: 0
        y: 0
        width: 1920
        height: 1080
        color: "#0d1218"

        Rectangle {
            id: rectangle
            y: 880
            height: 160
            color: "#1a1d22"
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 0
            anchors.rightMargin: 0
            anchors.leftMargin: 0
        }
    }
}

/*##^#
Designer {
    D{i:0;formeditorZoom:0.66}
}
##^##*/
