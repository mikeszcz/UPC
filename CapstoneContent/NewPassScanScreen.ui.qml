import QtMultimedia
import QtQuick
import QtQuick.Controls

Rectangle {
    id: createPass
    color: "#d9d9d9"

    signal saveAndPreviewRequest

    //Enforce a name length?
    TextInput {
        id: passName
        y: 41
        width: parent.width * 0.6
        height: width / 6
        color: "#000000"

        text: qsTr("New Pass")
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignHCenter

        anchors.horizontalCenter: parent.horizontalCenter
        anchors.horizontalCenterOffset: -43

        font.weight: Font.Bold
        font.pointSize: 18
        font.family: "Geist"

        //This image needs to always be at the end of the text
        Image {
            anchors.fill: parent
            anchors.leftMargin: 60
            anchors.topMargin: 10
            anchors.bottomMargin: 10
            source: "capstone/assets/_black_and_white_pencil_clip_art_png_download_2120721743_1.png"
            fillMode: Image.PreserveAspectFit
        }
    }

    //Entire rectangle must be a cliclable object
    //Probably just reimplement as a button
    Rectangle {
        id: uploadZone
        color: "#d9d9d9"
        anchors.fill: parent
        border.width: 5
        border.color: "black"
        anchors.topMargin: 100
        anchors.bottomMargin: 275
        anchors.leftMargin: 25
        anchors.rightMargin: 25

        Image {
            id: uploadButton
            anchors.fill: parent
            anchors.leftMargin: 100
            anchors.topMargin: 100
            anchors.bottomMargin: 100
            anchors.rightMargin: 100
            source: "capstone/assets/very_Basic_Upload_icon_1277321410_1.png"
            fillMode: Image.PreserveAspectFit
        }

        Text {
            color: "#000000"
            text: qsTr("Upload Scan Code")
            anchors.horizontalCenter: parent.horizontalCenter
            font.pixelSize: 10
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.NoWrap
            font.weight: Font.Normal
            font.family: "Geist"
            y: uploadButton.y + uploadButton.height + 5
        }
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

    RoundButton {
        id: saveAndPreview
        text: qsTr("Save & Preview")
        width: parent.width * 0.6
        height: width / 3
        checkable: false
        radius: 15

        y: copyright.y - 70
        anchors.horizontalCenter: parent.horizontalCenter

        background: Rectangle {
            color: "black"
            radius: parent.radius
        }

        contentItem: Text {
            font.family: "Geist"
            font.pointSize: 18
            text: saveAndPreview.text
            color: "white"
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }

        Connections {
            target: saveAndPreview
            onClicked: createPass.saveAndPreviewRequest()
        }
    }

    Rectangle {
        id: descriptionField
        color: "white"
        x: uploadZone.x
        y: uploadZone.y + uploadZone.height + 20
        width: 290
        height: 20
        radius: 5

        //Need to fix positioning
        TextInput {
            color: "#cccccc"
            id: textInput
            text: qsTr("Description (Required)")
            font.pixelSize: 12
            wrapMode: Text.NoWrap
            font.weight: Font.Normal
            font.family: "Geist"
            width: parent.width
            height: parent.height
        }
    }

    //When clicked, creates a new input field
    //Need to enforice a field limit
    //Limit is listed somewhere in the google sheet
    Button {
        id: addNewField
        text: qsTr("+ Add Field")
        x: uploadZone.x
        y: descriptionField.y + descriptionField.height + 10
        height: descriptionField.height
        contentItem: Text {
            font.family: "Geist"
            font.pointSize: 12
            text: addNewField.text
            color: "white"
            anchors.fill: parent
        }
        background: Rectangle {
            color: "#d9d9d9"
            radius: parent.radius
        }
    }
}
