/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/

import QtQuick
import QtQuick.Controls
import QtMultimedia

// Need to get camera working for tomorrow

Popup {
    id: cameraPopup
    anchors.centerIn: parent

    Rectangle {
        color: "#d9d9d9"
        anchors.fill: parent
    }

    CaptureSession {
        camera: Camera {
            id: camera
            focusMode: Camera.FocusModeAutoNear
            cameraDevice: devices.defaultVideoInput
        }
        videoOutput: videoOutput

        //Add a screen capture for scanning qr and barcode
    }

    MediaDevices {
        id: devices
    }

    VideoOutput {
        id: videoOutput
        anchors.fill: parent
    }

    Connections {
        target: cameraPopup

        function onOpened() {

            camera.start()
        }
    }
}
