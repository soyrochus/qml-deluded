#include <QApplication>
#include <QQmlApplicationEngine>
#include <QQmlEngine>
#include "reading.h"

using namespace deluded;

int main(int argc, char *argv[])
{
    QApplication app(argc, argv);

    QQmlApplicationEngine engine;

    qmlRegisterType<Reading>("deluded", 1, 0, "Reading");
    //qmlRegisterType<ReadingModel>("deluded", 1, 0, "AppModel");
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    return app.exec();
}
