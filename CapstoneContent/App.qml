// Copyright (C) 2021 The Qt Company Ltd.
// SPDX-License-Identifier: LicenseRef-Qt-Commercial OR GPL-3.0-only

import QtQuick
import Capstone

Window {
    width: Constants.width
    height: Constants.height

    visible: true
    title: "Capstone"

    HomeScreen {
        id: homescreen
        anchors.fill: parent

        onNewPassRequested: newpassscreen.open()
        onOpenSavedRequested: camerapopup.open()
    }

    NewPassScanScreen {
        id: newpassscanscreen
        anchors.fill: parent
    }

    NewPassSelectionScreen {
        id: newpassselectionscreen
        anchors.fill: parent
    }

    PassSavedScreen {
        id: passsavedscreen
        anchors.fill: parent
    }

    PreviewScreen {
        id: previewscreen
        anchors.fill: parent
    }

    SavedPassesScreen {
        id: savedpassesscreen
        anchors.fill: parent
    }

    // CameraPopup {
    //     id: camerapopup
    //     width: parent.width
    //     height: parent.height

    //     onOpened: clockTimer.start()

    //     // remove this once QR scanning is implemented
    //     Timer {
    //         id: clockTimer
    //         interval: 2000
    //         repeat: false
    //         running: false

    //         onTriggered: {
    //             camerapopup.close()
    //             passinfo.open()
    //         }
    //     }
    // }
}


/*##^##
Designer {
    D{i:0}D{i:2;invisible:true}D{i:3;invisible:true}D{i:4;invisible:true}D{i:5;invisible:true}
D{i:6;invisible:true}
}
##^##*/
