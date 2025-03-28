import QtQuick
import QtQuick.Controls
import QtQuick.Shapes 1.15

Rectangle {
    id: component_1
    width: 2680
    height: 2690
    color: "transparent"
    property alias previewText: preview.text
    property alias preview2Text: preview2.text
    property alias preview1Text: preview1.text
    property alias sECTIONText: sECTION.text
    property alias cRISLER_ARENAText: cRISLER_ARENA.text
    property alias rOWText: rOW.text
    property alias element2Text: element2.text
    property alias loading_SkeletonText: loading_Skeleton.text
    property alias ohio_StateText: ohio_State.text
    property alias faculty_Mcard_reqText: faculty_Mcard_req.text
    property alias element4Text: element4.text
    property alias sEATText: sEAT.text
    property alias element3Text: element3.text
    property alias element5Text: element5.text
    property alias jeff_s_PassText: jeff_s_Pass.text
    property alias loaded_PreviewText: loaded_Preview.text

    Item {
        id: group_3
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.rightMargin: 1510
        Rectangle {
            id: rectangle_23
            color: "#d9d9d9"
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 158
        }

        Text {
            id: preview
            color: "#000000"
            text: qsTr("Preview")
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.leftMargin: 83
            anchors.rightMargin: 709
            anchors.topMargin: 239
            anchors.bottomMargin: 2326
            font.pixelSize: 96
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.NoWrap
            font.weight: Font.Bold
            font.family: "Geist"
        }

        Image {
            id: element
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.leftMargin: 152
            anchors.rightMargin: 152
            anchors.topMargin: 1992
            source: "assets/element.png"
        }

        Rectangle {
            id: rectangle_24
            color: "#d9d9d9"
            radius: 30
            border.color: "#000000"
            border.width: 5
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.leftMargin: 83
            anchors.rightMargin: 87
            anchors.topMargin: 395
            anchors.bottomMargin: 1143
        }

        Rectangle {
            id: rectangle_49
            color: "#d9d9d9"
            radius: 30
            border.color: "#000000"
            border.width: 5
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.leftMargin: 83
            anchors.rightMargin: 87
            anchors.topMargin: 395
            anchors.bottomMargin: 1143
        }

        Shape {
            id: rectangle_25
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.leftMargin: 163
            anchors.rightMargin: 927
            anchors.topMargin: 453
            anchors.bottomMargin: 2176
            layer.samples: 16
            layer.enabled: true
            ShapePath {
                id: rectangle_25_ShapePath_0
                strokeWidth: 2
                strokeColor: "transparent"
                PathSvg {
                    id: rectangle_25_PathSvg
                    path: "M 0 0 L 80 0 L 80 61 L 0 61 L 0 0 Z"
                }
                fillRule: ShapePath.WindingFill
                fillColor: "#898989"
            }
            antialiasing: true
        }

        Shape {
            id: rectangle_27
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.leftMargin: 885
            anchors.rightMargin: 168
            anchors.topMargin: 453
            anchors.bottomMargin: 2176
            layer.samples: 16
            layer.enabled: true
            ShapePath {
                id: rectangle_27_ShapePath_0
                strokeWidth: 2
                strokeColor: "transparent"
                PathSvg {
                    id: rectangle_27_PathSvg
                    path: "M 0 0 L 117 0 L 117 61 L 0 61 L 0 0 Z"
                }
                fillRule: ShapePath.WindingFill
                fillColor: "#898989"
            }
            antialiasing: true
        }

        Shape {
            id: rectangle_26
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.leftMargin: 272
            anchors.rightMargin: 314
            anchors.topMargin: 453
            anchors.bottomMargin: 2176
            layer.samples: 16
            layer.enabled: true
            ShapePath {
                id: rectangle_26_ShapePath_0
                strokeWidth: 2
                strokeColor: "transparent"
                PathSvg {
                    id: rectangle_26_PathSvg
                    path: "M 0 0 L 584 0 L 584 61 L 0 61 L 0 0 Z"
                }
                fillRule: ShapePath.WindingFill
                fillColor: "#898989"
            }
            antialiasing: true
        }

        Shape {
            id: rectangle_30
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.leftMargin: 163
            anchors.rightMargin: 168
            anchors.topMargin: 911
            anchors.bottomMargin: 1705
            layer.samples: 16
            layer.enabled: true
            ShapePath {
                id: rectangle_30_ShapePath_0
                strokeWidth: 2
                strokeColor: "transparent"
                PathSvg {
                    id: rectangle_30_PathSvg
                    path: "M 0 0 L 839 0 L 839 74 L 0 74 L 0 0 Z"
                }
                fillRule: ShapePath.WindingFill
                fillColor: "#898989"
            }
            antialiasing: true
        }

        Shape {
            id: rectangle_28
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.leftMargin: 163
            anchors.rightMargin: 423
            anchors.topMargin: 579
            anchors.bottomMargin: 1868
            layer.samples: 16
            layer.enabled: true
            ShapePath {
                id: rectangle_28_ShapePath_0
                strokeWidth: 2
                strokeColor: "transparent"
                PathSvg {
                    id: rectangle_28_PathSvg
                    path: "M 0 0 L 584 0 L 584 243 L 0 243 L 0 0 Z"
                }
                fillRule: ShapePath.WindingFill
                fillColor: "#898989"
            }
            antialiasing: true
        }

        Shape {
            id: rectangle_29
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.leftMargin: 785
            anchors.rightMargin: 168
            anchors.topMargin: 579
            anchors.bottomMargin: 1868
            layer.samples: 16
            layer.enabled: true
            ShapePath {
                id: rectangle_29_ShapePath_0
                strokeWidth: 2
                strokeColor: "transparent"
                PathSvg {
                    id: rectangle_29_PathSvg
                    path: "M 0 0 L 217 0 L 217 243 L 0 243 L 0 0 Z"
                }
                fillRule: ShapePath.WindingFill
                fillColor: "#898989"
            }
            antialiasing: true
        }

        Shape {
            id: line_6_Stroke_
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.leftMargin: 163
            anchors.rightMargin: 168
            anchors.topMargin: 539
            anchors.bottomMargin: 2150
            layer.samples: 16
            layer.enabled: true
            ShapePath {
                id: line_6_Stroke__ShapePath_0
                strokeWidth: 1
                strokeColor: "transparent"
                PathSvg {
                    id: line_6_Stroke__PathSvg
                    path: "M 839 1 L 0 1 L 0 2.2737367544323206e-13 L 839 0 L 839 1 Z"
                }
                fillRule: ShapePath.OddEvenFill
                fillColor: "#000000"
            }
            antialiasing: true
        }

        Text {
            id: loading_Skeleton
            color: "#ffffff"
            text: qsTr("Loading Skeleton")
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.leftMargin: 152
            anchors.rightMargin: 254
            anchors.topMargin: 2565
            font.pixelSize: 96
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.NoWrap
            font.weight: Font.Normal
            font.family: "Geist"
        }

        Rectangle {
            id: rectangle_31
            color: "#898989"
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.leftMargin: 383
            anchors.rightMargin: 388
            anchors.topMargin: 1077
            anchors.bottomMargin: 1213
        }
    }

    Item {
        id: group_2
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 1510
        Rectangle {
            id: rectangle_32
            color: "#d9d9d9"
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 158
        }

        Text {
            id: preview1
            color: "#000000"
            text: qsTr("Preview")
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.leftMargin: 83
            anchors.rightMargin: 709
            anchors.topMargin: 239
            anchors.bottomMargin: 2326
            font.pixelSize: 96
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.NoWrap
            font.weight: Font.Bold
            font.family: "Geist"
        }

        Image {
            id: element1
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.leftMargin: 152
            anchors.rightMargin: 152
            anchors.topMargin: 1992
            source: "assets/element1.png"
        }

        Rectangle {
            id: rectangle_33
            color: "#dbd18a"
            radius: 30
            border.color: "#000000"
            border.width: 5
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.leftMargin: 83
            anchors.rightMargin: 87
            anchors.topMargin: 397
            anchors.bottomMargin: 1141
        }

        Text {
            id: preview2
            color: "#898989"
            text: qsTr("Preview")
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.leftMargin: 410
            anchors.rightMargin: 410
            anchors.topMargin: 1565
            anchors.bottomMargin: 1000
            font.pixelSize: 96
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.NoWrap
            font.weight: Font.Normal
            font.family: "Geist"
        }

        Text {
            id: jeff_s_Pass
            color: "#000000"
            text: qsTr("Jeff’s Pass")
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.leftMargin: 274
            anchors.rightMargin: 678
            anchors.topMargin: 446
            anchors.bottomMargin: 2192
            font.pixelSize: 40
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.NoWrap
            font.weight: Font.Bold
            font.family: "Geist"
        }

        Text {
            id: element2
            color: "#000000"
            text: qsTr("02/24/25")
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.leftMargin: 802
            anchors.rightMargin: 167
            anchors.topMargin: 446
            anchors.bottomMargin: 2192
            font.pixelSize: 40
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.NoWrap
            font.weight: Font.Bold
            font.family: "Geist"
        }

        Text {
            id: faculty_Mcard_req
            color: "#000000"
            text: qsTr("17.00 Faculty Mcard req")
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.leftMargin: 163
            anchors.rightMargin: 473
            anchors.topMargin: 923
            anchors.bottomMargin: 1705
            font.pixelSize: 48
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.NoWrap
            font.weight: Font.Medium
            font.family: "Geist"
        }

        Shape {
            id: line_7_Stroke_
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.leftMargin: 163
            anchors.rightMargin: 168
            anchors.topMargin: 539
            anchors.bottomMargin: 2150
            layer.samples: 16
            layer.enabled: true
            ShapePath {
                id: line_7_Stroke__ShapePath_0
                strokeWidth: 1
                strokeColor: "transparent"
                PathSvg {
                    id: line_7_Stroke__PathSvg
                    path: "M 839 1 L 0 1 L 0 2.2737367544323206e-13 L 839 0 L 839 1 Z"
                }
                fillRule: ShapePath.OddEvenFill
                fillColor: "#000000"
            }
            antialiasing: true
        }

        Text {
            id: loaded_Preview
            color: "#ffffff"
            text: qsTr("Loaded Preview")
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.leftMargin: 184
            anchors.rightMargin: 286
            anchors.topMargin: 2565
            font.pixelSize: 96
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.NoWrap
            font.weight: Font.Normal
            font.family: "Geist"
        }

        Rectangle {
            id: rectangle_40
            color: "#898989"
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.leftMargin: 383
            anchors.rightMargin: 388
            anchors.topMargin: 1077
            anchors.bottomMargin: 1213
        }

        Image {
            id: example_QR_code_1418360
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.leftMargin: 383
            anchors.rightMargin: 388
            anchors.topMargin: 1077
            anchors.bottomMargin: 1213
            source: "assets/example_QR_code_1418360.png"
        }

        Image {
            id: c98d598a5000448ea94_1150086741_1
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.leftMargin: 682
            anchors.rightMargin: 65
            anchors.topMargin: 579
            source: "assets/c98d598a5000448ea94_1150086741_1.png"
        }

        Text {
            id: cRISLER_ARENA
            color: "#000000"
            text: qsTr("CRISLER ARENA")
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.leftMargin: 173
            anchors.rightMargin: 872
            anchors.topMargin: 590
            anchors.bottomMargin: 2079
            font.pixelSize: 16
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.NoWrap
            font.weight: Font.Medium
            font.family: "Geist"
        }

        Text {
            id: sECTION
            color: "#000000"
            text: qsTr("SECTION")
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.leftMargin: 173
            anchors.rightMargin: 928
            anchors.topMargin: 714
            anchors.bottomMargin: 1955
            font.pixelSize: 16
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.NoWrap
            font.weight: Font.Medium
            font.family: "Geist"
        }

        Text {
            id: sEAT
            color: "#000000"
            text: qsTr("SEAT")
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.leftMargin: 416
            anchors.rightMargin: 714
            anchors.topMargin: 714
            anchors.bottomMargin: 1955
            font.pixelSize: 16
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.NoWrap
            font.weight: Font.Medium
            font.family: "Geist"
        }

        Text {
            id: rOW
            color: "#000000"
            text: qsTr("ROW")
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.leftMargin: 305
            anchors.rightMargin: 826
            anchors.topMargin: 714
            anchors.bottomMargin: 1955
            font.pixelSize: 16
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.NoWrap
            font.weight: Font.Medium
            font.family: "Geist"
        }

        Text {
            id: ohio_State
            color: "#000000"
            text: qsTr("Ohio State")
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.leftMargin: 173
            anchors.rightMargin: 759
            anchors.topMargin: 606
            anchors.bottomMargin: 2022
            font.pixelSize: 48
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.NoWrap
            font.weight: Font.Medium
            font.family: "Geist"
        }

        Text {
            id: element3
            color: "#000000"
            text: qsTr("30")
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.leftMargin: 173
            anchors.rightMargin: 933
            anchors.topMargin: 730
            anchors.bottomMargin: 1898
            font.pixelSize: 48
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.NoWrap
            font.weight: Font.Medium
            font.family: "Geist"
        }

        Text {
            id: element4
            color: "#000000"
            text: qsTr("2")
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.leftMargin: 412
            anchors.rightMargin: 726
            anchors.topMargin: 730
            anchors.bottomMargin: 1898
            font.pixelSize: 48
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.NoWrap
            font.weight: Font.Medium
            font.family: "Geist"
        }

        Text {
            id: element5
            color: "#000000"
            text: qsTr("11")
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.leftMargin: 305
            anchors.rightMargin: 826
            anchors.topMargin: 730
            anchors.bottomMargin: 1898
            font.pixelSize: 48
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.NoWrap
            font.weight: Font.Medium
            font.family: "Geist"
        }

        Image {
            id: wp1863757_2895884541_1
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.leftMargin: 160
            anchors.rightMargin: 916
            anchors.topMargin: 430
            source: "assets/wp1863757_2895884541_1.png"
        }
    }
}

