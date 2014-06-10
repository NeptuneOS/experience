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

    TopGames {
        id: topGamesModel
    }

    HighlightApps {
        id: highlightAppsModel
    }

    PromoteItem {
        id: promoteApp
        anchors.top: parent.top
        anchors.topMargin: 10
        anchors.leftMargin: 13
        anchors.left: parent.left
        desc: "The online game store for Linux"
        desc2: "Play your favorite games"
        desc3: "Explore and buy new games"
        img: "img/promoteApp1.png"
        img2: "img/promoteApp2.png"
        img3: "img/promoteApp3.png"
    }

    Row {
        anchors.left: promoteApp.right
        anchors.leftMargin: 5
        anchors.top: parent.top
        anchors.topMargin: 10
        Repeater {
            model: highlightAppsModel
            HighlightItem {
                appBg: bg
                appTitle: name
                appID: uri
                appDesc: shortDesc
                onClicked: {
                    console.log("Open up " + appID)
                    Qt.openUrlExternally(appID)
                }
            }
        }
    }

    Rectangle {
        id: topAppsRectangle
        width: parent.width - 20
        height: parent.height / 3 - 10
        color: "#E8E8E8"
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: promoteApp.bottom
        anchors.topMargin: 10
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

    Rectangle {
        id: topGamesRectangle
        width: parent.width - 20
        height: parent.height / 3 - 10
        color: "#8CC2FF"
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: topAppsRectangle.bottom
        anchors.topMargin: 10
        border.color: "blue"
        radius: 5

        Text {
            text: "Top Games"
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
                model: topGamesModel

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
