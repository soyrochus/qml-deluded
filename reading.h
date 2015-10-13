#ifndef READING_H
#define READING_H

#include <QObject>

namespace deluded {

class Reading : public QObject
{
    Q_OBJECT
public:
    explicit Reading(QObject *parent = 0);

signals:

public slots:
};

}
#endif // READING_H
