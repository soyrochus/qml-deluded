import QtQuick 2.0
import deluded 1.0
import QtQuick.Layouts 1.1

Item {

    Reading {
        id: reading
        hello: "I WILL NOT ACCEPT THIS"
        onDataChanged: {
            print("Changed: " + hello);
        }
    }
    ColumnLayout {

        Text {
            text: "Hola"
        }
        Text {
            id: name
            text: "Reading: " + reading.hello
        }
        Text {
            text: "Fin"
        }
}
}

