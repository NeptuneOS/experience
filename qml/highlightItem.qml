import QtQuick 1.1

Rectangle {
    id: highlightItem
    width: 350
    height: 72
    property string appID
    property alias appBg: appBg.source
    property alias appTitle: appTitle.text
    property alias appDesc: appDesc.text
    signal clicked()

    MouseArea {
        anchors.fill: parent
        onClicked: highlightItem.clicked()
    }

    function setBG(bgPath) {
        appBg.source = bgPath
    }

    function setAppName(name) {
        appTitle.text = name
    }

    function setAppID(packagename) {
        appID = packagename
    }

    function setAppShortDesc(desc) {
        appDesc.text = desc
    }

    Image {
        id: appBg
        anchors.fill: parent
        source: ""
        anchors.verticalCenter: highlightItem.verticalCenter
    }
    Rectangle {
        color: "black"
        opacity: 0.75
        anchors.bottom: parent.bottom
        width: parent.width
        height: (parent.height / 2) + 5

        Text {
            id: appTitle
            font.bold: true
            anchors.top: parent.top
            anchors.topMargin: 5
            anchors.left: parent.left
            anchors.leftMargin: 10
            text: ""
            color: "white"
        }

        Text {
            id: appDesc
            anchors.top: appTitle.bottom
            anchors.topMargin: 5
            anchors.left: appTitle.left
            text: ""
            color: "white"
        }
    }
}
