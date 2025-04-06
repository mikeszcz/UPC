import QtMultimedia
import QtQuick
import QtQuick.Controls

Flickable {
    id: createPass
    contentHeight: Math.max(descriptionListView.y + descriptionListView.height + saveAndPreview.height + copyright.height + 60, parent.height)
    boundsMovement: Flickable.StopAtBounds

    ScrollBar.vertical: ScrollBar{}

    signal saveAndPreviewRequest
    signal back
    signal uploadScannable

    Rectangle {
        anchors.fill: parent
        color: "#d9d9d9"
    }

    Button {
        id: backButton
        text: qsTr("< Back")
        width: parent.width * 0.4
        height: width / 8
        checkable: false

        y: 15
        anchors.left: parent.left
        anchors.leftMargin: 25

        background: Rectangle {
            color: "#d9d9d9"
        }

        contentItem: Text {
            font.family: "Geist"
            font.pointSize: backButton.height
            text: backButton.text
            color: "black"
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            anchors.fill: parent
        }

        Connections {
            target: backButton
            function onClicked() {
                createPass.back()
            }
        }
    }

    //Elipses when pass name goes pass a certain length (USE MAX CHAR LENGHT INSTEAD OF ELLIPSES)
    TextInput {
        id: passName
        anchors.top: backButton.bottom
        height: (parent.width * 0.6) / 4
        color: "#000000"
        text: qsTr("New Pass")
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        font.weight: Font.Bold
        font.pointSize: height / 2
        font.family: "Geist"
        clip: true
        focus: true
        maximumLength: parent.width / 17

        anchors.left: parent.left
        anchors.leftMargin: 25
        anchors.rightMargin: 10
    }

    Image {
        id: passIcon
        width: height
        height: passName.font.pixelSize
        anchors.left: passName.right
        anchors.leftMargin: 10
        anchors.verticalCenter: passName.verticalCenter
        source: "capstone/assets/_black_and_white_pencil_clip_art_png_download_2120721743_1.png"
        fillMode: Image.PreserveAspectFit
    }

    Text {
        id: charLimitText
        anchors.left: passName.left
        anchors.top: passName.bottom
        anchors.topMargin: -10
        width: parent.width * 0.4
        height: width / 4
        text: `Characters Left: ${passName.maximumLength - passName.length}`
        color: "#666666"
        font.pointSize: height / 3
        font.family: "Geist"
    }

    Rectangle {
        id: uploadZone
        color: "#d9d9d9"
        border.width: 5
        border.color: "black"
        anchors.top: charLimitText.bottom
        anchors.left: parent.left
        anchors.right: parent.right
        height: parent.width - 50
        anchors.leftMargin: 25
        anchors.rightMargin: 25

        Image {
            id: uploadButton
            anchors.fill: parent
            anchors.leftMargin: 100
            anchors.topMargin: 90
            anchors.bottomMargin: 110
            anchors.rightMargin: 100
            source: "capstone/assets/very_Basic_Upload_icon_1277321410_1.png"
            fillMode: Image.PreserveAspectFit
        }

        Text {
            color: "#000000"
            text: qsTr("Upload Scan Code")
            anchors.horizontalCenter: parent.horizontalCenter
            font.pixelSize: uploadButton.width / 8
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

    ListView {
        id: descriptionListView
        interactive: false
        anchors.top: uploadZone.bottom
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
            height: 25

            Rectangle {
                color: "white"
                anchors.fill: parent
                radius: 5

                TextInput {
                    color: "#000000"
                    text: model.text
                    font.pixelSize: 14
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

    Button {
        id: addNewField
        text: qsTr("+ Add Field")
        x: uploadZone.x
        y: descriptionListView.y + descriptionListView.height + 10
        height: 25
        enabled: listModel.count <= 4
        visible: listModel.count <= 4
        contentItem: Text {
            font.family: "Geist"
            font.pointSize: 14
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
                descriptionListView.height = descriptionListView.height + 35
            }
        }
    }

    RoundButton {
        id: saveAndPreview
        text: qsTr("Save & Preview")
        width: parent.width * 0.6
        height: width / 3
        checkable: false
        radius: 15

        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: createPass.contentHeight !== parent.height ? addNewField.bottom : copyright.top
        anchors.topMargin: createPass.contentHeight !== parent.height ? 40 : -(saveAndPreview.height)

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

    Text {
        id: copyright
        width: parent.width * 0.3
        height: width / 4
        color: "#898989"

        anchors.top: createPass.contentHeight !== parent.height ? saveAndPreview.bottom : parent.bottom
        anchors.topMargin: createPass.contentHeight !== parent.height ? 20 : -copyright.height

        text: qsTr("© 2025 EECS 497 Group 11")
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter

        anchors.horizontalCenter: parent.horizontalCenter

        font.weight: Font.Normal
        font.pointSize: height / 3
        font.family: "Geist"
    }
}
