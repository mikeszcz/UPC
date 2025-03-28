import QtQuick
import QtQuick.Controls
import QtQuick.Shapes 1.15
import QtQuick.Studio.Components 1.0

Rectangle {
    id: capstone
    width: 7143
    height: 5781
    color: "transparent"
    property alias couponText: coupon.text
    property alias saved_PassesText: saved_Passes.text
    property alias add_Field1Text: add_Field1.text
    property alias event_TicketText: event_Ticket.text
    property alias add_FieldText: add_Field.text
    property alias eECS_497_Group_12Text: eECS_497_Group_12.text
    property alias eECS_497_Group_13Text: eECS_497_Group_13.text
    property alias michigan_vs_Ohio_State_HockeyText: michigan_vs_Ohio_State_Hockey.text
    property alias save_Preview1Text: save_Preview1.text
    property alias pass_Saved_Text: pass_Saved_.text
    property alias description_Required_Text: description_Required_.text
    property alias new_Pass1Text: new_Pass1.text
    property alias save_Preview2Text: save_Preview2.text
    property alias otherText: other.text
    property alias add_Field3Text: add_Field3.text
    property alias new_Pass3Text: new_Pass3.text
    property alias nextText: next.text
    property alias upload_Scan_CodeText: upload_Scan_Code.text
    property alias import_from_Camera_RollText: import_from_Camera_Roll.text
    property alias element2Text: element2.text
    property alias jeff_s_Pass1Text: jeff_s_Pass1.text
    property alias save_PreviewText: save_Preview.text
    property alias import_from_FilesText: import_from_Files.text
    property alias barcodeText: barcode.text
    property alias qR_codeText: qR_code.text
    property alias element1Text: element1.text
    property alias saved_Passes1Text: saved_Passes1.text
    property alias add_Field2Text: add_Field2.text
    property alias element4Text: element4.text
    property alias elementText: element.text
    property alias boarding_PassText: boarding_Pass.text
    property alias save_Preview3Text: save_Preview3.text
    property alias use_CameraText: use_Camera.text
    property alias element3Text: element3.text
    property alias jeff_s_PassText: jeff_s_Pass.text
    property alias about_LegalText: about_Legal.text
    property alias description_Required_1Text: description_Required_1.text
    property alias new_Pass4Text: new_Pass4.text
    property alias new_PassText: new_Pass.text
    property alias pass_GeneratorText: pass_Generator.text
    property alias store_CardText: store_Card.text
    property alias michigan_vs_Ohio_State_Hockey1Text: michigan_vs_Ohio_State_Hockey1.text
    property alias eECS_497_Group_11Text: eECS_497_Group_11.text

    Rectangle {
        id: rectangle_1
        color: "#d9d9d9"
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.rightMargin: 5973
        anchors.topMargin: 2973
        anchors.bottomMargin: 276
    }

    Text {
        id: jeff_s_Pass
        color: "#000000"
        text: qsTr("Jeff’s Pass")
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 85
        anchors.rightMargin: 6537
        anchors.topMargin: 3212
        anchors.bottomMargin: 2444
        font.pixelSize: 96
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignTop
        wrapMode: Text.NoWrap
        font.weight: Font.Bold
        font.family: "Geist"
    }

    Image {
        id: example_QR_code_1418360
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 105
        anchors.rightMargin: 6078
        anchors.topMargin: 3390
        anchors.bottomMargin: 1431
        source: "assets/example_QR_code_1418360_1.png"
    }

    Rectangle {
        id: rectangle_2
        color: "#d9d9d9"
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 4492
        anchors.rightMargin: 1481
        anchors.bottomMargin: 3249
    }

    Text {
        id: add_Field
        color: "#ffffff"
        text: qsTr("Add Field")
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 4663
        anchors.rightMargin: 2232
        anchors.topMargin: 1594
        anchors.bottomMargin: 4114
        font.pixelSize: 56
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignTop
        wrapMode: Text.NoWrap
        font.weight: Font.Medium
        font.family: "Geist"
    }

    Text {
        id: add_Field1
        color: "#ffffff"
        text: qsTr("Add Field")
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 188
        anchors.rightMargin: 6707
        anchors.topMargin: 4567
        anchors.bottomMargin: 1141
        font.pixelSize: 56
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignTop
        wrapMode: Text.NoWrap
        font.weight: Font.Medium
        font.family: "Geist"
    }

    Text {
        id: new_Pass
        color: "#000000"
        text: qsTr("New Pass")
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 4569
        anchors.rightMargin: 2116
        anchors.topMargin: 239
        anchors.bottomMargin: 5417
        font.pixelSize: 96
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignTop
        wrapMode: Text.NoWrap
        font.weight: Font.Bold
        font.family: "Geist"
    }

    Rectangle {
        id: rectangle_3
        color: "#d9d9d9"
        border.color: "#000000"
        border.width: 20
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 4569
        anchors.rightMargin: 1574
        anchors.topMargin: 397
        anchors.bottomMargin: 4384
    }

    Rectangle {
        id: rectangle_8
        color: "#00ffffff"
        border.color: "#000000"
        border.width: 20
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 85
        anchors.rightMargin: 6058
        anchors.topMargin: 3370
        anchors.bottomMargin: 1411
    }

    Rectangle {
        id: rectangle_7
        color: "#ffffff"
        radius: 20
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 4569
        anchors.rightMargin: 1574
        anchors.topMargin: 1459
        anchors.bottomMargin: 4225
    }

    Rectangle {
        id: rectangle_9
        color: "#ffffff"
        radius: 20
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 85
        anchors.rightMargin: 6058
        anchors.topMargin: 4432
        anchors.bottomMargin: 1252
    }

    Text {
        id: description_Required_
        color: "#cccccc"
        text: qsTr("Description (Required)")
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 4608
        anchors.rightMargin: 2046
        anchors.topMargin: 1477
        anchors.bottomMargin: 4242
        font.pixelSize: 48
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignTop
        wrapMode: Text.NoWrap
        font.weight: Font.Normal
        font.family: "Geist"
    }

    Text {
        id: michigan_vs_Ohio_State_Hockey
        color: "#000000"
        text: qsTr("Michigan vs. Ohio State Hockey")
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 121
        anchors.rightMargin: 6315
        anchors.topMargin: 4450
        anchors.bottomMargin: 1269
        font.pixelSize: 48
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignTop
        wrapMode: Text.NoWrap
        font.weight: Font.Medium
        font.family: "Geist"
    }

    Text {
        id: element
        color: "#ffffff"
        text: qsTr("+")
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 4569
        anchors.rightMargin: 2487
        anchors.topMargin: 1539
        anchors.bottomMargin: 4105
        font.pixelSize: 128
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignTop
        wrapMode: Text.Wrap
        font.weight: Font.Normal
        font.family: "Geist"
    }

    Text {
        id: element1
        color: "#ffffff"
        text: qsTr("+")
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 78
        anchors.rightMargin: 6978
        anchors.topMargin: 4512
        anchors.bottomMargin: 1132
        font.pixelSize: 128
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignTop
        wrapMode: Text.Wrap
        font.weight: Font.Normal
        font.family: "Geist"
    }

    Rectangle {
        id: rectangle_10
        color: "#d9d9d9"
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 1477
        anchors.rightMargin: 4496
        anchors.topMargin: 2973
        anchors.bottomMargin: 276
    }

    Text {
        id: jeff_s_Pass1
        color: "#000000"
        text: qsTr("Jeff’s Pass")
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 1562
        anchors.rightMargin: 5060
        anchors.topMargin: 3212
        anchors.bottomMargin: 2444
        font.pixelSize: 96
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignTop
        wrapMode: Text.NoWrap
        font.weight: Font.Bold
        font.family: "Geist"
    }

    Image {
        id: example_QR_code_1418361
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 1582
        anchors.rightMargin: 4601
        anchors.topMargin: 3390
        anchors.bottomMargin: 1431
        source: "assets/example_QR_code_1418361.png"
    }

    Text {
        id: add_Field2
        color: "#ffffff"
        text: qsTr("Add Field")
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 1665
        anchors.rightMargin: 5230
        anchors.topMargin: 4678
        anchors.bottomMargin: 1030
        font.pixelSize: 56
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignTop
        wrapMode: Text.NoWrap
        font.weight: Font.Medium
        font.family: "Geist"
    }

    Rectangle {
        id: rectangle_11
        color: "#00ffffff"
        border.color: "#000000"
        border.width: 20
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 1562
        anchors.rightMargin: 4581
        anchors.topMargin: 3370
        anchors.bottomMargin: 1411
    }

    Rectangle {
        id: rectangle_12
        color: "#ffffff"
        radius: 20
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 1562
        anchors.rightMargin: 4581
        anchors.topMargin: 4432
        anchors.bottomMargin: 1252
    }

    Rectangle {
        id: rectangle_13
        color: "#ffffff"
        radius: 20
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 1562
        anchors.rightMargin: 4581
        anchors.topMargin: 4555
        anchors.bottomMargin: 1129
    }

    Text {
        id: element2
        color: "#000000"
        text: qsTr("02/24/25")
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 1605
        anchors.rightMargin: 5307
        anchors.topMargin: 4570
        anchors.bottomMargin: 1149
        font.pixelSize: 48
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignTop
        wrapMode: Text.NoWrap
        font.weight: Font.Medium
        font.family: "Geist"
    }

    Text {
        id: element3
        color: "#ffffff"
        text: qsTr("+")
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 1555
        anchors.rightMargin: 5501
        anchors.topMargin: 4623
        anchors.bottomMargin: 1021
        font.pixelSize: 128
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignTop
        wrapMode: Text.Wrap
        font.weight: Font.Normal
        font.family: "Geist"
    }

    Image {
        id: very_Basic_Upload_icon_1277321410_1
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.leftMargin: 4949
        anchors.rightMargin: 1938
        anchors.topMargin: 744
        source: "assets/very_Basic_Upload_icon_1277321410_1.png"
    }

    Rectangle {
        id: rectangle_15
        color: "#d9d9d9"
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 5949
        anchors.rightMargin: 24
        anchors.bottomMargin: 3249
    }

    Text {
        id: add_Field3
        color: "#ffffff"
        text: qsTr("Add Field")
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 6120
        anchors.rightMargin: 775
        anchors.topMargin: 1594
        anchors.bottomMargin: 4114
        font.pixelSize: 56
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignTop
        wrapMode: Text.NoWrap
        font.weight: Font.Medium
        font.family: "Geist"
    }

    Rectangle {
        id: rectangle_16
        color: "#d9d9d9"
        border.color: "#000000"
        border.width: 20
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 6026
        anchors.rightMargin: 117
        anchors.topMargin: 397
        anchors.bottomMargin: 4384
    }

    Rectangle {
        id: rectangle_17
        color: "#ffffff"
        radius: 20
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 6026
        anchors.rightMargin: 117
        anchors.topMargin: 1459
        anchors.bottomMargin: 4225
    }

    Text {
        id: element4
        color: "#ffffff"
        text: qsTr("+")
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 6026
        anchors.rightMargin: 1030
        anchors.topMargin: 1539
        anchors.bottomMargin: 4105
        font.pixelSize: 128
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignTop
        wrapMode: Text.Wrap
        font.weight: Font.Normal
        font.family: "Geist"
    }

    Rectangle {
        id: rectangle_18
        color: "#898989"
        radius: 20
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 6189
        anchors.rightMargin: 280
        anchors.topMargin: 761
        anchors.bottomMargin: 4748
    }

    Text {
        id: import_from_Camera_Roll
        color: "#ffffff"
        text: qsTr("Import from Camera Roll")
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 6292
        anchors.rightMargin: 312
        anchors.topMargin: 956
        anchors.bottomMargin: 4763
        font.pixelSize: 48
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignTop
        wrapMode: Text.NoWrap
        font.weight: Font.Normal
        font.family: "Geist"
    }

    Text {
        id: use_Camera
        color: "#ffffff"
        text: qsTr("Use Camera")
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 6292
        anchors.rightMargin: 582
        anchors.topMargin: 866
        anchors.bottomMargin: 4853
        font.pixelSize: 48
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignTop
        wrapMode: Text.NoWrap
        font.weight: Font.Normal
        font.family: "Geist"
    }

    Text {
        id: import_from_Files
        color: "#ffffff"
        text: qsTr("Import from Files")
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 6292
        anchors.rightMargin: 476
        anchors.topMargin: 783
        anchors.bottomMargin: 4936
        font.pixelSize: 48
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignTop
        wrapMode: Text.NoWrap
        font.weight: Font.Normal
        font.family: "Geist"
    }

    Shape {
        id: line_4_Stroke_
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 6218
        anchors.rightMargin: 309
        anchors.topMargin: 852
        anchors.bottomMargin: 4928
        layer.samples: 16
        layer.enabled: true
        ShapePath {
            id: line_4_Stroke__ShapePath_0
            strokeWidth: 1
            strokeColor: "transparent"
            PathSvg {
                id: line_4_Stroke__PathSvg
                path: "M 616 1 L 0 1 L 0 0 L 616 0 L 616 1 Z"
            }
            fillRule: ShapePath.OddEvenFill
            fillColor: "#ffffff"
        }
        antialiasing: true
    }

    Shape {
        id: line_5_Stroke_
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 6218
        anchors.rightMargin: 309
        anchors.topMargin: 942
        anchors.bottomMargin: 4838
        layer.samples: 16
        layer.enabled: true
        ShapePath {
            id: line_5_Stroke__ShapePath_0
            strokeWidth: 1
            strokeColor: "transparent"
            PathSvg {
                id: line_5_Stroke__PathSvg
                path: "M 616 1 L 0 1 L 0 0 L 616 0 L 616 1 Z"
            }
            fillRule: ShapePath.OddEvenFill
            fillColor: "#ffffff"
        }
        antialiasing: true
    }

    Text {
        id: upload_Scan_Code
        color: "#000000"
        text: qsTr("Upload Scan Code")
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 4865
        anchors.rightMargin: 1869
        anchors.topMargin: 1033
        anchors.bottomMargin: 4686
        font.pixelSize: 48
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignTop
        wrapMode: Text.NoWrap
        font.weight: Font.Normal
        font.family: "Geist"
    }

    Image {
        id: transparent_folder_icon_22_3803737133_1
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 6206
        anchors.rightMargin: 863
        anchors.topMargin: 773
        anchors.bottomMargin: 4933
        source: "assets/transparent_folder_icon_22_3803737133_1.png"
    }

    Image {
        id: abf432912007028bd9337_4140881491_1
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.leftMargin: 6215
        anchors.rightMargin: 872
        anchors.topMargin: 869
        source: "assets/abf432912007028bd9337_4140881491_1.png"
    }

    Image {
        id: _layer_512x512_1841106978_1
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.leftMargin: 6218
        anchors.rightMargin: 871
        anchors.topMargin: 961
        source: "assets/_layer_512x512_1841106978_1.png"
    }

    Rectangle {
        id: rectangle_19
        color: "#000000"
        radius: 50
        border.color: "#000000"
        border.width: 1
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 4699
        anchors.rightMargin: 1688
        anchors.topMargin: 2199
        anchors.bottomMargin: 3347
    }

    Rectangle {
        id: rectangle_22
        color: "#000000"
        radius: 50
        border.color: "#000000"
        border.width: 1
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 1684
        anchors.rightMargin: 4703
        anchors.topMargin: 5172
        anchors.bottomMargin: 374
    }

    Rectangle {
        id: rectangle_21
        color: "#000000"
        radius: 50
        border.color: "#000000"
        border.width: 1
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 207
        anchors.rightMargin: 6180
        anchors.topMargin: 5172
        anchors.bottomMargin: 374
    }

    Rectangle {
        id: rectangle_20
        color: "#000000"
        radius: 50
        border.color: "#000000"
        border.width: 1
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 6156
        anchors.rightMargin: 231
        anchors.topMargin: 2199
        anchors.bottomMargin: 3347
    }

    Text {
        id: save_Preview
        color: "#ffffff"
        text: qsTr("Save & Preview")
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 4825
        anchors.rightMargin: 1813
        anchors.topMargin: 2270
        anchors.bottomMargin: 3417
        font.pixelSize: 72
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignTop
        wrapMode: Text.NoWrap
        font.weight: Font.Normal
        font.family: "Geist"
    }

    Text {
        id: save_Preview1
        color: "#ffffff"
        text: qsTr("Save & Preview")
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 1810
        anchors.rightMargin: 4828
        anchors.topMargin: 5243
        anchors.bottomMargin: 444
        font.pixelSize: 72
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignTop
        wrapMode: Text.NoWrap
        font.weight: Font.Normal
        font.family: "Geist"
    }

    Text {
        id: save_Preview2
        color: "#ffffff"
        text: qsTr("Save & Preview")
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 333
        anchors.rightMargin: 6305
        anchors.topMargin: 5243
        anchors.bottomMargin: 444
        font.pixelSize: 72
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignTop
        wrapMode: Text.NoWrap
        font.weight: Font.Normal
        font.family: "Geist"
    }

    Text {
        id: save_Preview3
        color: "#ffffff"
        text: qsTr("Save & Preview")
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 6282
        anchors.rightMargin: 356
        anchors.topMargin: 2270
        anchors.bottomMargin: 3417
        font.pixelSize: 72
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignTop
        wrapMode: Text.NoWrap
        font.weight: Font.Normal
        font.family: "Geist"
    }

    Rectangle {
        id: rectangle_42
        color: "#d9d9d9"
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.rightMargin: 5973
        anchors.bottomMargin: 3249
    }

    Component_1 {
        id: component_1
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 2954
        anchors.rightMargin: 1509
        anchors.topMargin: 2971
        anchors.bottomMargin: 120
    }

    Item {
        id: passSaved
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 5973
        anchors.topMargin: 2973
        anchors.bottomMargin: 125
        Rectangle {
            id: rectangle_41
            color: "#d9d9d9"
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 151
        }

        Text {
            id: pass_Saved_
            color: "#000000"
            text: qsTr("Pass Saved!")
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.leftMargin: 301
            anchors.rightMargin: 301
            anchors.topMargin: 1014
            anchors.bottomMargin: 1544
            font.pixelSize: 96
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.NoWrap
            font.weight: Font.Bold
            font.family: "Geist"
        }

        Image {
            id: element6
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.leftMargin: 477
            anchors.rightMargin: 493
            anchors.topMargin: 1166
            source: "assets/element6.png"
        }
    }

    Text {
        id: pass_Generator
        color: "#000000"
        text: qsTr("Pass Generator")
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 223
        anchors.rightMargin: 6194
        anchors.topMargin: 239
        anchors.bottomMargin: 5417
        font.pixelSize: 96
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignTop
        wrapMode: Text.NoWrap
        font.weight: Font.Bold
        font.family: "Geist"
    }

    Rectangle {
        id: rectangle_43
        color: "#000000"
        radius: 50
        border.color: "#000000"
        border.width: 1
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 207
        anchors.rightMargin: 6180
        anchors.topMargin: 1095
        anchors.bottomMargin: 4451
    }

    Rectangle {
        id: rectangle_44
        color: "#000000"
        radius: 50
        border.color: "#000000"
        border.width: 1
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 207
        anchors.rightMargin: 6180
        anchors.topMargin: 1359
        anchors.bottomMargin: 4187
    }

    Text {
        id: new_Pass1
        color: "#ffffff"
        text: qsTr("New Pass")
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 421
        anchors.rightMargin: 6393
        anchors.topMargin: 1172
        anchors.bottomMargin: 4515
        font.pixelSize: 72
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignTop
        wrapMode: Text.NoWrap
        font.weight: Font.Normal
        font.family: "Geist"
    }

    Text {
        id: saved_Passes
        color: "#ffffff"
        text: qsTr("Saved Passes")
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 356
        anchors.rightMargin: 6328
        anchors.topMargin: 1435
        anchors.bottomMargin: 4252
        font.pixelSize: 72
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignTop
        wrapMode: Text.NoWrap
        font.weight: Font.Normal
        font.family: "Geist"
    }

    Text {
        id: eECS_497_Group_11
        color: "#898989"
        text: qsTr("© 2025 EECS 497 Group 11")
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 338
        anchors.rightMargin: 6310
        anchors.topMargin: 2434
        anchors.bottomMargin: 3295
        font.pixelSize: 40
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignTop
        wrapMode: Text.NoWrap
        font.weight: Font.Normal
        font.family: "Geist"
    }

    Rectangle {
        id: rectangle_48
        color: "#d9d9d9"
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 3035
        anchors.rightMargin: 2938
        anchors.bottomMargin: 3249
    }

    Text {
        id: saved_Passes1
        color: "#000000"
        text: qsTr("Saved Passes")
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 3120
        anchors.rightMargin: 3368
        anchors.topMargin: 239
        anchors.bottomMargin: 5417
        font.pixelSize: 96
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignTop
        wrapMode: Text.NoWrap
        font.weight: Font.Bold
        font.family: "Geist"
    }

    Text {
        id: eECS_497_Group_12
        color: "#898989"
        text: qsTr("© 2025 EECS 497 Group 11")
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 3381
        anchors.rightMargin: 3267
        anchors.topMargin: 2434
        anchors.bottomMargin: 3295
        font.pixelSize: 40
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignTop
        wrapMode: Text.NoWrap
        font.weight: Font.Normal
        font.family: "Geist"
    }

    Rectangle {
        id: rectangle_45
        color: "#d9d9d9"
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 1541
        anchors.rightMargin: 4432
        anchors.bottomMargin: 3249
    }

    Text {
        id: new_Pass3
        color: "#000000"
        text: qsTr("New Pass")
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 1617
        anchors.rightMargin: 5068
        anchors.topMargin: 239
        anchors.bottomMargin: 5417
        font.pixelSize: 96
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignTop
        wrapMode: Text.NoWrap
        font.weight: Font.Bold
        font.family: "Geist"
    }

    Text {
        id: eECS_497_Group_13
        color: "#898989"
        text: qsTr("© 2025 EECS 497 Group 11")
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 1879
        anchors.rightMargin: 4769
        anchors.topMargin: 2434
        anchors.bottomMargin: 3295
        font.pixelSize: 40
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignTop
        wrapMode: Text.NoWrap
        font.weight: Font.Normal
        font.family: "Geist"
    }

    Text {
        id: description_Required_1
        color: "#cccccc"
        text: qsTr("Description (Required)")
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 6064
        anchors.rightMargin: 590
        anchors.topMargin: 1477
        anchors.bottomMargin: 4242
        font.pixelSize: 48
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignTop
        wrapMode: Text.NoWrap
        font.weight: Font.Normal
        font.family: "Geist"
    }

    Text {
        id: new_Pass4
        color: "#000000"
        text: qsTr("New Pass")
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 6026
        anchors.rightMargin: 659
        anchors.topMargin: 239
        anchors.bottomMargin: 5417
        font.pixelSize: 96
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignTop
        wrapMode: Text.NoWrap
        font.weight: Font.Bold
        font.family: "Geist"
    }

    Image {
        id: _black_and_white_pencil_clip_art_png_download_2120721743_1
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.leftMargin: 5052
        anchors.rightMargin: 2041
        anchors.topMargin: 286
        source: "assets/_black_and_white_pencil_clip_art_png_download_2120721743_1.png"
    }

    Image {
        id: _black_and_white_pencil_clip_art_png_download_2120721743_3
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.leftMargin: 624
        anchors.rightMargin: 6469
        anchors.topMargin: 3259
        source: "assets/_black_and_white_pencil_clip_art_png_download_2120721743_3.png"
    }

    Image {
        id: _black_and_white_pencil_clip_art_png_download_2120721743_4
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.leftMargin: 2101
        anchors.rightMargin: 4992
        anchors.topMargin: 3259
        source: "assets/_black_and_white_pencil_clip_art_png_download_2120721743_4.png"
    }

    Image {
        id: _black_and_white_pencil_clip_art_png_download_2120721743_2
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.leftMargin: 6502
        anchors.rightMargin: 591
        anchors.topMargin: 286
        source: "assets/_black_and_white_pencil_clip_art_png_download_2120721743_2.png"
    }

    Text {
        id: michigan_vs_Ohio_State_Hockey1
        color: "#000000"
        text: qsTr("Michigan vs. Ohio State Hockey")
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 1598
        anchors.rightMargin: 4838
        anchors.topMargin: 4450
        anchors.bottomMargin: 1269
        font.pixelSize: 48
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignTop
        wrapMode: Text.NoWrap
        font.weight: Font.Medium
        font.family: "Geist"
    }

    Rectangle {
        id: rectangle_50
        color: "#d9d9d9"
        radius: 30
        border.color: "#000000"
        border.width: 5
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 3112
        anchors.rightMargin: 3550
        anchors.topMargin: 442
        anchors.bottomMargin: 4804
    }

    Rectangle {
        id: rectangle_59
        color: "#cccccc"
        radius: 30
        border.color: "#000000"
        border.width: 7
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 2147
        anchors.rightMargin: 4515
        anchors.topMargin: 442
        anchors.bottomMargin: 4804
    }

    Rectangle {
        id: rectangle_58
        color: "#cccccc"
        radius: 30
        border.color: "#898989"
        border.width: 5
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 1624
        anchors.rightMargin: 5038
        anchors.topMargin: 442
        anchors.bottomMargin: 4804
    }

    Rectangle {
        id: rectangle_55
        color: "#d9d9d9"
        radius: 30
        border.color: "#000000"
        border.width: 5
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 3649
        anchors.rightMargin: 3013
        anchors.topMargin: 1630
        anchors.bottomMargin: 3616
    }

    Rectangle {
        id: rectangle_54
        color: "#d9d9d9"
        radius: 30
        border.color: "#000000"
        border.width: 5
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 3120
        anchors.rightMargin: 3542
        anchors.topMargin: 1630
        anchors.bottomMargin: 3616
    }

    Rectangle {
        id: rectangle_53
        color: "#d9d9d9"
        radius: 30
        border.color: "#000000"
        border.width: 5
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 3112
        anchors.rightMargin: 3550
        anchors.topMargin: 1036
        anchors.bottomMargin: 4210
    }

    Rectangle {
        id: rectangle_52
        color: "#d9d9d9"
        radius: 30
        border.color: "#000000"
        border.width: 5
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 3635
        anchors.rightMargin: 3027
        anchors.topMargin: 1036
        anchors.bottomMargin: 4210
    }

    Rectangle {
        id: rectangle_51
        color: "#d9d9d9"
        radius: 30
        border.color: "#000000"
        border.width: 5
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 3635
        anchors.rightMargin: 3027
        anchors.topMargin: 442
        anchors.bottomMargin: 4804
    }

    Rectangle {
        id: rectangle_56
        color: "#898989"
        radius: 20
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 4164
        anchors.rightMargin: 2963
        anchors.topMargin: 442
        anchors.bottomMargin: 4151
    }

    Rectangle {
        id: rectangle_57
        color: "#000000"
        radius: 50
        border.color: "#000000"
        border.width: 1
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 1748
        anchors.rightMargin: 4639
        anchors.topMargin: 2165
        anchors.bottomMargin: 3381
    }

    Text {
        id: next
        color: "#ffffff"
        text: qsTr("Next")
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 2048
        anchors.rightMargin: 4937
        anchors.topMargin: 2236
        anchors.bottomMargin: 3451
        font.pixelSize: 72
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignTop
        wrapMode: Text.NoWrap
        font.weight: Font.Normal
        font.family: "Geist"
    }

    Shape {
        id: rectangle_60
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 2269
        anchors.rightMargin: 4637
        anchors.topMargin: 685
        anchors.bottomMargin: 4856
        layer.samples: 16
        layer.enabled: true
        ShapePath {
            id: rectangle_60_ShapePath_0
            strokeWidth: 1
            strokeColor: "transparent"
            PathSvg {
                id: rectangle_60_PathSvg
                path: "M 0 0 L 237 0 L 237 240 L 0 240 L 0 0 Z"
            }
            fillRule: ShapePath.WindingFill
            fillColor: "#898989"
        }
        antialiasing: true
    }

    Rectangle {
        id: rectangle_61
        color: "#898989"
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 1720
        anchors.rightMargin: 5135
        anchors.topMargin: 817
        anchors.bottomMargin: 4856
    }

    Text {
        id: barcode
        color: "#000000"
        text: qsTr("Barcode")
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 1754
        anchors.rightMargin: 5200
        anchors.topMargin: 977
        anchors.bottomMargin: 4742
        font.pixelSize: 48
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignTop
        wrapMode: Text.NoWrap
        font.weight: Font.Medium
        font.family: "Geist"
    }

    Text {
        id: qR_code
        color: "#000000"
        text: qsTr("QR code")
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 2294
        anchors.rightMargin: 4657
        anchors.topMargin: 977
        anchors.bottomMargin: 4742
        font.pixelSize: 48
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignTop
        wrapMode: Text.NoWrap
        font.weight: Font.Medium
        font.family: "Geist"
    }

    Rectangle {
        id: rectangle_62
        color: "#cccccc"
        radius: 30
        border.color: "#000000"
        border.width: 5
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 1624
        anchors.rightMargin: 4515
        anchors.topMargin: 1158
        anchors.bottomMargin: 3896
    }

    ArcItem {
        id: ellipse_1
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 1668
        anchors.rightMargin: 5425
        anchors.topMargin: 1205
        anchors.bottomMargin: 4526
        strokeWidth: 5
        strokeStyle: 1
        strokeColor: "#000000"
        outlineArc: true
        fillColor: "#000000"
        end: 450.00001
        begin: 90
        arcWidth: 25
        antialiasing: true
    }

    ArcItem {
        id: ellipse_5
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 1668
        anchors.rightMargin: 5425
        anchors.topMargin: 1788
        anchors.bottomMargin: 3943
        strokeWidth: 5
        strokeStyle: 1
        strokeColor: "#000000"
        outlineArc: true
        fillColor: "#d9d9d9"
        end: 450.00001
        begin: 90
        arcWidth: 25
        antialiasing: true
    }

    ArcItem {
        id: ellipse_4
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 1668
        anchors.rightMargin: 5425
        anchors.topMargin: 1644
        anchors.bottomMargin: 4087
        strokeWidth: 5
        strokeStyle: 1
        strokeColor: "#000000"
        outlineArc: true
        fillColor: "#d9d9d9"
        end: 450.00001
        begin: 90
        arcWidth: 25
        antialiasing: true
    }

    ArcItem {
        id: ellipse_3
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 1668
        anchors.rightMargin: 5425
        anchors.topMargin: 1496
        anchors.bottomMargin: 4235
        strokeWidth: 5
        strokeStyle: 1
        strokeColor: "#000000"
        outlineArc: true
        fillColor: "#d9d9d9"
        end: 450.00001
        begin: 90
        arcWidth: 25
        antialiasing: true
    }

    ArcItem {
        id: ellipse_2
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 1668
        anchors.rightMargin: 5425
        anchors.topMargin: 1351
        anchors.bottomMargin: 4380
        strokeWidth: 5
        strokeStyle: 1
        strokeColor: "#000000"
        outlineArc: true
        fillColor: "#d9d9d9"
        end: 450.00001
        begin: 90
        arcWidth: 25
        antialiasing: true
    }

    Shape {
        id: line_8_Stroke_
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 1624
        anchors.rightMargin: 4515
        anchors.topMargin: 1297
        anchors.bottomMargin: 4477
        layer.samples: 16
        layer.enabled: true
        ShapePath {
            id: line_8_Stroke__ShapePath_0
            strokeWidth: 5
            strokeColor: "transparent"
            PathSvg {
                id: line_8_Stroke__PathSvg
                path: "M 1004.010009765625 4.999989986419678 L 0.009960140101611614 6.999990463256836 L 0 2 L 1004.0000610351562 0 L 1004.010009765625 4.999989986419678 Z"
            }
            fillRule: ShapePath.OddEvenFill
            fillColor: "#000000"
        }
        antialiasing: true
    }

    Shape {
        id: line_9_Stroke_
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 1624
        anchors.rightMargin: 4515
        anchors.topMargin: 1442
        anchors.bottomMargin: 4332
        layer.samples: 16
        layer.enabled: true
        ShapePath {
            id: line_9_Stroke__ShapePath_0
            strokeWidth: 5
            strokeColor: "transparent"
            PathSvg {
                id: line_9_Stroke__PathSvg
                path: "M 1004.010009765625 4.999989986419678 L 0.009960140101611614 6.999990463256836 L 0 2 L 1004.0000610351562 0 L 1004.010009765625 4.999989986419678 Z"
            }
            fillRule: ShapePath.OddEvenFill
            fillColor: "#000000"
        }
        antialiasing: true
    }

    Shape {
        id: line_12_Stroke_
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 1624
        anchors.rightMargin: 4515
        anchors.topMargin: 1731
        anchors.bottomMargin: 4043
        layer.samples: 16
        layer.enabled: true
        ShapePath {
            id: line_12_Stroke__ShapePath_0
            strokeWidth: 5
            strokeColor: "transparent"
            PathSvg {
                id: line_12_Stroke__PathSvg
                path: "M 1004.010009765625 4.999989986419678 L 0.009960140101611614 6.999990463256836 L 0 2 L 1004.0000610351562 0 L 1004.010009765625 4.999989986419678 Z"
            }
            fillRule: ShapePath.OddEvenFill
            fillColor: "#000000"
        }
        antialiasing: true
    }

    Shape {
        id: line_11_Stroke_
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 1624
        anchors.rightMargin: 4515
        anchors.topMargin: 1587
        anchors.bottomMargin: 4187
        layer.samples: 16
        layer.enabled: true
        ShapePath {
            id: line_11_Stroke__ShapePath_0
            strokeWidth: 5
            strokeColor: "transparent"
            PathSvg {
                id: line_11_Stroke__PathSvg
                path: "M 1004.010009765625 4.999989986419678 L 0.009960140101611614 6.999990463256836 L 0 2 L 1004.0000610351562 0 L 1004.010009765625 4.999989986419678 Z"
            }
            fillRule: ShapePath.OddEvenFill
            fillColor: "#000000"
        }
        antialiasing: true
    }

    Text {
        id: event_Ticket
        color: "#000000"
        text: qsTr("Event Ticket")
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 1754
        anchors.rightMargin: 5112
        anchors.topMargin: 1199
        anchors.bottomMargin: 4520
        font.pixelSize: 48
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignTop
        wrapMode: Text.NoWrap
        font.weight: Font.Medium
        font.family: "Geist"
    }

    Text {
        id: other
        color: "#000000"
        text: qsTr("Other")
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 1750
        anchors.rightMargin: 5263
        anchors.topMargin: 1788
        anchors.bottomMargin: 3931
        font.pixelSize: 48
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignTop
        wrapMode: Text.NoWrap
        font.weight: Font.Medium
        font.family: "Geist"
    }

    Text {
        id: coupon
        color: "#000000"
        text: qsTr("Coupon")
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 1750
        anchors.rightMargin: 5217
        anchors.topMargin: 1638
        anchors.bottomMargin: 4081
        font.pixelSize: 48
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignTop
        wrapMode: Text.NoWrap
        font.weight: Font.Medium
        font.family: "Geist"
    }

    Text {
        id: store_Card
        color: "#000000"
        text: qsTr("Store Card")
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 1753
        anchors.rightMargin: 5148
        anchors.topMargin: 1490
        anchors.bottomMargin: 4229
        font.pixelSize: 48
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignTop
        wrapMode: Text.NoWrap
        font.weight: Font.Medium
        font.family: "Geist"
    }

    Text {
        id: boarding_Pass
        color: "#000000"
        text: qsTr("Boarding Pass")
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 1754
        anchors.rightMargin: 5064
        anchors.topMargin: 1345
        anchors.bottomMargin: 4374
        font.pixelSize: 48
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignTop
        wrapMode: Text.NoWrap
        font.weight: Font.Medium
        font.family: "Geist"
    }

    Text {
        id: about_Legal
        color: "#1e1e1e"
        text: qsTr("About   |   Legal")
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 437
        anchors.rightMargin: 6408
        anchors.topMargin: 2332
        anchors.bottomMargin: 3401
        font.pixelSize: 40
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignTop
        wrapMode: Text.NoWrap
        font.weight: Font.DemiBold
        font.family: "Inter"
    }
}

