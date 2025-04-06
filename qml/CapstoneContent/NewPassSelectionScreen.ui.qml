import QtMultimedia
import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Flickable {
    id: newPassScreen
    contentHeight: Math.max(selectionBox.y + selectionBox.height + newPass.height + copyright.height + 60, parent.height)
    boundsMovement: Flickable.StopAtBounds

    ScrollBar.vertical: ScrollBar{}

    signal goToScan
    signal backToHome

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
                newPassScreen.backToHome()
            }
        }
    }

    Text {
        id: title
        anchors.top: backButton.bottom
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

    RowLayout {
        id: scanSelection
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: title.bottom
        anchors.leftMargin: 25
        anchors.rightMargin: 25
        height: (parent.width - 50) / 1.9
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

                //possible just have a barcode filler image here
                Rectangle {
                    width: 50
                    height: 20
                    color: "#6B6B6B"
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    anchors.leftMargin: 20
                    anchors.rightMargin: 20
                    anchors.topMargin: 120
                    anchors.bottomMargin: 30
                }
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

                //possible just have a qrcode filler image here
                Rectangle {
                    width: 50
                    height: 20
                    color: "#6B6B6B"
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    anchors.leftMargin: 20
                    anchors.rightMargin: 20
                    anchors.topMargin: 30
                    anchors.bottomMargin: 30
                }
            }
            checkable: true
        }
    }

    ButtonGroup {
        buttons: scanSelection.children
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


    Rectangle {
        id: selectionBox
        color: "#cccccc"
        height: 275
        radius: 7
        border.color: "#000000"
        border.width: 1
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: barcodeText.bottom
        anchors.leftMargin: 25
        anchors.rightMargin: 25
        anchors.topMargin: 15

        Column {
            id: selectionGroup
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.leftMargin: 10

            RadioButton {
                id: eventTicket
                text: qsTr("Event Ticket")
                font.pixelSize: 20
                font.family: "Geist"
                font.weight: Font.Medium
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
                font.weight: Font.Medium
                width: parent.width

                indicator: Rectangle {
                    implicitWidth: boardingPass.font.pixelSize
                    implicitHeight: boardingPass.font.pixelSize
                    radius: 15
                    anchors.verticalCenter: parent.verticalCenter
                    border.color: "black"

                    Rectangle {
                        width: boardingPass.font.pixelSize
                        height: boardingPass.font.pixelSize
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
                font.weight: Font.Medium
                width: parent.width

                indicator: Rectangle {
                    implicitWidth: storeCard.font.pixelSize
                    implicitHeight: storeCard.font.pixelSize
                    radius: 15
                    anchors.verticalCenter: parent.verticalCenter
                    border.color: "black"

                    Rectangle {
                        width: storeCard.font.pixelSize
                        height: storeCard.font.pixelSize
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
                font.weight: Font.Medium
                width: parent.width

                indicator: Rectangle {
                    implicitWidth: coupon.font.pixelSize
                    implicitHeight: coupon.font.pixelSize
                    radius: 15
                    anchors.verticalCenter: parent.verticalCenter
                    border.color: "black"

                    Rectangle {
                        width: coupon.font.pixelSize
                        height: coupon.font.pixelSize
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
                font.weight: Font.Medium
                width: parent.width

                indicator: Rectangle {
                    implicitWidth: other.font.pixelSize
                    implicitHeight: other.font.pixelSize
                    radius: 15
                    anchors.verticalCenter: parent.verticalCenter
                    border.color: "black"

                    Rectangle {
                        width: other.font.pixelSize
                        height: other.font.pixelSize
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

        anchors.top: newPassScreen.contentHeight !== parent.height ? selectionBox.bottom : copyright.top
        anchors.topMargin: newPassScreen.contentHeight !== parent.height ? 40 : -(newPass.height)

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

    Text {
        id: copyright
        width: parent.width * 0.3
        height: width / 4
        color: "#898989"

        anchors.top: newPassScreen.contentHeight !== parent.height ? newPass.bottom : parent.bottom
        anchors.topMargin: newPassScreen.contentHeight !== parent.height ? 20 : -copyright.height

        text: qsTr("© 2025 EECS 497 Group 11")
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter

        anchors.horizontalCenter: parent.horizontalCenter

        font.weight: Font.Normal
        font.pointSize: height / 3
        font.family: "Geist"
    }
}
