import QtMultimedia
import QtQuick
import QtQuick.Controls

//Need this the be scrollable and be infinitly long for as many
//passes that are generated by the user
//Should there be a pass limit?
//Combine a gridview with a flickable
//use a list model for the gridview for now, later will hook up with C++ model
//Use the clip property
Rectangle {
    id: savedPassScreen
    color: "#d9d9d9"

    signal back

    Text {
        id: title
        y: 41
        width: parent.width * 0.6
        height: width / 6
        color: "#000000"

        text: qsTr("Saved Passes")
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignHCenter

        anchors.horizontalCenterOffset: -32
        anchors.horizontalCenter: parent.horizontalCenter

        font.weight: Font.Bold
        font.pointSize: 18
        font.family: "Geist"
    }

    //Need to have a constant width height for passes
    //Should be about 135 x 148
    Rectangle {
        x: 40
        y: 90
        width: 135
        height: 148
        color: "#d9d9d9"
        border.color: "#000000"
        border.width: 1
        radius: 5
    }

    Rectangle {
        x: 190
        y: 90
        width: 135
        height: 148
        color: "#d9d9d9"
        border.color: "#000000"
        border.width: 1
        radius: 5
    }

    Rectangle {
        x: 190
        y: 250
        width: 135
        height: 148
        color: "#d9d9d9"
        border.color: "#000000"
        border.width: 1
        radius: 5
    }

    Rectangle {
        x: 190
        y: 410
        width: 135
        height: 148
        color: "#d9d9d9"
        border.color: "#000000"
        border.width: 1
        radius: 5
    }

    Rectangle {
        x: 40
        y: 250
        width: 135
        height: 148
        color: "#d9d9d9"
        border.color: "#000000"
        border.width: 1
        radius: 5
    }

    Rectangle {
        x: 40
        y: 410
        width: 135
        height: 148
        color: "#d9d9d9"
        border.color: "#000000"
        border.width: 1
        radius: 5
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
                savedPassScreen.back()
            }
        }
    }
}