/*##^##
Designer {
    D{i:0;uuid:"a03a9068-246b-5f97-a971-d257a4774e86"}D{i:1;uuid:"bc7b0c70-7356-5722-bcbc-a9e32975173d"}
D{i:2;uuid:"e9fd9dcc-aaa2-5084-9699-a816f04df439"}D{i:3;uuid:"ed0bfe73-4154-51de-a4ba-df60bcf60b59"}
D{i:4;uuid:"5c397327-a83b-5d96-95da-6b23ac9aafad"}D{i:5;uuid:"daca4806-5c88-522d-b47b-15bd86594c91"}
D{i:6;uuid:"6935584a-10b0-5a43-8abb-1640db8ae009"}D{i:7;uuid:"110f5d8c-5d30-531b-b778-2aca5c38a693"}
D{i:8;uuid:"bb3702d0-bbab-58ab-9295-29bc2d33f657"}D{i:9;uuid:"4ed66993-8c16-5e97-8742-07030655a79c"}
D{i:10;uuid:"864330de-250f-5521-b050-4cb00046e80f"}D{i:11;uuid:"df29ccbe-c445-58de-8d9e-9443d3e4c276"}
D{i:12;uuid:"b57857c3-b5a9-5d9e-b8d8-3a8481c22600"}D{i:13;uuid:"54d1fedf-ecd7-5073-815e-28c8d48f2590"}
D{i:14;uuid:"df915974-00d1-5410-a781-18b7c5396e00"}D{i:15;uuid:"cb7ebc13-db54-58e7-aa68-d38559e4b550"}
D{i:16;uuid:"243f5ccc-5e45-5a94-bac6-da252589313c"}D{i:17;uuid:"b784a9de-03e7-51a1-9c4c-651e1cfd9977"}
D{i:18;uuid:"c6bd6e45-f50d-584e-b8bc-b2f3569cfe4a"}D{i:19;uuid:"f0492332-bf41-57c8-a8a8-490aba08aefa"}
D{i:20;uuid:"f9e92017-ef45-5441-8a73-7a64b8834a40"}D{i:21;uuid:"1ba600dc-a599-51ad-bf1d-5ec52d1e0c9c"}
D{i:22;uuid:"a75ccfec-69c6-5dd8-80b7-a964e12c14eb"}D{i:23;uuid:"63e661a3-7417-53ed-9b0c-6900a493b99d"}
D{i:24;uuid:"5e4769d9-c4ba-5850-9a7e-0ef42ea89133"}D{i:25;uuid:"c82b4b43-c0e6-5e95-a8df-9a0c0a47f1c7"}
D{i:26;uuid:"9a685f72-6591-57d4-9011-d63fd70bb7b9"}D{i:27;uuid:"b64121e4-ca19-5c07-aec6-713939bfc5a1"}
D{i:28;uuid:"050ad23e-29e7-5e12-975b-ca6a380866d2"}D{i:29;uuid:"bd865095-7c1d-55a4-bca7-9a2fabcf9f9d"}
D{i:30;uuid:"123ea8bd-f961-5fa5-b2b7-2b7bfce84d67"}D{i:31;uuid:"79d8c71e-d80c-5db6-814a-282abdddaeb9"}
D{i:32;uuid:"4811447e-2c64-537e-8b40-b7706e32eb0f"}D{i:33;uuid:"2b650314-9be5-5830-afef-28a340166408"}
D{i:34;uuid:"546a6849-d7f6-5385-b236-4950eacef442"}D{i:35;uuid:"df143846-0904-56ad-a715-58a14f19a288"}
D{i:36;uuid:"df143846-0904-56ad-a715-58a14f19a288_ShapePath_0"}D{i:37;uuid:"df143846-0904-56ad-a715-58a14f19a288-PathSvg"}
D{i:38;uuid:"59caf5dc-4477-5202-8679-07ed7d24ef42"}D{i:39;uuid:"59caf5dc-4477-5202-8679-07ed7d24ef42_ShapePath_0"}
D{i:40;uuid:"59caf5dc-4477-5202-8679-07ed7d24ef42-PathSvg"}D{i:41;uuid:"b551eb20-a7bd-58de-837c-d9e65d4f0f59"}
D{i:42;uuid:"9a886d40-f61b-553a-b49f-97ed2232a728"}D{i:43;uuid:"39024620-9422-5e6d-80bf-13862fb73662"}
D{i:44;uuid:"97649ce6-e377-5ddb-a5a7-615f14b440ba"}D{i:45;uuid:"50450534-f7aa-54b6-bd4f-9dc66283974f"}
D{i:46;uuid:"68fbec1f-e425-5df0-aa47-fe642514d54d"}D{i:47;uuid:"c8aade5f-3519-5ff3-b2fa-d5f973d2e915"}
D{i:48;uuid:"25592358-2d64-50eb-b790-644f8cfe6e6c"}D{i:49;uuid:"bebd377e-71af-5741-8e08-77f0fd1cf1ee"}
D{i:50;uuid:"bce9a693-d934-5be8-bc9c-8147276dbd76"}D{i:51;uuid:"3917ea13-0863-59d8-897d-0e4abad898d1"}
D{i:52;uuid:"85a432ba-870b-556c-85c7-45ab72eef8b9"}D{i:53;uuid:"77952a16-722c-531f-8354-59fceb69f3be"}
D{i:54;uuid:"a2002a75-1552-55f5-98b0-ee928684c4d5"}D{i:55;uuid:"5b4ae88a-2644-54bf-8822-64745deeb788"}
D{i:56;uuid:"427a3177-708c-5367-a546-ebb761336a60"}D{i:57;uuid:"e22040d0-f869-5bb7-9b6c-1d769e8dd311"}
D{i:58;uuid:"fd265aec-51b7-58d1-8840-ffb96a30db79"}D{i:59;uuid:"92367d6c-6edc-5445-89d4-c16fba8a7c2d"}
D{i:60;uuid:"57e4f4c1-ed2f-5be5-9cc6-be01b00e6e18"}D{i:61;uuid:"8a7d2acd-173f-517c-885d-ca2b081e3dd6"}
D{i:62;uuid:"69d7ebe8-3c96-50ae-989a-8f7863c9414c"}D{i:63;uuid:"8b49a7d7-eb58-5723-ac58-85d2b199acea"}
D{i:64;uuid:"31cd77e5-5441-5299-8978-820de15e6e6c"}D{i:65;uuid:"cd29cadf-e7ca-5c58-b100-ee2a011ccf6b"}
D{i:66;uuid:"ae646cf9-3b0b-5b0c-b3de-315592896b72"}D{i:67;uuid:"18b80fe0-c873-5d87-9c81-c020d9259dc1"}
D{i:68;uuid:"e6c78f6b-def4-5954-9be9-502b6317676c"}D{i:69;uuid:"1d743c70-2b1a-55a3-a8e1-de5c20b5e94f"}
D{i:70;uuid:"0aa0c670-729a-5bb8-8c67-15e23a59f3e7"}D{i:71;uuid:"7f8030ac-e3f1-5b72-a094-7b604e427843"}
D{i:72;uuid:"db060f8b-54d8-54d4-85c1-49e918528715"}D{i:73;uuid:"be560896-2c39-54e3-8802-9b123ff2f1b8"}
D{i:74;uuid:"3904b5eb-b9d2-5431-b76b-ef2038c7c661"}D{i:75;uuid:"5d09d660-4410-59ad-bbbc-6f002441a5be"}
D{i:76;uuid:"cf80368e-3438-5604-afa2-f0c8e6f60fdd"}D{i:77;uuid:"30443946-5c6f-5cf5-b3a6-da992bd59bb3"}
D{i:78;uuid:"1561212a-9180-5aaa-a2ab-e0b5c4096074"}D{i:79;uuid:"d9edb466-85cf-5c7b-ab46-ae7072e2daba"}
D{i:80;uuid:"f1374fc8-d637-5526-affa-03c3139cb4a8"}D{i:81;uuid:"1531f646-454f-54b4-b1fd-3f14f2304c59"}
D{i:82;uuid:"3cc63166-5591-5373-94ab-017c92727e70"}D{i:83;uuid:"3499670b-b81f-593f-baaa-092966decd38"}
D{i:84;uuid:"66d29c55-f955-5bf5-b76d-16ebcb34911d"}D{i:85;uuid:"7705cdc1-e7f7-561f-8c3d-9d0a285e4cea"}
D{i:86;uuid:"7077e6ff-fb94-5db4-a9a8-46f0bc0eff0c"}D{i:87;uuid:"9ef9fe53-caeb-53f5-acf9-59d88b79bcb6"}
D{i:88;uuid:"a5f1f714-87a4-54e3-afa0-035f0f0567ec"}D{i:89;uuid:"f21f376d-dfea-5242-a7e9-f344e2c86d8d"}
D{i:90;uuid:"b69042ef-71cd-50e6-953b-d882a1bffd5a"}D{i:91;uuid:"20206193-abf3-5d8e-aa45-40b9ec28317e"}
D{i:92;uuid:"1efdd8ae-0009-5a83-be94-c5d81bebfb52"}D{i:93;uuid:"9d07c623-10c7-53f4-a093-a8a83ffcf69f"}
D{i:94;uuid:"0f183caf-e25a-5144-a74f-f88e4ea1a5f6"}D{i:95;uuid:"c3f80984-f244-5e16-8633-bdfde1d33d18"}
D{i:96;uuid:"6a43a859-f435-5747-a905-344bd34bf393"}D{i:97;uuid:"7bd60588-ca7f-523e-94b6-501dee9d7e52"}
D{i:98;uuid:"7bd60588-ca7f-523e-94b6-501dee9d7e52_ShapePath_0"}D{i:99;uuid:"7bd60588-ca7f-523e-94b6-501dee9d7e52-PathSvg"}
D{i:100;uuid:"6809dd5d-67d4-5d79-9630-025d8915eeb2"}D{i:101;uuid:"41c83a12-41e7-531e-85d1-56b48601a548"}
D{i:102;uuid:"fcba418a-8aee-59b1-b357-feb28d1d249a"}D{i:103;uuid:"cc38fc6d-ee45-58b7-8c09-eac4d90784ca"}
D{i:104;uuid:"a2f3a126-5333-5b11-90d9-fe612e0a6b93"}D{i:105;uuid:"69d757cb-7c57-57e8-a9db-f7f2a154c678"}
D{i:106;uuid:"f34f10d5-04b1-56d4-a4bf-f4125cb29533"}D{i:107;uuid:"affadb34-2aa3-5661-a6f8-0d274d58f1c6"}
D{i:108;uuid:"d3cfab6d-4168-546c-8d09-a76d2e4968b2"}D{i:109;uuid:"64a0bcab-8047-5d0a-88bf-ad2a049c7a6a"}
D{i:110;uuid:"64a0bcab-8047-5d0a-88bf-ad2a049c7a6a_ShapePath_0"}D{i:111;uuid:"64a0bcab-8047-5d0a-88bf-ad2a049c7a6a-PathSvg"}
D{i:112;uuid:"4833bb18-bdab-5bbb-b8f4-5821e12b3afe"}D{i:113;uuid:"4833bb18-bdab-5bbb-b8f4-5821e12b3afe_ShapePath_0"}
D{i:114;uuid:"4833bb18-bdab-5bbb-b8f4-5821e12b3afe-PathSvg"}D{i:115;uuid:"6bf06aad-744e-5955-b1f6-851b96b326ac"}
D{i:116;uuid:"6bf06aad-744e-5955-b1f6-851b96b326ac_ShapePath_0"}D{i:117;uuid:"6bf06aad-744e-5955-b1f6-851b96b326ac-PathSvg"}
D{i:118;uuid:"0678e315-2762-5988-b3ba-ac0e30d50328"}D{i:119;uuid:"0678e315-2762-5988-b3ba-ac0e30d50328_ShapePath_0"}
D{i:120;uuid:"0678e315-2762-5988-b3ba-ac0e30d50328-PathSvg"}D{i:121;uuid:"cad6df88-6a29-5b08-be46-161209f77b6f"}
D{i:122;uuid:"2714afb2-1f9f-5d82-ae9c-a1b5a08264f6"}D{i:123;uuid:"f33d6403-a631-5abb-a6dc-2fd3591abd04"}
D{i:124;uuid:"9134b08b-c668-5e66-a4b5-3c9d2077f90e"}D{i:125;uuid:"1694dece-9447-5010-857f-6de937754da4"}
D{i:126;uuid:"1b617440-1f71-5953-a64e-ef5dbf136704"}
}
##^##*/

