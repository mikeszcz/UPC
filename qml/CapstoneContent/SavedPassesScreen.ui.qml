import QtMultimedia
import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Flickable {
    id: savedPassScreen
    contentHeight: Math.max(gridView.y + gridView.height + copyright.height + 20, parent.height)
    boundsMovement: Flickable.StopAtBounds

    ScrollBar.vertical: ScrollBar{}

    signal back
    signal openPreview

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
                savedPassScreen.back()
            }
        }
    }

    Text {
        id: title
        anchors.top: backButton.bottom
        width: parent.width * 0.6
        height: width / 4
        color: "#000000"

        text: qsTr("Saved Passes")
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter

        anchors.left: parent.left
        anchors.leftMargin: 25

        font.weight: Font.Bold
        font.pointSize: height / 2
        font.family: "Geist"
    }

    GridLayout {
        id: gridView

        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: title.bottom
        anchors.leftMargin: 25
        anchors.rightMargin: 25
        columnSpacing: 20
        rowSpacing: 20
        columns: 2

        //This will need to reflect passes that are stored
        Button {
            id: button1
            Layout.fillWidth: true
            Layout.minimumHeight: (savedPassScreen.width - 50) / 1.9
            Layout.maximumHeight: (savedPassScreen.width - 50) / 1.9

            background: Rectangle {
                anchors.fill: parent
                color: "#cccccc"
                radius: 5
                border.color: "#898989"
            }

            Connections {
                target: button1
                function onClicked() {
                    savedPassScreen.openPreview()
                }
            }
        }

        Button {
            id: button2
            Layout.fillWidth: true
            Layout.minimumHeight: (savedPassScreen.width - 50) / 1.9
            Layout.maximumHeight: (savedPassScreen.width - 50) / 1.9

            background: Rectangle {
                anchors.fill: parent
                color: "#cccccc"
                radius: 5
                border.color: "#898989"
            }

            Connections {
                target: button2
                function onClicked() {
                    savedPassScreen.openPreview()
                }
            }
        }

        Button {
            id: button3
            Layout.fillWidth: true
            Layout.minimumHeight: (savedPassScreen.width - 50) / 1.9
            Layout.maximumHeight: (savedPassScreen.width - 50) / 1.9

            background: Rectangle {
                anchors.fill: parent
                color: "#cccccc"
                radius: 5
                border.color: "#898989"
            }

            Connections {
                target: button3
                function onClicked() {
                    savedPassScreen.openPreview()
                }
            }
        }

        Button {
            id: button4
            Layout.fillWidth: true
            Layout.minimumHeight: (savedPassScreen.width - 50) / 1.9
            Layout.maximumHeight: (savedPassScreen.width - 50) / 1.9

            background: Rectangle {
                anchors.fill: parent
                color: "#cccccc"
                radius: 5
                border.color: "#898989"
            }

            Connections {
                target: button4
                function onClicked() {
                    savedPassScreen.openPreview()
                }
            }
        }

        Button {
            id: button5
            Layout.fillWidth: true
            Layout.minimumHeight: (savedPassScreen.width - 50) / 1.9
            Layout.maximumHeight: (savedPassScreen.width - 50) / 1.9

            background: Rectangle {
                anchors.fill: parent
                color: "#cccccc"
                radius: 5
                border.color: "#898989"
            }

            Connections {
                target: button5
                function onClicked() {
                    savedPassScreen.openPreview()
                }
            }
        }

        Button {
            id: button6
            Layout.fillWidth: true
            Layout.minimumHeight: (savedPassScreen.width - 50) / 1.9
            Layout.maximumHeight: (savedPassScreen.width - 50) / 1.9

            background: Rectangle {
                anchors.fill: parent
                color: "#cccccc"
                radius: 5
                border.color: "#898989"
            }

            Connections {
                target: button6
                function onClicked() {
                    savedPassScreen.openPreview()
                }
            }
        }

        Button {
            id: button7
            Layout.fillWidth: true
            Layout.minimumHeight: (savedPassScreen.width - 50) / 1.9
            Layout.maximumHeight: (savedPassScreen.width - 50) / 1.9

            background: Rectangle {
                anchors.fill: parent
                color: "#cccccc"
                radius: 5
                border.color: "#898989"
            }

            Connections {
                target: button7
                function onClicked() {
                    savedPassScreen.openPreview()
                }
            }
        }

        Button {
            id: button8
            Layout.fillWidth: true
            Layout.minimumHeight: (savedPassScreen.width - 50) / 1.9
            Layout.maximumHeight: (savedPassScreen.width - 50) / 1.9

            background: Rectangle {
                anchors.fill: parent
                color: "#cccccc"
                radius: 5
                border.color: "#898989"
            }

            Connections {
                target: button8
                function onClicked() {
                    savedPassScreen.openPreview()
                }
            }
        }
        Button {
            id: button9
            Layout.fillWidth: true
            Layout.minimumHeight: (savedPassScreen.width - 50) / 1.9
            Layout.maximumHeight: (savedPassScreen.width - 50) / 1.9

            background: Rectangle {
                anchors.fill: parent
                color: "#cccccc"
                radius: 5
                border.color: "#898989"
            }

            Connections {
                target: button9
                function onClicked() {
                    savedPassScreen.openPreview()
                }
            }
        }

        Button {
            id: button10
            Layout.fillWidth: true
            Layout.minimumHeight: (savedPassScreen.width - 50) / 1.9
            Layout.maximumHeight: (savedPassScreen.width - 50) / 1.9

            background: Rectangle {
                anchors.fill: parent
                color: "#cccccc"
                radius: 5
                border.color: "#898989"
            }

            Connections {
                target: button10
                function onClicked() {
                    savedPassScreen.openPreview()
                }
            }
        }

        Button {
            id: button11
            Layout.fillWidth: true
            Layout.minimumHeight: (savedPassScreen.width - 50) / 1.9
            Layout.maximumHeight: (savedPassScreen.width - 50) / 1.9

            background: Rectangle {
                anchors.fill: parent
                color: "#cccccc"
                radius: 5
                border.color: "#898989"
            }

            Connections {
                target: button11
                function onClicked() {
                    savedPassScreen.openPreview()
                }
            }
        }
    }


    ButtonGroup {
        buttons: gridView.children
    }

    Text {
        id: copyright
        width: parent.width * 0.3
        height: width / 4
        color: "#898989"

        anchors.top: savedPassScreen.contentHeight !== parent.height ? gridView.bottom : parent.bottom
        anchors.topMargin: savedPassScreen.contentHeight !== parent.height ? 20 : -copyright.height

        text: qsTr("© 2025 EECS 497 Group 11")
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter

        anchors.horizontalCenter: parent.horizontalCenter

        font.weight: Font.Normal
        font.pointSize: height / 3
        font.family: "Geist"
    }
}
