import QtMultimedia
import QtQuick
import QtQuick.Controls

Popup {
    id: newPassScreen

    //color: "#e4e4e4"
    Text {
        id: title
        y: 50
        width: parent.width * 0.6
        height: width / 4
        color: "#000000"

        text: qsTr("New Pass")
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
