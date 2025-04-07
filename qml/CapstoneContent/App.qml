// Copyright (C) 2021 The Qt Company Ltd.
// SPDX-License-Identifier: LicenseRef-Qt-Commercial OR GPL-3.0-only

import QtQuick
import UPC
import QtQuick.Controls 6.7

Window {
    width: 360
    height: 640

    visible: true
    title: "Capstone"

    StackView {
        id: stackView
        anchors.fill: parent

        initialItem: homescreenComponent
    }

    Component {
        id: homescreenComponent
        HomeScreen {
            id: homescreen

            onNewPassRequested: stackView.push(newpassselectionscreenComponent)
            onOpenSavedRequested: stackView.push(savedpassesscreenComponent)
            onTestScreenRequested: stackView.push(testScreenComponent)
        }
    }

    Component {
        id: newpassselectionscreenComponent
        NewPassSelectionScreen {
            id: newpassselectionscreen

            onBackToHome: stackView.pop()
            onGoToScan: stackView.push(newpassscreenComponent)
        }
    }

    Component {
        id: newpassscreenComponent
        NewPassScanScreen {
            id: newpassscanscreen

            onUploadScannable: camerapopup.open()
            onSaveAndPreviewRequest: stackView.push(previewscreenComponent)
            onBack: stackView.pop()
        }
    }

    Component {
        id: previewscreenComponent
        PreviewScreen {
            id: previewscreen

            onBack: stackView.pop()
            onExportPass: stackView.push(passsavedscreenComponent)
        }
    }

    Component {
        id: savedpassesscreenComponent
        SavedPassesScreen {
            id: savedpassesscreen

            onBack: stackView.pop()
            onOpenPreview: stackView.push(previewscreenComponent)
        }
    }

    Component {
        id: passsavedscreenComponent
        PassSavedScreen {
            id: passsavedscreen

            Timer {
                id: clockTimer
                interval: 2000
                repeat: false
                running: true

                onTriggered: {
                    stackView.popToIndex(0)
                }
            }
        }
    }

    CameraPopup {
        id: camerapopup
        width: parent.width
        height: parent.height

        onOpened: clockTimer.start()

        // Remove this once QR scanning is implemented
        Timer {
            id: clockTimer
            interval: 2000
            repeat: false
            running: false

            onTriggered: {
                camerapopup.close()
                // passinfo.open()
            }
        }
    }

    PermissionPopup {
        id: permissionpopup

        width: parent.width - 20
        height: parent.height / 2

        Connections {
            target: Permissions
            function onPermissionDenied(reason) {
                permissionpopup.open()
            }
        }
    }
}
