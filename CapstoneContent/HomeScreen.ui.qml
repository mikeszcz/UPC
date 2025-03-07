import QtMultimedia
import QtQuick
import QtQuick.Controls

Rectangle {
    id: homescreen
    color: "#e4e4e4"

    //Inital signal for testing
    signal generatePassRequested

    signal openSavedRequested
    signal newPassRequested

    //Initial button for testing


    /*
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
        font.weight: Font.White
        font.pointSize: 16
        font.family: "Verdana"

        Connections {
            target: openCamera

            onClicked: homescreen.generatePassRequested()
        }
    }
    */
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
            font.family: "Verdana"
            font.pointSize: 16
            text: newPass.text
            color: "white"
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }

        Connections {
            target: newPass
            onClicked: homescreen.newPassRequested()
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
            font.family: "Verdana"
            font.pointSize: 14
            text: savedPasses.text
            color: "white"
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }

        Connections {
            target: savedPasses
            onClicked: homescreen.openSavedRequested()
        }
    }

    Text {
        id: title
        y: 50
        width: parent.width * 0.6
        height: width / 4
        color: "#000000"

        text: qsTr("Pass Generator")
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignLeft

        anchors.horizontalCenterOffset: -50
        anchors.horizontalCenter: parent.horizontalCenter

        font.weight: Font.Black
        font.pointSize: 16
        font.family: "Verdana"
    }

    Text {
        id: copyright
        y: parent.height - 35
        width: parent.width * 0.3
        height: width / 4
        color: "#c5c5c5"

        text: qsTr("© 2025 EECS 497 Group 11")
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        styleColor: "#a2a2a2"

        anchors.horizontalCenterOffset: 0
        anchors.horizontalCenter: parent.horizontalCenter

        font.weight: Font.Black
        font.pointSize: 6
        font.family: "verdana"
    }
}
