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
