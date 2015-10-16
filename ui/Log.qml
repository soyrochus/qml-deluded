import QtQuick 2.4
import QtQuick.Layouts 1.2
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4

Rectangle {
    width: 180; height: 200

    function imgUrl(img){

        return (img === 0) ? "qrc:/img/icons/card.png" : "qrc:/img/icons/celticcross.png"
    }


    Component {
        id: logDelegate
        Item {
            width: 300; height: 80
            RowLayout {
                Text { text: date; width: 100}
                Image {
                    source: imgUrl(img)
                    width:100
                }
                Text { text: reading; width: 100 }
            }
        }
    }

    Component {
        id: header
        Item {
            width: 300; height: 80
            RowLayout {
                Text { text: '<b>Date:</b>' ; width: 100}
                Text { text: '<b>Reading:</b>' ; width: 100}
                Text { text: '<b>Interpretation:</b>' ; width: 100}
            }
        }
    }

    ListView {
        header: header
        anchors.fill: parent
        model: ReadingModel {}
        delegate: logDelegate
        highlight: Rectangle { color: "lightsteelblue"; radius: 5 }
        focus: true
    }
}
