import QtQuick
import QtQuick.Controls

ApplicationWindow  {
    id: appwin
    width: 400
    height: 700
    visible: true
    title: qsTr("PixelGallery")

    StackView{
        id: stackView
        anchors.fill: parent
        initialItem: home
    }

    Page {
        id: home
        anchors.fill: parent
        Image {
            source: "45678534.png"
            width: 300
            height: 300
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: parent
        }
        Button {
            id: go
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 120
            //anchors.margins: 30
            Text {
                id: gotext
                text: "начать"
                color: "gray"
                anchors.centerIn: parent
                font.pixelSize: 15
            }
            background: Rectangle {
                id: gocolor
                color: "transparent"
                width: 80
                height: 20
                anchors.centerIn: parent
            }
            MouseArea {
                hoverEnabled: true
                anchors.fill: parent
                height: parent.height
                onEntered: gotext.color="DarkTurquoise"
                onExited: gotext.color="gray"
                onClicked: {
                    stackView.push(menu)
                    console.log("Button clicked")
                }
            }
        }

    }
    Page {
        id: menu
        anchors.fill: parent
        visible: false
        Rectangle {
            id:content
            color: "WhiteSmoke"
            anchors.fill: parent
            //anchors.margins:5
            Text{
                id: contenttxt
                text:"Content"
                color: "black"
                anchors.centerIn: content
                font.pixelSize: 24
            }
        }
    }

}
