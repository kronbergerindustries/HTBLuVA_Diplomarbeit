import QtQuick 2.4
import QtQuick.Controls 2.2
import QtQuick.Window 2.2

Item {
    id:loginPage
    width: 1920
    height: 1080


    // Function
    // Function To Change The Visibility State of the Wrong Pass Statement
    function wrongPass(boolValue) {
        if(boolValue) {
            wrongText.visible = true

        } else {
            wrongText.visible = false

        }
    }

    // Function To Change The Visibility State of the State
    function changeVisibility(boolValue) {
        if(boolValue) {
            loginPage.visible = true

        } else {
            loginPage.visible = false

        }
    }

    Rectangle {
        id: background
        x: 0
        y: 0
        width: 1920
        height: 1080
        color: "#0d1218"
        border.color: "#00000000"

        Rectangle {
            id: page
            x: 0
            y: 920
            width: 1920
            height: 160
            color: "#1a1d22"
            radius: 0
            border.color: "#00000000"
            border.width: 1

            Image {
                id: pythonLogo
                x: 768
                y: 27
                width: 100
                height: 100
                anchors.verticalCenter: parent.verticalCenter
                anchors.right: qtLogo.left
                source: "Pictures/logo_python.png"
                anchors.rightMargin: 60
                anchors.verticalCenterOffset: 0
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: qtLogo
                x: 937
                y: 30
                width: 100
                height: 100
                anchors.verticalCenter: parent.verticalCenter
                source: "Pictures/logo_qt.png"
                anchors.horizontalCenter: parent.horizontalCenter
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: schrackLogo
                x: 44
                y: 27
                width: 349
                height: 100
                anchors.verticalCenter: parent.verticalCenter
                anchors.right: elinLogo.left
                source: "Pictures/logo_schrack.png"
                anchors.rightMargin: 60
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: elinLogo
                x: 480
                y: 36
                width: 210
                height: 94
                anchors.verticalCenter: parent.verticalCenter
                anchors.right: pythonLogo.left
                source: "Pictures/logo_elin.png"
                anchors.rightMargin: 60
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: mysqlLogo
                y: 50
                width: 120
                anchors.verticalCenter: parent.verticalCenter
                anchors.left: qtLogo.right
                source: "Pictures/logo_mysql.png"
                anchors.leftMargin: 60
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: logo_sigmatek
                x: 1247
                y: 48
                width: 396
                height: 64
                source: "Pictures/logo_sigmatek.png"
                fillMode: Image.PreserveAspectFit
            }

        }

        Rectangle {
            id: loginBox
            x: 600
            y: 100
            width: 720
            height: 720
            visible: true
            color: "#1a1d22"
            border.color: "#ffffff"
            border.width: 1

            Image {
                id: userIcon
                x: 175
                width: 371
                height: 330
                anchors.top: parent.top
                source: "Pictures/user.png"
                anchors.topMargin: 95
                fillMode: Image.PreserveAspectFit

                TextField {
                    id: password
                    x: -127
                    width: 350
                    height: 50
                    text: ""
                    anchors.top: usersBox.bottom
                    horizontalAlignment: Text.AlignLeft
                    font.family: "Tahoma"
                    placeholderText: "PASSWORD"
                    anchors.topMargin: 50
                    anchors.horizontalCenterOffset: -25
                    anchors.horizontalCenter: parent.horizontalCenter
                    font.pointSize: 16
                    echoMode: TextInput.Password

                    Button {
                        id: loginButton
                        y: 0
                        width: 50
                        height: 50
                        text: qsTr(">")
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.left: parent.right
                        font.bold: true
                        anchors.leftMargin: 0
                        font.family: "Courier"
                        font.pointSize: 16
                        flat: false
                        autoRepeat: true
                        display: AbstractButton.TextBesideIcon
                        highlighted: true
                        onClicked: bridge.loginData(password.text, usersBox.currentText)
                    }
                }

                ComboBox {
                    id: usersBox
                    x: -127
                    width: 400
                    height: 50
                    anchors.top: parent.bottom
                    activeFocusOnTab: true
                    antialiasing: false
                    focus: false
                    smooth: true
                    enabled: true
                    focusPolicy: Qt.StrongFocus
                    displayText: qsTr("USERNAME")
                    font.family: "Tahoma"
                    textRole: ""
                    editable: true
                    flat: false
                    anchors.topMargin: 50
                    font.pointSize: 16
                    model: ["USER", "GUEST", "ADMIN"]
                    anchors.horizontalCenterOffset: 0
                    anchors.horizontalCenter: parent.horizontalCenter
                    currentIndex: 0
                }
            }

            Text {
                id: wrongText
                x: 228
                y: 650
                width: 265
                height: 45
                visible: false
                color: "#ff1111"
                text: qsTr("Incorrect username or password.")
                font.pixelSize: 16
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }
        }

    states: [
        State {
            name: "wrongPass"

            PropertyChanges {
                target: wrongText
                visible: true
            }
        }
    ]
    }
}


/*##^##
Designer {
    D{i:0;formeditorZoom:0.5}
}
##^##*/
