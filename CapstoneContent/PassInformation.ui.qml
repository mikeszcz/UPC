/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/

import QtQuick
import QtQuick.Controls


Popup {
    id: infoScreen

    signal exportRequested()

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

        Connections {
            target: exportPass

            function onClicked() {
                infoScreen.exportRequested()
            }
        }
    }
}
