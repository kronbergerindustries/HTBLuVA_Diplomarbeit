import QtQuick 2.13
import QtQuick.Controls 2.13

ApplicationWindow {
    width: 1920
    height: 1080
    visible: true
    visibility: "FullScreen"

    StackView {
        id: stackView
        x: 0
        y: 0
        width: parent
        height: parent


        MainPage {
            id: mainPage
            x: 0
            y: 0
        }


        LoginPage {
            id: loginPage
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
