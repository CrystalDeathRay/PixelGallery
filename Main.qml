import QtQuick
import QtQuick.Controls
import QtQuick.Window
import QtQuick.Layouts

ApplicationWindow  {
    id: appwin
    width: 400
    height: 700
    minimumHeight: 700
    minimumWidth: 400
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
            source: "images/logo.png"
            width: 300
            height: 300
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: parent
        }
        Button {
            id: go
            width: 100
            height: 50
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 120
            Text {
                id: gotext
                text: "tap to start"
                color: "#406070"
                anchors.centerIn: parent
                font.pixelSize: 20
                font.family: "Commissioner Medium"
            }
            background: Rectangle {
                id: gocolor
                color: "transparent"
                anchors.centerIn: parent
            }
            MouseArea {
                hoverEnabled: true
                anchors.fill: parent
                height: parent.height
                onEntered: gotext.color="#8EC7CD"
                onExited: gotext.color="#406070"
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
        Text {
            id: menuname
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 50
            anchors.topMargin: 20
            text: "Menu"
            color: "#1E3D4C"
            font.bold: true
            font.pixelSize: 25
            font.family: "Commissioner SemiBold"
        }

        Button {
            id: gall
            width: 50
            height: 20
            anchors.left: menuname.left
            anchors.top: menuname.bottom
            anchors.leftMargin: 12
            anchors.topMargin: 30
            anchors.bottomMargin: 30
            Text {
                id: galltext
                text: "Gallery"
                color: "#406070"
                anchors.centerIn: parent
                font.pixelSize: 20
                font.family: "Commissioner Medium"
            }
            background: Rectangle {
                id: gallcolor
                color: "transparent"
                anchors.centerIn: parent
            }
            MouseArea {
                hoverEnabled: true
                anchors.fill: parent
                height: parent.height
                onEntered: galltext.color="#8EC7CD"
                onExited: galltext.color="#406070"
                onClicked: {
                    stackView.push(gallery)
                    console.log("Button clicked")
                }
            }
        }

        Button {
            id: bscard
            width: 50
            height: 20
            anchors.left: menuname.left
            anchors.top: gall.bottom
            anchors.leftMargin: 25
            anchors.topMargin: 20
            anchors.bottomMargin: 10
            Text {
                id: bscardtext
                text: "About me"
                color: "#406070"
                anchors.centerIn: parent
                font.pixelSize: 20
                font.family: "Commissioner Medium"
            }
            background: Rectangle {
                id: bscardcolor
                color: "transparent"

                anchors.centerIn: parent
            }
            MouseArea {
                hoverEnabled: true
                anchors.fill: parent
                height: parent.height
                onEntered: bscardtext.color="#8EC7CD"
                onExited: bscardtext.color="#406070"
                onClicked: {
                    stackView.push(busycard)
                    console.log("Button clicked")
                }
            }
        }
        Image {
            id: logo2
            source: "images/logo2.png"
            width: 200
            height: 50
            fillMode: Image.PreserveAspectFit
            anchors.bottom: parent.bottom
            anchors.right: parent.right
            anchors.bottomMargin: 20
            anchors.rightMargin: 20
            anchors.topMargin: 70
        }
    }

    Page { // swipe view gallery
        id: gallery
        anchors.fill: parent
        visible: false

        Button {
            id: back1
            width: 50
            height: 20
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.margins: 20
            Text {
                id: back1text
                font.family: "Commissioner Medium"
                text: "Menu"
                color: "#406070"
                anchors.centerIn: parent
                font.pixelSize: 20
            }
            background: Rectangle {
                id: back1color
                color: "transparent"
                anchors.centerIn: parent
            }
            MouseArea {
                hoverEnabled: true
                anchors.fill: parent
                height: parent.height
                onEntered: back1text.color="#8EC7CD"
                onExited: back1text.color="#406070"
                onClicked: {
                    stackView.pop(menu)
                    console.log("Button clicked")
                }
            }
        }
        Rectangle {
            id: swgallery
            anchors.top: parent.top
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.topMargin: 40
            anchors.bottomMargin: 20
            anchors.fill: parent

            SwipeView {
                id: sw
                currentIndex: 1
                anchors.fill: parent
                interactive: SwipeView.forceElasticity
                Image {
                    source: "gallery/20230602_194048.jpg"
                    fillMode: Image.PreserveAspectFit
                }
                Image {
                    source: "gallery/20230808_192734.jpg"
                    fillMode: Image.PreserveAspectFit
                }
                Image {
                    source: "gallery/20230808_193124.jpg"
                    fillMode: Image.PreserveAspectFit
                }
                Image {
                    source: "gallery/20240705_182159.jpg"
                    fillMode: Image.PreserveAspectFit
                }
                Image {
                    source: "gallery/20250303_180513.jpg"
                    fillMode: Image.PreserveAspectFit
                }
                Image {
                    source: "gallery/20250227_173314.jpg"
                    fillMode: Image.PreserveAspectFit
                }
                Image {
                    source: "gallery/20250410_174732.png"
                    fillMode: Image.PreserveAspectFit
                }
                Image {
                    source: "gallery/20250227_173921.jpg"
                    fillMode: Image.PreserveAspectFit
                }
                Image {
                    source: "gallery/20250410_174910.png"
                    fillMode: Image.PreserveAspectFit
                }
                Image {
                    source: "gallery/IMG_8907.jpg"
                    fillMode: Image.PreserveAspectFit
                }
            }
            PageIndicator {
                id: indicator
                count: sw.count
                currentIndex: sw.currentIndex
                anchors.bottom: sw.bottom
                anchors.horizontalCenter: parent.horizontalCenter
            }
        }
    }

    Page {
        id: busycard
        anchors.fill: parent
        visible: false

        Button {
            id: back3
            width: 50
            height: 20
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.margins: 20
            Text {
                id: backtext
                text: "Menu"
                font.family: "Commissioner Medium"
                color: "#406070"
                anchors.centerIn: parent
                font.pixelSize: 20
            }
            background: Rectangle {
                id: backcolor
                color: "transparent"
                anchors.centerIn: parent
            }
            MouseArea {
                hoverEnabled: true
                anchors.fill: parent
                height: parent.height
                onEntered: backtext.color="#8EC7CD"
                onExited: backtext.color="#406070"
                onClicked: {
                    stackView.pop(menu)
                    console.log("Button clicked")
                }
            }
        }

        Image {
            id: face
            source: "images/photo1.png"
            width: 250
            height: 250
            fillMode: Image.PreserveAspectFit
            anchors.top: parent.top
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.topMargin: 70
        }

        Text {
            id: namelastname
            anchors.top: face.bottom
            anchors.horizontalCenter: face.horizontalCenter
            anchors.topMargin: 20
            text: "Anna Prelovskaya"
            font.family: "Commissioner SemiBold"
            font.pointSize: 20
            font.bold: true
            color: "#1E3D4C"
        }
        Text {
            id: email
            anchors.top: namelastname.bottom
            anchors.horizontalCenter: namelastname.horizontalCenter
            anchors.topMargin: 20
            text: "prelovsk@gmail.com"
            font.family: "Commissioner Medium"
            font.pointSize: 15
            color: "#1E3D4C"
        }
        Text {
            id: phone
            anchors.top: email.bottom
            anchors.horizontalCenter: email.horizontalCenter
            anchors.topMargin: 10
            text: "+79148752826"
            font.family: "Commissioner Medium"
            font.pointSize: 15
            color: "#1E3D4C"
        }
        Image {
            id: qr
            source: "images/qrtelegr.jpg"
            width: 150
            height: 150
            fillMode: Image.PreserveAspectFit
            anchors.top: phone.bottom
            anchors.horizontalCenter: phone.horizontalCenter
            anchors.topMargin: 30
        }
    }
}
