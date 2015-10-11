import QtQuick 2.4
import QtQuick.Layouts 1.2
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4


RowLayout {

    //opacity: 0
    visible: true
    anchors.fill: parent

    CardDetail {}

    GridLayout{
        id: grid
        columns: 3
        rows: 3
        Layout.alignment: Qt.AlignLeft
        Layout.fillWidth: false
        anchors.left: parent.left

        None {}
        Card {
            frontImageSource: "img/small/maj21s.gif"
            backImageSource: "img/small/tarot-backs.gif"
            angle: 180
            yAxis: 1
        }
        None{}

        Card {
            frontImageSource: "img/small/maj21s.gif"
            backImageSource: "img/small/tarot-backs.gif"
            angle: 180
            yAxis: 1
        }

        Card {
            frontImageSource: "img/small/maj21s.gif"
            backImageSource: "img/small/tarot-backs.gif"
            angle: 180
            yAxis: 1
        }

        Card {
            frontImageSource: "img/small/maj21s.gif"
            backImageSource: "img/small/tarot-backs.gif"
            angle: 180
            yAxis: 1
        }

        None{}
        Card {
            frontImageSource: "img/small/maj21s.gif"
            backImageSource: "img/small/tarot-backs.gif"
            angle: 180
            yAxis: 1
        }
        None {}
    }

    ColumnLayout {

        Layout.alignment: Qt.AlignLeft
        Layout.fillWidth: false
        anchors.left: grid.right

        Card {
            frontImageSource: "img/small/maj21s.gif"
            backImageSource: "img/small/tarot-backs.gif"
            angle: 180
            yAxis: 1
        }
        Card {
            frontImageSource: "img/small/maj21s.gif"
            backImageSource: "img/small/tarot-backs.gif"
            angle: 180
            yAxis: 1
        }
        Card {
            frontImageSource: "img/small/maj21s.gif"
            backImageSource: "img/small/tarot-backs.gif"
            angle: 180
            yAxis: 1
        }

        Card {
            frontImageSource: "img/small/maj21s.gif"
            backImageSource: "img/small/tarot-backs.gif"
            angle: 180
            yAxis: 1
        }

    }


}
