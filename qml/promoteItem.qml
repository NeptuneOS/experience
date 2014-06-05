import QtQuick 1.1

Rectangle {
    id: pRoot
    width: 660
    height: 180
    radius: 5

    property string desc
    property string desc2
    property string desc3
    property alias title: title.text
    property string img
    property string img2
    property string img3


    Image {
        id: banner
        anchors.fill: parent
        source: "img/promoteApp1.png"

        SequentialAnimation {
            running: true
            loops: Animation.Infinite
            ParallelAnimation {
                NumberAnimation { target: banner; property: "opacity"; to: 0; duration: 300 }
                NumberAnimation { target: descText; property: "opacity"; to: 0; duration: 300 }
            }
            PropertyAction { target: banner; property: "source"; value: img }
            PropertyAction { target: descText; property: "text"; value: pRoot.desc }
            ParallelAnimation {
                NumberAnimation { target: banner; property: "opacity"; to: 1; duration: 300 }
                NumberAnimation { target: descText; property: "opacity"; to: 1; duration: 300 }
            }
            NumberAnimation { target: banner; property: "opacity"; duration: 3000; easing.type: Easing.InOutQuad }
            ParallelAnimation {
                NumberAnimation { target: banner; property: "opacity"; to: 0; duration: 300 }
                NumberAnimation { target: descText; property: "opacity"; to: 0; duration: 300 }
            }
            PropertyAction { target: banner; property: "source"; value: img2 }
            PropertyAction { target: descText; property: "text"; value: desc2 }
            ParallelAnimation {
                NumberAnimation { target: banner; property: "opacity"; to: 1; duration: 300 }
                NumberAnimation { target: descText; property: "opacity"; to: 1; duration: 300 }
            }
            NumberAnimation { target: banner; property: "opacity"; duration: 3000; easing.type: Easing.InOutQuad }

            ParallelAnimation {
                NumberAnimation { target: banner; property: "opacity"; to: 0; duration: 300 }
                NumberAnimation { target: descText; property: "opacity"; to: 0; duration: 300 }
            }
            PropertyAction { target: banner; property: "source"; value: img3 }
            PropertyAction { target: descText; property: "text"; value: desc3 }
            ParallelAnimation {
                NumberAnimation { target: banner; property: "opacity"; to: 1; duration: 300 }
                NumberAnimation { target: descText; property: "opacity"; to: 1; duration: 300 }
            }
            NumberAnimation { target: banner; property: "opacity"; duration: 3000; easing.type: Easing.InOutQuad }
        }
    }

    Rectangle {
        color: "black"
        width: parent.width
        height: 50
        anchors.bottom: parent.bottom
        opacity: 0.75

        Text {
            id: title
            font.bold: true
            text: "Steam"
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: parent.left
            anchors.leftMargin: 15
            color: "white"
        }
        Text {
            id: descText
            text: pRoot.desc
            color: "white"
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: title.right
            anchors.leftMargin: 15
        }
    }
}
