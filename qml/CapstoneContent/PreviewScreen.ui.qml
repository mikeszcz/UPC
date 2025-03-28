import QtMultimedia
import QtQuick
import QtQuick.Controls

Rectangle {
    id: previewScreen
    color: "#d9d9d9"

    signal back
    signal exportPass

    Text {
        id: title
        y: 50
        width: parent.width * 0.6
        height: width / 4
        color: "#000000"

        text: qsTr("Preview")
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter

        anchors.left: parent.left
        anchors.leftMargin: 25

        font.weight: Font.Bold
        font.pointSize: height / 2
        font.family: "Geist"
    }

    Text {
        id: copyright
        y: parent.height - 35
        width: parent.width * 0.3
        height: width / 4
        color: "#898989"

        text: qsTr("© 2025 EECS 497 Group 11")
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter

        anchors.horizontalCenter: parent.horizontalCenter

        font.weight: Font.Normal
        font.pointSize: height / 3
        font.family: "Geist"
    }

    //All the rectangle subcomponents will be replaced with various images and text
    Rectangle {
        id: previewZone
        color: "#d9d9d9"
        border.width: 2
        border.color: "black"
        anchors.top: title.bottom
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.topMargin: 10
        height: parent.width - 50
        anchors.leftMargin: 25
        anchors.rightMargin: 25
        radius: 5

        //This image will change depending on the code uploaded previously
        Rectangle {
            id: code
            color: "#898989"
            anchors.bottom: parent.bottom
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.bottomMargin: 20
            anchors.leftMargin: 120
            anchors.rightMargin: 120
            height: parent.height - 240
        }

        Rectangle {
            id: field1
            color: "#898989"
            anchors.bottom: code.top
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.bottomMargin: 20
            anchors.leftMargin: 20
            anchors.rightMargin: 20
            height: parent.height * 0.08
        }

        Rectangle {
            id: logo
            color: "#898989"
            anchors.top: parent.top
            anchors.left: parent.left
            anchors.topMargin: 20
            anchors.leftMargin: 20
            width: height * 1.3
            height: parent.height * 0.08
        }

        Rectangle {
            id: passDate
            color: "#898989"
            anchors.top: parent.top
            anchors.right: parent.right
            anchors.topMargin: 20
            anchors.rightMargin: 20
            width: height * 1.5
            height: parent.height * 0.08
        }

        Rectangle {
            id: name
            color: "#898989"
            anchors.top: parent.top
            anchors.left: logo.right
            anchors.right: passDate.left
            anchors.topMargin: 20
            anchors.leftMargin: 10
            anchors.rightMargin: 10
            height: parent.height * 0.08
        }

        Rectangle {
            id: additionalFields
            color: "#898989"
            anchors.top: passDate.bottom
            anchors.bottom: field1.top
            anchors.left: parent.left
            anchors.topMargin: 20
            anchors.bottomMargin: 20
            anchors.leftMargin: 20
            width: parent.height * 0.55
        }

        Rectangle {
            id: additionalLogo
            color: "#898989"
            anchors.top: passDate.bottom
            anchors.bottom: field1.top
            anchors.left: additionalFields.right
            anchors.right: parent.right
            anchors.topMargin: 20
            anchors.bottomMargin: 20
            anchors.leftMargin: 20
            anchors.rightMargin: 20
        }
    }

    RoundButton {
        id: exportPass
        text: qsTr("Export")
        width: parent.width * 0.6
        height: width / 3
        checkable: false
        radius: 15

        anchors.horizontalCenter: parent.horizontalCenter

        anchors.bottom: copyright.top
        anchors.bottomMargin: 15

        contentItem: Rectangle {
            color: "black"
            radius: parent.radius
            anchors.fill: parent

            Text {
                font.family: "Geist"
                font.pointSize: 18
                text: exportPass.text
                color: "white"
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                anchors.centerIn: parent
            }
        }

        Connections {
            target: exportPass
            function onClicked() {
                previewScreen.exportPass()
            }
        }
    }

    Button {
        id: backButton
        text: qsTr("< Back")
        width: parent.width * 0.4
        height: width / 5
        checkable: false

        anchors.bottom: title.top
        anchors.bottomMargin: -10
        anchors.left: parent.left
        anchors.leftMargin: 25

        background: Rectangle {
            color: "#d9d9d9"
        }

        contentItem: Text {
            font.family: "Geist"
            font.pointSize: backButton.height / 1.5
            text: backButton.text
            color: "black"
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            anchors.fill: parent
        }

        Connections {
            target: backButton
            function onClicked() {
                previewScreen.back()
            }
        }
    }
}
