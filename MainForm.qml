import QtQuick 2.4
import QtQuick.Layouts 1.2
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4

ColumnLayout {

    anchors {
        left: parent.left
        leftMargin: 10
        top: parent.top
        topMargin: 10
    }
    Button {
        Layout.fillWidth: true
        text: "New spread"
    }

    Button {
        Layout.fillWidth: true
        text: "Log"
    }
}


