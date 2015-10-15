#ifndef READING_H
#define READING_H

#include <QObject>

namespace deluded {

class Reading : public QObject {
    Q_OBJECT
    Q_PROPERTY(QString hello
               READ hello WRITE setHello
               NOTIFY dataChanged)

public:
    explicit Reading(QObject *parent = 0);
    Reading(const Reading &other);

    QString hello() const;

    void setHello(const QString &value);

signals:
    void dataChanged();
//! [0]
private:
    QString m_hello = "Hola mundo!";

};

}
#endif // READING_H


