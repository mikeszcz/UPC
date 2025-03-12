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
        verticalAlignment: Text.AlignLeft

        anchors.horizontalCenterOffset: -43
        anchors.horizontalCenter: parent.horizontalCenter

        font.weight: Font.Black
        font.pointSize: 18
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

        anchors.horizontalCenterOffset: 0
        anchors.horizontalCenter: parent.horizontalCenter

        font.weight: Font.Normal
        font.pointSize: 6
        font.family: "Geist"
    }

    //All the rectangle subcomponents will be replaced with various images and text
    Rectangle {
        id: previewZone
        color: "#d9d9d9"
        anchors.fill: parent
        border.width: 2
        border.color: "black"
        anchors.topMargin: 95
        anchors.bottomMargin: 240
        anchors.leftMargin: 25
        anchors.rightMargin: 25
        radius: 5

        //This image will change depending on the code uploaded previously
        Rectangle {
            id: code
            color: "#898989"
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.topMargin: 180
            anchors.bottomMargin: 20
            anchors.leftMargin: 100
            anchors.rightMargin: 100
        }

        Rectangle {
            id: field1
            color: "#898989"
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.topMargin: 140
            anchors.bottomMargin: 140
            anchors.leftMargin: 20
            anchors.rightMargin: 20
        }

        Rectangle {
            id: logo
            color: "#898989"
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.topMargin: 20
            anchors.bottomMargin: 265
            anchors.leftMargin: 20
            anchors.rightMargin: 265
        }

        Rectangle {
            id: passDate
            color: "#898989"
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.topMargin: 20
            anchors.bottomMargin: 265
            anchors.leftMargin: 235
            anchors.rightMargin: 20
        }

        Rectangle {
            id: name
            color: "#898989"
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.topMargin: 20
            anchors.bottomMargin: 265
            anchors.leftMargin: 55
            anchors.rightMargin: 85
        }

        Rectangle {
            id: additionalFields
            color: "#898989"
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.topMargin: 50
            anchors.bottomMargin: 175
            anchors.leftMargin: 20
            anchors.rightMargin: 115
        }

        Rectangle {
            id: additionalLogo
            color: "#898989"
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.topMargin: 50
            anchors.bottomMargin: 175
            anchors.leftMargin: 205
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

        y: copyright.y - 70
        anchors.horizontalCenter: parent.horizontalCenter

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
        width: 70
        height: width / 3
        checkable: false

        y: title.y - 25
        x: title.x

        background: Rectangle {
            color: "#d9d9d9"
        }

        contentItem: Text {
            font.family: "Geist"
            font.pointSize: 12
            text: backButton.text
            color: "black"
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
        }

        Connections {
            target: backButton
            function onClicked() {
                previewScreen.back()
            }
        }
    }
}
