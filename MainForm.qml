import QtQuick 2.4
import QtQuick.Layouts 1.2
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4

ColumnLayout {
    property alias singleCartAction: singleCard.action
    property alias celticCrossAction: celticCross.action
    property alias logAction: log.action

    anchors {
        left: parent.left
        leftMargin: 10
        top: parent.top
        topMargin: 10
    }

    Button {
        id: singleCard
        Layout.fillWidth: true
        iconSource: "img/icons/card.png"
        style: ButtonStyle {
            background: Rectangle {
                /*implicitWidth: 100
                        implicitHeight: 25*/
                border.width: control.activeFocus ? 2 : 1
                border.color: "#888"
                radius: 4
                gradient: Gradient {
                    GradientStop { position: 0 ; color: control.pressed ? "#ccc" : "#eee" }
                    GradientStop { position: 1 ; color: control.pressed ? "#aaa" : "#ccc" }
                }
            }
        }
    }

    Button {
        id: celticCross
        Layout.fillWidth: true
        iconSource: "img/icons/celticcross.png"
        style: ButtonStyle {
            background: Rectangle {
                /*implicitWidth: 100
                        implicitHeight: 25*/
                border.width: control.activeFocus ? 2 : 1
                border.color: "#888"
                radius: 4
                gradient: Gradient {
                    GradientStop { position: 0 ; color: control.pressed ? "#ccc" : "#eee" }
                    GradientStop { position: 1 ; color: control.pressed ? "#aaa" : "#ccc" }
                }
            }
        }
    }


    RowLayout {
        CheckBox {
            anchors.top: parent.top
            text: "Only Major Arcana"
        }
        Image {
            Layout.alignment: Qt.AlignLeft
            //Layout.maximumHeight: 165
            id: img
            //Layout.maximumWidth: 120
            //height: 165
            fillMode: Image.PreserveAspectFit
            anchors.top: parent.top
            source: "img/small/maj21s.gif"
            //source: "img/large/maj21.jpg"
        }

    }
    Button {
        id: log
        Layout.fillWidth: true
    }

}



