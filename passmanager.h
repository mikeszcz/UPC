#ifndef PASSMANAGER_H
#define PASSMANAGER_H

#include <QObject>
#include "passlist.h"

//singleton
//QInvokable
//List of QStrings
//Functions to add and remove fields with an index
//Will want minimum 1 field
//When pass is saved, reset the fields

class PassManager : public QObject
{
    Q_OBJECT
    // Q_PROPERTY(type, name, *)
    // Q_ABSTRACT_ITEM_MODEL - list of passes
public:
    // Accessor is PassList returns pointer to QAbstractItemModel
    explicit PassManager(QObject *parent = nullptr);
    // Get list of saved passes
    // Save a pass
        // Q_INVOKABLE()
    // Delete pass
        // Q_INVOKABLE()


signals:

private:
    // List of passes
};

#endif // PASSMANAGER_H
