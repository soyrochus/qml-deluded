#include "reading.h"

using namespace deluded;

Reading::Reading(QObject *parent) :
        QObject(parent)
{
}

Reading::Reading(const Reading &other) :
        QObject(0),
        m_hello(other.m_hello)
{
}

QString Reading::hello() const
{
    return m_hello;
}

void Reading::setHello(const QString &value)
{
    m_hello = value;
    emit dataChanged();
}
