import QtQuick 2.4
import QtQuick.Controls 1.3

Item {
    id: pbholder
    anchors.fill: parent
    Text {
        id: shuffleText
        text: "Please concentrate on the subject at hand...\n"
        anchors.centerIn: pbholder
    }
   ProgressBar {
        indeterminate: true
        x: 80
        width: pbholder.width - 160
        anchors.top: shuffleText.bottom
    }
}
