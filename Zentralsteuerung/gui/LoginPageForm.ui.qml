import QtQuick 2.4
import QtQuick.Controls 2.2

Item {
    width: 1920
    height: 1080

    Rectangle {
        id: background
        x: 0
        y: 0
        width: 1920
        height: 1080
        color: "#0d1218"
        border.color: "#00000000"

        Rectangle {
            id: sponsors
            x: 0
            y: 920
            width: 1920
            height: 160
            color: "#1a1d22"
            radius: 0
            border.width: 1

            Image {
                id: image
                x: 1018
                y: 31
                width: 100
                height: 100
                source: "Pictures/python_logo.png"
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: image1
                x: 821
                y: 30
                width: 100
                height: 100
                source: "Pictures/qt_logo.png"
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: image2
                x: 59
                y: 30
                width: 349
                height: 100
                source: "Pictures/schrack_logo.png"
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: image4
                x: 1646
                y: 33
                width: 210
                height: 94
                source: "Pictures/elin_logo.png"
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: image5
                x: 461
                y: 24
                width: 289
                height: 115
                source: "Pictures/ktm_Logo.png"
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: image6
                x: 1230
                y: 19
                width: 355
                height: 122
                source: "Pictures/logo.png"
                fillMode: Image.PreserveAspectFit
            }
        }

        LoginWindowForm {
            id: loginWindowForm
            x: 600
            y: 92
            visible: true
        }




    }
}



/*##^##
Designer {
    D{i:0;formeditorZoom:0.75}
}
##^##*/
