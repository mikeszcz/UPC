/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/

import QtQuick
import QtQuick.Controls
import UPC

Popup {
    id: permissionPopup
    anchors.centerIn: parent

    Rectangle {
        color: "#d9d9d9"
        anchors.fill: parent

        Column {
            anchors.centerIn: parent
            Text {
                id: permissionText
                text: Permissions.reason
            }
            Button {
                id: closeButton
                text: qsTr("Close")
                Connections {
                    target: closeButton
                    function onClicked() {

                        permissionPopup.close()
                    }
                }
            }
        }
    }
}
