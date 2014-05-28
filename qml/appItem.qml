import QtQuick 1.1
import org.kde.plasma.components 0.1 as PlasmaComponents

Rectangle {
    id: appItem
    width: 320
    height: 72
    property string appID
    property alias appIcon: appIcon.source
    property alias appTitle: appTitle.text
    property alias appDesc: appDesc.text

    function setIcon(iconPath) {
        appIcon.source = iconPath
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
        id: appIcon
        width:64
        height: 64
        anchors.left: parent.left
        anchors.leftMargin: 5
        source: ""
        anchors.verticalCenter: appItem.verticalCenter
    }
    Text {
        id: appTitle
        font.bold: true
        anchors.top: parent.top
        anchors.topMargin: 5
        anchors.left: appIcon.right
        anchors.leftMargin: 10
        text: ""
    }
    Text {
        id: appDesc
        anchors.top: appTitle.bottom
        anchors.topMargin: 5
        anchors.left: appTitle.left
        text: ""
    }
    PlasmaComponents.Button {
        id: detailsBtn
        anchors.left: appIcon.right
        anchors.leftMargin: 10
        anchors.top: appDesc.bottom
        anchors.topMargin: 5
        height: 24
        width: 96
        text: "Details"
        iconSource: "help-about"
    }
    PlasmaComponents.Button {
        id: installBtn
        anchors.right: appItem.right
        anchors.rightMargin: 10
        anchors.top: appDesc.bottom
        anchors.topMargin: 5
        height: 24
        width: 96
        text: "Install"
        iconSource: "down"
    }

}
