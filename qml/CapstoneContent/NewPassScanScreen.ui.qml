import QtMultimedia
import QtQuick
import QtQuick.Controls

Rectangle {
    id: createPass
    color: "#d9d9d9"

    signal saveAndPreviewRequest
    signal back
    signal uploadScannable

    //Elipses when pass name goes pass a certain length (USE MAX CHAR LENGHT INSTEAD OF ELLIPSES)
    //Use anchors to anchor image to end of input text (FIXED)
    //dont want to set a width, since it should have a dynamic size (FIXED)
    //Set visible property to active focus (FIXED)
    TextInput {
        id: passName
        y: 40
        height: 40
        color: "#000000"
        text: qsTr("New Pass")
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        font.weight: Font.Bold
        font.pointSize: 20
        font.family: "Geist"
        clip: true
        focus: true
        maximumLength: 17

        anchors.left: parent.left
        anchors.leftMargin: 28
        anchors.rightMargin: 10
    }

    Image {
        id: passIcon
        width: 20
        height: 20
        anchors.left: passName.right
        anchors.leftMargin: 10
        anchors.verticalCenter: passName.verticalCenter
        source: "capstone/assets/_black_and_white_pencil_clip_art_png_download_2120721743_1.png"
        fillMode: Image.PreserveAspectFit
    }

    Text {
        id: charLimitText
        y: 79
        anchors.left: passName.left
        anchors.leftMargin: 0
        text: `Characters Left: ${passName.maximumLength - passName.length}`
        color: "#666666"
        font.pointSize: 12
        font.family: "Geist"
    }

    //Should popup with options of how to upload a scannable, for the lofi we can just assume camera use
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

        MouseArea {
            id: uploadClickable
            anchors.fill: parent

            Connections {
                target: uploadClickable
                function onClicked(mouse) {
                    createPass.uploadScannable()
                }
            }
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
            radius: saveAndPreview.radius
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
            function onClicked() {
                createPass.saveAndPreviewRequest()
            }
        }
    }

    //When clicked, creates a new input field
    //Need to enforice a field limit
    //Limit is listed somewhere in the google sheet
    //Use combo box for selecting field when we add new field, item should disappear from the combo box
    //Probably use listview with a listmodel
    //Dynamically add and remove things from the model when button is clicked
    //Set clip property to true

    //DELETE THIS IF REVERTING ADD FIELD STUFF
    // ListView to display description fields
    ListView {
        id: descriptionListView
        anchors.top: uploadZone.bottom
        anchors.leftMargin: 0
        anchors.topMargin: 10
        anchors.left: uploadZone.left
        width: uploadZone.width
        height: 20
        spacing: 10

        model: ListModel {
            id: listModel
            ListElement {
                text: "Description (required)"
            }
        }

        delegate: Item {
            width: ListView.view.width
            height: 20

            Rectangle {
                color: "white"
                anchors.fill: parent
                radius: 5

                TextInput {
                    color: "#000000"
                    text: model.text
                    font.pixelSize: 12
                    wrapMode: Text.NoWrap
                    font.weight: Font.Normal
                    font.family: "Geist"
                    anchors.fill: parent
                    anchors.leftMargin: 4
                    anchors.topMargin: 2
                }
            }
        }
    }

    //DELETE THIS IF REVERTING ADD FIELD STUFF
    Button {
        id: addNewField
        text: qsTr("+ Add Field")
        x: uploadZone.x
        y: descriptionListView.y + descriptionListView.height + 10
        height: 20
        enabled: listModel.count <= 3
        visible: listModel.count <= 3
        contentItem: Text {
            font.family: "Geist"
            font.pointSize: 12
            text: addNewField.text
            color: "white"
            anchors.fill: parent
        }
        background: Rectangle {
            color: "#d9d9d9"
            radius: 5
        }
        Connections {
            target: addNewField
            function onClicked() {
                listModel.append({
                                     "text": "Additional Field"
                                 })
                descriptionListView.height = descriptionListView.height + 30
            }
        }
    }

    //END OF CHANGE (PROLLY NOT GOOD CHANGE SO REVERT TO OLD VERSION FOR THIS FUNCTION)
    Button {
        id: backButton
        text: qsTr("< Back")
        width: 70
        height: width / 3
        checkable: false

        y: passName.y - 25
        x: passName.x

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
            // anchors.verticalCenter: parent
            // anchors.left: parent.left
        }

        Connections {
            target: backButton
            function onClicked() {
                createPass.back()
            }
        }
    }
}
