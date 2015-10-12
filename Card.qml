import QtQuick 2.4

Flipable {
    id: container

    property alias frontImageSource: frontImage.source
    property alias backImageSource: backImage.source
    property bool flipped: true
    property bool singleFlip: false
    property int xAxis: 0
    property int yAxis: 0
    property int angle: 0
    
    width: front.width
    height: front.height

    front: Image {
        id: frontImage
    }
    back: Image {
        id: backImage
        source: "img/large/tarot-back.jpg"
    }

    state: "back"

    MouseArea {
        anchors.fill: parent
        onClicked: {
            if (container.singleFlip && !container.flipped) {
                return;
            }
            container.flipped = !container.flipped
        }
    }

    transform: Rotation {
        id: rotation
        origin.x: container.width / 2
        origin.y: container.height / 2
        axis.x: container.xAxis
        axis.y: container.yAxis
        axis.z: 0
    }

    states: State {
        name: "back"
        when: container.flipped
        PropertyChanges {
            target: rotation
            angle: container.angle
        }
    }

    transitions: Transition {
        ParallelAnimation {
            NumberAnimation {
                target: rotation
                properties: "angle"
                duration: 600
            }
            SequentialAnimation {
                NumberAnimation {
                    target: container
                    property: "scale"
                    to: 0.75
                    duration: 300
                }
                NumberAnimation {
                    target: container
                    property: "scale"
                    to: 1.0
                    duration: 300
                }
            }
        }
    }
}
