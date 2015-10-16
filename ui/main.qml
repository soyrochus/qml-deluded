import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Controls.Styles 1.4
import QtQuick.Window 2.2
import QtQuick.Dialogs 1.2
import QtQuick.Layouts 1.2

ApplicationWindow {

    id: app
    property string deluded: "Deluded"

    title: qsTr(deluded)
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

    toolBar:ToolBar {
        RowLayout {
            anchors.fill: parent
            ToolButton {
                iconName: "back"
            }
            /*Item { Layout.fillWidth: true }
                CheckBox {
                    text: "Enabled"
                    checked: true
                    Layout.alignment: Qt.AlignRight
                }*/
        }
    }

    /*ReadingTest {

    }*/

    Shuffle {
        visible: false
    }

    CelticCross {
        visible: true
    }

    Log {
        visible: false
    }

    MainForm{
        singleCartAction: singleCart
        celticCrossAction: celticCross
        logAction: log
        visible: false
    }

    SingleCard {
        singleFlip: false
        visible: false
    }

    /* MessageDialog {
        id: messageDialog
        title: qsTr("May I have your attention, please?")

        function show(caption) {
            messageDialog.text = caption;
            messageDialog.open();
        }
    }*/
}
