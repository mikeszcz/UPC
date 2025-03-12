// Copyright (C) 2021 The Qt Company Ltd.
// SPDX-License-Identifier: LicenseRef-Qt-Commercial OR GPL-3.0-only

import QtQuick
import Capstone
import QtQuick.Controls 6.7

Window {
    width: Constants.width
    height: Constants.height

    visible: true
    title: "Capstone"

    // //ADDED THE FUNCTION ADDNEWDESCRIPTION AND LISTMODEL FOR THE DESCRIPTION STUFF IN
    // // NewPassScanScreen.ui.qml but don't think it works
    // //DELETE THIS IF REVERTING ADD FIELD STUFF
    // // ListModel to store description fields
    // ListModel {
    //     id: descriptionModel
    // }
    // //DELETE THIS IF REVERTING ADD FIELD STUFF
    // // Function to add a new description field
    // function addNewDescriptionField() {
    //     if (descriptionModel.count < 3) {
    //         descriptionModel.append({}); // Add a new empty field
    //     }
    // }

    StackView {
        id: stackView
        anchors.fill: parent

        initialItem: homescreenComponent
    }

    Component {
        id: homescreenComponent
        HomeScreen {
            id: homescreen
            anchors.fill: parent

            onNewPassRequested: stackView.push(newpassselectionscreenComponent)
            onOpenSavedRequested: stackView.push(savedpassesscreenComponent)
        }
    }

    Component {
        id: newpassselectionscreenComponent
        NewPassSelectionScreen {
            id: newpassselectionscreen
            anchors.fill: parent

            onBackToHome: stackView.pop()
            onGoToScan: stackView.push(newpassscreenComponent)
        }
    }

    Component {
        id: newpassscreenComponent
        NewPassScanScreen {
            id: newpassscanscreen
            anchors.fill: parent

            onUploadScannable: camerapopup.open()
            onSaveAndPreviewRequest: stackView.push(previewscreenComponent)
            onBack: stackView.pop()
        }
    }

    Component {
        id: previewscreenComponent
        PreviewScreen {
            id: previewscreen
            anchors.fill: parent

            onBack: stackView.pop()
            onExportPass: stackView.push(passsavedscreenComponent)
        }
    }

    Component {
        id: savedpassesscreenComponent
        SavedPassesScreen {
            id: savedpassesscreen
            anchors.fill: parent

            onBack: stackView.pop()
            onOpenPreview: stackView.push()(previewscreenComponent)
        }
    }

    Component {
        id: passsavedscreenComponent
        PassSavedScreen {
            id: passsavedscreen
            anchors.fill: parent

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
                passinfo.open()
            }
        }
    }
}
