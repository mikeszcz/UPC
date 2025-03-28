import QtMultimedia
import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Rectangle {
    id: newPassScreen
    color: "#d9d9d9"

    signal goToScan
    signal backToHome

    Text {
        id: title
        y: 50
        width: parent.width * 0.6
        height: width / 4
        color: "#000000"

        text: qsTr("New Pass")
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter

        anchors.left: parent.left
        anchors.leftMargin: 25

        font.weight: Font.Bold
        font.pointSize: height / 2
        font.family: "Geist"
    }

    Text {
        id: barcodeText
        width: barcode.width
        height: width / 4.3
        color: "#000000"
        text: qsTr("Barcode")
        font.pixelSize: height / 2
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter

        anchors.top: scanSelection.bottom
        anchors.left: parent.left
        anchors.leftMargin: 25

        wrapMode: Text.NoWrap
        font.weight: Font.Medium
        font.family: "Geist"
    }

    Text {
        width: qrcode.width
        height: width / 4.3
        color: "#000000"
        text: qsTr("QR Code")
        font.pixelSize: height / 2
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter

        anchors.top: scanSelection.bottom
        anchors.right: parent.right
        anchors.rightMargin: 25

        wrapMode: Text.NoWrap
        font.weight: Font.Medium
        font.family: "Geist"
    }

    // Better way to have a selection like the figma sketch?
    //Add the small indicator rectangles for qr and barcode like in figma sketch
    RowLayout {
        id: scanSelection
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: title.bottom
        anchors.leftMargin: 25
        anchors.rightMargin: 25
        height: parent.height * 0.23
        spacing: 10

        Button {
            id: barcode
            Layout.fillWidth: true
            Layout.fillHeight: true

            background: Rectangle {
                anchors.fill: parent
                color: "#cccccc"
                radius: 5
                border.color: "#898989"
                border.width: barcode.checked ? 2 : 1
            }
            checkable: true
            checked: true
        }

        Button {
            id: qrcode

            Layout.fillWidth: true
            Layout.fillHeight: true

            background: Rectangle {
                anchors.fill: parent
                color: "#cccccc"
                radius: 5
                border.color: "#898989"
                border.width: qrcode.checked ? 2 : 1
            }
            checkable: true
        }
    }

    ButtonGroup {
        buttons: scanSelection.children
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

    Rectangle {
        id: selectionBox
        color: "#cccccc"
        radius: 7
        border.color: "#000000"
        border.width: 1
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: barcodeText.bottom
        anchors.bottom: newPass.top
        anchors.leftMargin: 25
        anchors.rightMargin: 25
        anchors.topMargin: 15
        anchors.bottomMargin: 15

        Column {
            id: selectionGroup
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.leftMargin: 10
            anchors.rightMargin: 10
            anchors.topMargin: 10
            anchors.bottomMargin: 10
            spacing: eventTicket.font.pixelSize / 2

            RadioButton {
                id: eventTicket
                text: qsTr("Event Ticket")
                font.pixelSize: selectionBox.height / 17
                font.family: "Geist"
                checked: true
                width: parent.width

                indicator: Rectangle {
                    implicitWidth: eventTicket.font.pixelSize
                    implicitHeight: eventTicket.font.pixelSize
                    radius: 15
                    anchors.verticalCenter: parent.verticalCenter
                    border.color: "black"

                    Rectangle {
                        width: eventTicket.font.pixelSize
                        height: eventTicket.font.pixelSize
                        anchors.centerIn: parent
                        radius: 15
                        visible: eventTicket.checked
                        color: "black"
                    }
                }
            }

            RadioButton {
                id: boardingPass
                text: qsTr("Boarding Pass")
                font.pixelSize: eventTicket.font.pixelSize
                font.family: "Geist"
                width: parent.width

                indicator: Rectangle {
                    implicitWidth: eventTicket.font.pixelSize
                    implicitHeight: eventTicket.font.pixelSize
                    radius: 15
                    anchors.verticalCenter: parent.verticalCenter
                    border.color: "black"

                    Rectangle {
                        width: eventTicket.font.pixelSize
                        height: eventTicket.font.pixelSize
                        anchors.centerIn: parent
                        radius: 15
                        visible: boardingPass.checked
                        color: "black"
                    }
                }
            }

            RadioButton {
                id: storeCard
                text: qsTr("Store Card")
                font.pixelSize: eventTicket.font.pixelSize
                font.family: "Gesit"
                width: parent.width

                indicator: Rectangle {
                    implicitWidth: eventTicket.font.pixelSize
                    implicitHeight: eventTicket.font.pixelSize
                    radius: 15
                    anchors.verticalCenter: parent.verticalCenter
                    border.color: "black"

                    Rectangle {
                        width: eventTicket.font.pixelSize
                        height: eventTicket.font.pixelSize
                        anchors.centerIn: parent
                        radius: 15
                        visible: storeCard.checked
                        color: "black"
                    }
                }
            }

            RadioButton {
                id: coupon
                text: qsTr("Coupon")
                font.pixelSize: eventTicket.font.pixelSize
                font.family: "Geist"
                width: parent.width

                indicator: Rectangle {
                    implicitWidth: eventTicket.font.pixelSize
                    implicitHeight: eventTicket.font.pixelSize
                    radius: 15
                    anchors.verticalCenter: parent.verticalCenter
                    border.color: "black"

                    Rectangle {
                        width: eventTicket.font.pixelSize
                        height: eventTicket.font.pixelSize
                        anchors.centerIn: parent
                        radius: 15
                        visible: coupon.checked
                        color: "black"
                    }
                }
            }

            RadioButton {
                id: other
                text: qsTr("Other")
                font.pixelSize: eventTicket.font.pixelSize
                font.family: "Geist"
                width: parent.width

                indicator: Rectangle {
                    implicitWidth: eventTicket.font.pixelSize
                    implicitHeight: eventTicket.font.pixelSize
                    radius: 15
                    anchors.verticalCenter: parent.verticalCenter
                    border.color: "black"

                    Rectangle {
                        width: eventTicket.font.pixelSize
                        height: eventTicket.font.pixelSize
                        anchors.centerIn: parent
                        radius: 15
                        visible: other.checked
                        color: "black"
                    }
                }
            }
        }
    }

    RoundButton {
        id: newPass
        text: qsTr("Next")
        width: parent.width * 0.6
        height: width / 3
        checkable: false
        radius: 15

        anchors.horizontalCenter: parent.horizontalCenter

        anchors.bottom: copyright.top
        anchors.bottomMargin: 15

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
            function onClicked() {
                newPassScreen.goToScan()
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
                newPassScreen.backToHome()
            }
        }
    }
}
