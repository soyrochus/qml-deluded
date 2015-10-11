import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Controls.Styles 1.4
import QtQuick.Window 2.2
import QtQuick.Dialogs 1.2
import QtQuick.Layouts 1.2


ApplicationWindow {
    title: qsTr("Hello World")
    minimumWidth: 800
    minimumHeight: 600
    visible: true

    style: ApplicationWindowStyle {
        background: Rectangle {
            anchors.fill: parent
            color: "white"
        }
    }

    Action {
        id: singleCart
        text: qsTr("&Single Card")
        onTriggered: print("New Single Card")
    }

    Action {
        id: celticCross
        text: qsTr("&Celtic Cross")
        onTriggered: print("New Celtic Cross")
    }

    Action {
        id: log
        text: qsTr("&Log")
        onTriggered: print("Log")
    }

    Action {
        id: exit
        text: qsTr("E&xit")
        onTriggered: Qt.quit();
    }

    menuBar: MenuBar {
        Menu {
            title: qsTr("&File")
            MenuItem {
                action: log
            }
            MenuItem {
                action: exit              
            }
        }
    }

    MainForm{
       singleCartAction: singleCart
       celticCrossAction: celticCross
       logAction: log
    }


    RowLayout {
        id: row
        visible: false
        anchors.fill: parent
        Card {
            id: cart
            frontImageSource: "img/large/maj21.jpg"
            backImageSource: "img/large/tarot-back.jpg"
            angle: 180
            yAxis: 1
        }
        Rectangle {
            id: cartText
            Layout.fillWidth: true
            Layout.margins: 2
            height: cart.height - 10
            border.color: "lightsteelblue"
            border.width: 4
            radius: 8
            Text{              
                anchors.margins: 10
                anchors.fill: parent
                text: "<b>Hello</b> <i>World!</i>"
                font.family: "Century Schoolbook L"
                font.pointSize: 12
            }
        }
    }

    /*MainForm {L
        anchors.fill: parent
        button1.onClicked: messageDialog.show(qsTr("Button 1 pressed"))
        button2.onClicked: messageDialog.show(qsTr("Button 2 pressed"))
        button3.onClicked: messageDialog.show(qsTr("Button 3 pressed"))
    }

    MessageDialog {
        id: messageDialog
        title: qsTr("May I have your attention, please?")

        function show(caption) {
            messageDialog.text = caption;
            messageDialog.open();
        }
    }*/
}
