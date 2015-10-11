import QtQuick 2.4
import QtQuick.Layouts 1.2
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4

ColumnLayout {
    id: container
    property alias singleCartAction: singleCard.action
    property alias celticCrossAction: celticCross.action
    property alias logAction: log.action

    states: State {
        name: "allcards"
        when: !(check.checked)
        PropertyChanges {
            target: imgMajor
            opacity: 0
        }
        PropertyChanges {
            target: imgAll
            opacity: 1
        }
    }

    transitions: Transition {
        ParallelAnimation {
            NumberAnimation {
                target: imgMajor
                properties: "opacity"
                duration: 300
            }
            NumberAnimation {
                target: imgAll
                properties: "opacity"
                duration: 300
            }
        }
    }

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
            id: check
            anchors.top: parent.top
            text: "Only Major Arcana"
            checked: true
        }
        Item {
            Layout.alignment: Qt.AlignLeft
            anchors.top: parent.top
            anchors.left: check.right
            height: imgMajor.height
            Image {
                id: imgMajor
                fillMode: Image.PreserveAspectFit
                source: "img/small/maj21s.gif"
                opacity: 1
            }
            Image {
                id: imgAll
                fillMode: Image.PreserveAspectFit
                source: "img/small/allcards.gif"
                opacity: 0
            }
        }
    }
    Button {
        id: log
        Layout.fillWidth: true
    }

}