/*##^##
Designer {
    D{i:0;uuid:"fad9d42e-1b36-5698-8c03-05b34f8dd778"}D{i:1;uuid:"b7b26177-d902-5951-a51a-f0d3b3ee6bd8"}
D{i:2;uuid:"6177f06d-d2fc-567f-b42b-a48b1b3daafa"}D{i:3;uuid:"cd490ad6-cbb2-5ce1-8c4e-5d21f5cd0a1d"}
D{i:4;uuid:"2fae3b90-7564-5dde-812e-589c11f6fd32"}D{i:5;uuid:"5a2d58f3-afea-52bd-95ed-cadc4d89a795"}
D{i:6;uuid:"d9206d02-a090-5869-9829-a21b203d1eca"}D{i:7;uuid:"1045b719-082d-549c-be87-debd7f0b8fa4"}
D{i:8;uuid:"1045b719-082d-549c-be87-debd7f0b8fa4_ShapePath_0"}D{i:9;uuid:"1045b719-082d-549c-be87-debd7f0b8fa4-PathSvg"}
D{i:10;uuid:"9db05805-6597-5f9c-9bc2-af8f2be7ffd7"}D{i:11;uuid:"9db05805-6597-5f9c-9bc2-af8f2be7ffd7_ShapePath_0"}
D{i:12;uuid:"9db05805-6597-5f9c-9bc2-af8f2be7ffd7-PathSvg"}D{i:13;uuid:"622cb2c4-8f58-5251-b2e3-bdd8f0c230b6"}
D{i:14;uuid:"622cb2c4-8f58-5251-b2e3-bdd8f0c230b6_ShapePath_0"}D{i:15;uuid:"622cb2c4-8f58-5251-b2e3-bdd8f0c230b6-PathSvg"}
D{i:16;uuid:"2ea33401-4e36-50cd-b1a7-0bfd19ac3b79"}D{i:17;uuid:"2ea33401-4e36-50cd-b1a7-0bfd19ac3b79_ShapePath_0"}
D{i:18;uuid:"2ea33401-4e36-50cd-b1a7-0bfd19ac3b79-PathSvg"}D{i:19;uuid:"1e8ce557-0a6e-5b66-a461-8376535b7249"}
D{i:20;uuid:"1e8ce557-0a6e-5b66-a461-8376535b7249_ShapePath_0"}D{i:21;uuid:"1e8ce557-0a6e-5b66-a461-8376535b7249-PathSvg"}
D{i:22;uuid:"09a2fed0-3b16-59a9-bd83-8dc6d35bf062"}D{i:23;uuid:"09a2fed0-3b16-59a9-bd83-8dc6d35bf062_ShapePath_0"}
D{i:24;uuid:"09a2fed0-3b16-59a9-bd83-8dc6d35bf062-PathSvg"}D{i:25;uuid:"fbfac7f0-7590-585d-a73b-dbf52bfbe511"}
D{i:26;uuid:"fbfac7f0-7590-585d-a73b-dbf52bfbe511_ShapePath_0"}D{i:27;uuid:"fbfac7f0-7590-585d-a73b-dbf52bfbe511-PathSvg"}
D{i:28;uuid:"4ff22554-5378-5888-93c6-950e415557f2"}D{i:29;uuid:"64aff6db-a0f2-5f38-b914-3e714d113116"}
D{i:30;uuid:"26846944-44b9-5dfb-9d4d-df9b8ef21b89"}D{i:31;uuid:"5e17c01d-9901-580c-b0b7-6864b9695ebc"}
D{i:32;uuid:"fa9d8cf8-aeb5-52c2-8336-6ecdf2e9e6a8"}D{i:33;uuid:"a4fa3e5b-7c0f-583c-aa04-9e60602ebc75"}
D{i:34;uuid:"7a6ef8cf-4634-549a-9b84-a2237cc3da33"}D{i:35;uuid:"9eb4a15a-b6bb-5619-b783-c9fff4dd7319"}
D{i:36;uuid:"1840b3e5-5cbe-5164-bfb8-bee3b8e69dde"}D{i:37;uuid:"07fceaf7-1b5d-5e55-bf4f-46644a3265fa"}
D{i:38;uuid:"a1a31fd8-2f3f-5a00-858e-a4129f94bc27"}D{i:39;uuid:"92937ec1-e4d2-55e5-b437-8f78bb399671"}
D{i:40;uuid:"92937ec1-e4d2-55e5-b437-8f78bb399671_ShapePath_0"}D{i:41;uuid:"92937ec1-e4d2-55e5-b437-8f78bb399671-PathSvg"}
D{i:42;uuid:"41ca3765-15d8-5818-8c0e-cdbf7840008f"}D{i:43;uuid:"d2872920-16d2-5518-8e23-a30e6ad68aaa"}
D{i:44;uuid:"51dcbcbc-48d9-590e-9029-d0fe44ebbc6e"}D{i:45;uuid:"a1dfa2c9-7804-5ad6-8ea3-8dd422181ab2"}
D{i:46;uuid:"9480569d-82bc-5810-aa5b-80457b322638"}D{i:47;uuid:"f833e77e-f029-5a88-b7bd-c40d1d0cea50"}
D{i:48;uuid:"82c38d26-596a-5ad7-8a35-2c6bf0eb21dd"}D{i:49;uuid:"737baef0-70e6-5fa9-8e30-a637604d0818"}
D{i:50;uuid:"70ad2f0a-62eb-5ea8-9688-a943261684bd"}D{i:51;uuid:"35fb491d-a8d9-5c3b-aa1b-32919a599f79"}
D{i:52;uuid:"26ccf97a-7c6b-5f44-98a5-d4f44d22e6fa"}D{i:53;uuid:"e5204be5-d75c-5945-8a33-b17fbabf0576"}
D{i:54;uuid:"d5cfa3fd-c10a-5e8e-b0c2-874f0fa90ead"}
}
##^##*/

