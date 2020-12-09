import QtQuick 2.13
import QtQuick.Controls 2.13

ApplicationWindow {
    width: 1920
    height: 1080
    visible: true
    visibility: "FullScreen"
    title: qsTr("Hello World")

    StackView {
        id: stackView
        x: 0
        y: 0
        width: parent
        height: parent

        LoginPage {
            id: loginPage
            x: 0
            y: 0
        }

        MainPage {
            id: mainPage
            x: 0
            y: 0
        }
    }



}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.5}
}
##^##*/
