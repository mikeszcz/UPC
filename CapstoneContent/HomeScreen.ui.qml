import QtMultimedia
import QtQuick
import QtQuick.Controls

Rectangle {
    id: homescreen
    color: "#000000"

    signal generatePassRequested()

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
        font.weight: Font.Black
        font.pointSize: 16
        font.family: "Verdana"

        Connections {
            target: openCamera

            onClicked: homescreen.generatePassRequested()
        }
    }



    Text {
        id: title
        y: parent.top
        width: parent.width * 0.8
        height: width / 4
        color: "#ffffff"

        text: qsTr("Universal Pass Generator")
        font.pixelSize: Math.min(width, height) * 0.25
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter

        anchors.horizontalCenterOffset: 0
        anchors.horizontalCenter: parent.horizontalCenter

        font.weight: Font.Black
        font.pointSize: 16
        font.family: "Verdana"
    }
}
