import QtMultimedia
import QtQuick
import QtQuick.Controls

//Possibly just make this a popup, go back to homescreen after this is done
//Add a timer in the app.qml file for this page
Rectangle {
    id: newPassScreen
    color: "#d9d9d9"

    Text {
        id: txt
        color: "#000000"
        text: qsTr("Pass Saved!")
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        wrapMode: Text.NoWrap
        font.weight: Font.Bold
        font.family: "Geist"
        font.pixelSize: 38

        anchors.horizontalCenter: parent.horizontalCenter
        y: parent.height / 2 - 50
    }

    Image {
        y: txt.y + txt.height + 25
        anchors.horizontalCenter: parent.horizontalCenter
        source: "capstone/assets/element6.png"
        width: 60
        height: 60
    }
}
