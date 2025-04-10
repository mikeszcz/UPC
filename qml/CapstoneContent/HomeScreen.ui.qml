import QtMultimedia
import QtQuick
import QtQuick.Controls

Rectangle {
    id: homescreen
    color: "#d9d9d9"

    signal openSavedRequested
    signal newPassRequested
    signal testScreenRequested

    RoundButton {
        id: newPass
        text: qsTr("New Pass")
        width: parent.width * 0.6
        height: width / 3
        checkable: false
        radius: 15

        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenterOffset: -40

        background: Rectangle {
            color: "black"
            radius: parent.radius
        }

        contentItem: Text {
            font.family: "Geist"
            font.pointSize: 18
            text: newPass.text
            color: "white"
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }

        Connections {
            target: newPass
            function onClicked() { homescreen.newPassRequested() }
        }
    }

    RoundButton {
        id: savedPasses
        text: qsTr("Saved Passes")
        width: parent.width * 0.6
        height: width / 3
        checkable: false
        radius: 15

        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenterOffset: 40

        background: Rectangle {
            color: "black"
            radius: parent.radius
        }

        contentItem: Text {
            font.family: "Geist"
            font.pointSize: 16
            text: savedPasses.text
            color: "white"
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }

        Connections {
            target: savedPasses
            function onClicked(){homescreen.openSavedRequested()}
        }
    }

    Text {
        id: title
        y: 75
        width: parent.width * 0.6
        height: width / 4
        color: "#000000"

        text: qsTr("Pass Generator")
        horizontalAlignment: Text.AlignHCenter
        anchors.horizontalCenter: parent.horizontalCenter

        font.weight: Font.Black
        font.pointSize: height / 1.5
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

    Text {
        id: about_Legal
        color: "#1e1e1e"
        y: copyright.y - height
        width: parent.width * 0.4
        height: width / 4
        text: qsTr("About   |   Legal")
        font.pixelSize: height / 3
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        wrapMode: Text.NoWrap
        font.weight: Font.DemiBold
        font.family: "Inter"

        anchors.horizontalCenter: parent.horizontalCenter
    }
}
