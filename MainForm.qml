import QtQuick 2.4
import QtQuick.Layouts 1.2
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4

ColumnLayout {
    property alias singleCartAction: singleCart.action
    property alias celticCrossAction: celticCross.action
    property alias logAction: log.action

    anchors {
        left: parent.left
        leftMargin: 10
        top: parent.top
        topMargin: 10
    }

    Button {
        id: singleCart
        Layout.fillWidth: true
    }

    Button {
        id: celticCross
        Layout.fillWidth: true
    }

    RowLayout {        
        CheckBox {
            anchors.top: parent.top
            text: "Only Major Arcana"
            Component.onCompleted: print(width)
        }
        Image {
            Layout.alignment: Qt.AlignLeft
            Component.onCompleted: print(paintedHeight)
            Layout.maximumHeight: 165
            id: img
            Layout.maximumWidth: 120
            height: 165
            fillMode: Image.PreserveAspectFit
            anchors.top: parent.top
            source: "img/large/maj21.jpg"
        }

    }
    Button {
        id: log
        Layout.fillWidth: true
    }

}



