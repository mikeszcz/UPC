

/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick
import QtQuick.Controls
import QtMultimedia
import QtQml
import Capstone

Rectangle {
    id: application
    //width: Constants.width
    //height: Constants.height
    width: 360
    height: 640
    color: "#000000"

    Popup {
        id: cameraPopup
        anchors.centerIn: parent
        height: parent.height
        width: parent.width

        CaptureSession {
            camera: Camera {
                id: camera
                focusMode: Camera.FocusModeAutoNear
            }
            videoOutput: videoOutput
        }

        VideoOutput {
            id: videoOutput
            anchors.fill: parent
        }

        Timer {
            id: timer
            interval: 2000
            repeat: false
            triggeredOnStart: false


            /*
            Connections {
                target: timer

                onTriggered: cameraPopup.close()
            }
            */
            onTriggered: cameraPopup.close()
        }

        Connections {
            target: cameraPopup

            onClosed: {
                camera.stop()
                infoScreen.open()
            }
            onOpened: {
                camera.start()
                timer.restart()
            }
        }
    }

    Popup {
        id: infoScreen
        width: parent.width
        height: parent.height
        background: Rectangle {
            implicitWidth: parent.width
            implicitHeight: parent.height
            color: "#000000"
        }

        Text {
            id: infoTitle
            y: parent.top
            width: parent.width * 0.8
            height: width / 4
            color: "#ffffff"

            text: qsTr("Input user info")
            font.pixelSize: Math.min(width, height) * 0.25
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter

            anchors.horizontalCenterOffset: 0
            anchors.horizontalCenter: parent.horizontalCenter

            font.weight: Font.Black
            font.pointSize: 16
            font.family: "Verdana"
        }

        Column {
            id: textFields
            spacing: 10
            anchors.centerIn: parent
            anchors.horizontalCenterOffset: 0

            TextField {
                id: textField
                width: 200
                placeholderText: qsTr("Other")
            }

            TextField {
                id: nameField
                width: 200
                placeholderText: qsTr("Full name")
            }

            TextField {
                id: idField
                width: 200
                placeholderText: qsTr("Pass type")
            }

            TextField {
                id: experationField
                width: 200
                placeholderText: qsTr("Experation date")
            }

            TextField {
                id: other
                width: 200
                placeholderText: qsTr("Other")
            }
        }

        Button {
            id: exportPass
            text: qsTr("Export")
            anchors.verticalCenter: textFields.verticalCenter
            anchors.verticalCenterOffset: 175
            anchors.horizontalCenterOffset: 0
            checkable: false
            anchors.horizontalCenter: parent.horizontalCenter

            width: parent.width * 0.3
            height: width / 2.5
            font.pixelSize: Math.min(width, height) * 0.25
            font.weight: Font.Black
            font.pointSize: 16
            font.family: "Verdana"
        }
    }

    Button {
        id: openCamera
        text: qsTr("Generate Pass")
        anchors.verticalCenter: parent.verticalCenter
        anchors.verticalCenterOffset: -100
        anchors.horizontalCenterOffset: 0
        checkable: false
        anchors.horizontalCenter: parent.horizontalCenter

        width: parent.width * 0.3
        height: width / 2.5
        font.pixelSize: Math.min(width, height) * 0.25
        font.weight: Font.Black
        font.pointSize: 16
        font.family: "Verdana"

        Connections {
            target: openCamera

            onClicked: {
                cameraPopup.open()
            }
        }
    }

    Text {
        id: title
        y: parent.top
        width: parent.width * 0.8
        height: width / 4
        color: "#ffffff"

        text: qsTr("Universal Pass Generator")
        font.pixelSize: Math.min(width, height) * 0.25
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter

        anchors.horizontalCenterOffset: 0
        anchors.horizontalCenter: parent.horizontalCenter

        font.weight: Font.Black
        font.pointSize: 16
        font.family: "Verdana"
    }

    states: [
        State {
            name: "clicked"
            when: openCamera.clicked

            PropertyChanges {
                target: label
                text: qsTr("Button Clicked")
            }
        }
    ]
}
