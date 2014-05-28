import QtQuick 1.1
import "qml"

Rectangle {
    width: 1024
    height: 600
    //color: "#dedede"
    color: "#C4BDBB"

    TopApps {
        id: topAppsModel
    }

    Rectangle {
        id: topAppsRectangle
        width: parent.width - 20
        height: parent.height / 3 - 10
        color: "#E8E8E8"
        anchors.horizontalCenter: parent.horizontalCenter
        border.color: "blue"
        radius: 5

        Text {
            text: "Top Apps"
            font.bold: true
            anchors.left: parent.left
            anchors.leftMargin: 10
            anchors.top: parent.top
            anchors.topMargin: 5
        }

        Grid {
            anchors.left: parent.left
            anchors.leftMargin: 7
            anchors.top: parent.top
            anchors.topMargin: 25
            columns: 3
            spacing: 15


            Repeater {
                model: topAppsModel

                AppItem {
                    appIcon: icon
                    appTitle: name
                    appID: appID
                    appDesc: shortDesc
                }

            }
        }
    }
}
