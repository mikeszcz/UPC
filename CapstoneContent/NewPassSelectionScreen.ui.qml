import QtMultimedia
import QtQuick
import QtQuick.Controls

Rectangle {
    id: newPassScreen
    color: "#d9d9d9"

    signal goToScan
    signal backToHome

    Text {
        id: title
        y: 41
        width: parent.width * 0.6
        height: width / 6
        color: "#000000"

        text: qsTr("New Pass")
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignHCenter

        anchors.horizontalCenterOffset: -32
        anchors.horizontalCenter: parent.horizontalCenter

        font.weight: Font.Bold
        font.pointSize: 18
        font.family: "Geist"
    }

    Text {
        x: 72
        y: 248
        width: 62
        height: 19
        color: "#000000"
        text: qsTr("Barcode")
        font.pixelSize: 12
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        wrapMode: Text.NoWrap
        font.weight: Font.Medium
        font.family: "Geist"
    }

    Text {
        x: 228
        y: 246
        width: 50
        height: 24
        color: "#000000"
        text: qsTr("QR Code")
        font.pixelSize: 12
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        wrapMode: Text.NoWrap
        font.weight: Font.Medium
        font.family: "Geist"
    }

    // Better way to have a selection like the figma sketch?
    //Add the small indicator rectangles for qr and barcode like in figma sketch
    Row {
        id: scanSelection
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 40
        anchors.rightMargin: 40
        anchors.topMargin: 87
        anchors.bottomMargin: 398

        Button {
            id: barcode
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.rightMargin: 150

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
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.leftMargin: 150

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

        anchors.horizontalCenterOffset: 0
        anchors.horizontalCenter: parent.horizontalCenter

        font.weight: Font.Normal
        font.pointSize: 6
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
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 40
        anchors.rightMargin: 40
        anchors.topMargin: 298
        anchors.bottomMargin: 152

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
            spacing: 7

            RadioButton {
                id: eventTicket
                text: qsTr("Event Ticket")
                font.pixelSize: 14
                font.family: "Geist"
                checked: true
                width: parent.width

                indicator: Rectangle {
                    implicitWidth: 14
                    implicitHeight: 14
                    radius: 15
                    anchors.verticalCenter: parent.verticalCenter
                    border.color: "black"

                    Rectangle {
                        width: 14
                        height: 14
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
                font.pixelSize: 14
                font.family: "Geist"
                width: parent.width

                indicator: Rectangle {
                    implicitWidth: 14
                    implicitHeight: 14
                    radius: 15
                    anchors.verticalCenter: parent.verticalCenter
                    border.color: "black"

                    Rectangle {
                        width: 14
                        height: 14
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
                font.pixelSize: 14
                font.family: "Gesit"
                width: parent.width

                indicator: Rectangle {
                    implicitWidth: 14
                    implicitHeight: 14
                    radius: 15
                    anchors.verticalCenter: parent.verticalCenter
                    border.color: "black"

                    Rectangle {
                        width: 14
                        height: 14
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
                font.pixelSize: 14
                font.family: "Geist"
                width: parent.width

                indicator: Rectangle {
                    implicitWidth: 14
                    implicitHeight: 14
                    radius: 15
                    anchors.verticalCenter: parent.verticalCenter
                    border.color: "black"

                    Rectangle {
                        width: 14
                        height: 14
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
                font.pixelSize: 14
                font.family: "Geist"
                width: parent.width

                indicator: Rectangle {
                    implicitWidth: 14
                    implicitHeight: 14
                    radius: 15
                    anchors.verticalCenter: parent.verticalCenter
                    border.color: "black"

                    Rectangle {
                        width: 14
                        height: 14
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

        y: copyright.y - 70
        anchors.horizontalCenter: parent.horizontalCenter

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
                newPassScreen.backToHome()
            }
        }
    }
}
