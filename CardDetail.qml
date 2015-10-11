import QtQuick 2.4
import QtQuick.Layouts 1.2
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4

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
