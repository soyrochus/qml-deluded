import QtQuick 2.4
import QtQuick.Layouts 1.2
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4


RowLayout {

    //opacity: 0
    visible: true
    anchors.fill: parent

    Component {
        id: none
        Text {
            text:""
        }
    }

    GridLayout{
        id: grid
        columns: 3
        rows: 3
        Layout.alignment: Qt.AlignLeft
        //Layout.fillWidth: false
        //anchors.left: parent.left

        None {}
        Card {
            frontImageSource: "qrc:/img/small/maj21s.gif"
            backImageSource: "qrc:/img/small/tarot-backs.gif"
            angle: 180
            yAxis: 1
        }
        None{}

        Card {
            frontImageSource: "qrc:/img/small/maj21s.gif"
            backImageSource: "qrc:/img/small/tarot-backs.gif"
            angle: 180
            yAxis: 1
        }

        Card {
            frontImageSource: "qrc:/img/small/maj21s.gif"
            backImageSource: "qrc:/img/small/tarot-backs.gif"
            angle: 180
            yAxis: 1
        }

        Card {
            frontImageSource: "qrc:/img/small/maj21s.gif"
            backImageSource: "qrc:/img/small/tarot-backs.gif"
            angle: 180
            yAxis: 1
        }

        None{}
        Card {
            frontImageSource: "qrc:/img/small/maj21s.gif"
            backImageSource: "qrc:/img/small/tarot-backs.gif"
            angle: 180
            yAxis: 1
        }
        None {}
    }

    ColumnLayout {
        id: column
        Layout.alignment: Qt.AlignLeft
        //Layout.fillWidth: false
        //anchors.left: grid.right

        Card {
            frontImageSource: "qrc:/img/small/maj21s.gif"
            backImageSource: "qrc:/img/small/tarot-backs.gif"
            angle: 180
            yAxis: 1
        }
        Card {
            frontImageSource: "qrc:/img/small/maj21s.gif"
            backImageSource: "qrc:/img/small/tarot-backs.gif"
            angle: 180
            yAxis: 1
        }
        Card {
            frontImageSource: "qrc:/img/small/maj21s.gif"
            backImageSource: "qrc:/img/small/tarot-backs.gif"
            angle: 180
            yAxis: 1
        }

        Card {
            frontImageSource: "qrc:/img/small/maj21s.gif"
            backImageSource: "qrc:/img/small/tarot-backs.gif"
            angle: 180
            yAxis: 1
        }

    }
    CardDetail {
        totalheight: column.height
        //anchors.left: column.right
    }


}
