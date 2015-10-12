import QtQuick 2.4
import QtQuick.Layouts 1.2
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4

RowLayout {
    id: row

    property alias singleFlip: cart.singleFlip

    anchors.fill: parent
    Card {
        id: cart
        frontImageSource: "img/large/maj21.jpg"
        backImageSource: "img/large/tarot-back.jpg"
        angle: 180
        yAxis: 1
    }
    CardDetail {

        totalheight: cart.height
    }
}
