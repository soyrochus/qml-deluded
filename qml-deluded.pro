TEMPLATE = app

QT += qml quick widgets

SOURCES += main.cpp \
    reading.cpp

RESOURCES += qml.qrc

# Enable C++11/14
CONFIG += c++11

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Default rules for deployment.
include(deployment.pri)

HEADERS += \
    reading.h

DISTFILES += \
    ui/Card.qml \
    ui/CardDetail.qml \
    ui/CelticCross.qml \
    ui/main.qml \
    ui/MainForm.qml \
    ui/None.qml \
    ui/ReadingModel.qml \
    ui/ReadingTest.qml \
    ui/Rect.qml \
    ui/Shuffle.qml \
	ui/Log.qml \
    ui/SingleCard.qml
