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

        onGeneratePassRequested: camerapopup.open()

        onNewPassRequested: newpassscreen.open()
        onOpenSavedRequested: camerapopup.open()
    }

    NewPassScreen {
        id: newpassscreen
        width: parent.width
        height: parent.height
    }

    CameraPopup {
        id: camerapopup
        width: parent.width
        height: parent.height

        onOpened: clockTimer.start()

        // remove this once QR scanning is implemented
        Timer {
            id: clockTimer
            interval: 2000
            repeat: false
            running: false

            onTriggered: {
                camerapopup.close()
                passinfo.open()
            }
        }
    }

    PassInformation {
        id: passinfo
        width: parent.width
        height: parent.height

        onExportRequested: passinfo.close()
    }

}

