#include "DatabaseManager.h"
#include <QSqlQuery>
#include <QSqlError>
#include <QDebug>

//dunno if this works, machine is bugging out and cant text - justin

DatabaseManager::DatabaseManager(QObject *parent) : QObject(parent)
{
    db = QSqlDatabase::addDatabase("QSQLITE");
    db.setDatabaseName("INSERT LATER"); // Path to the SQLite local DB file
}

DatabaseManager::~DatabaseManager()
{
    closeDatabase();
}

bool DatabaseManager::openDatabase()
{
    if (!db.open()) {
        qDebug() << "Error: Unable to open database";
        return false;
    }
    return true;
}

void DatabaseManager::closeDatabase()
{
    db.close();
}

bool DatabaseManager::createTable()
{
    QSqlQuery query;
    if (!query.exec("CREATE TABLE IF NOT EXISTS passes ("
                    "id INTEGER PRIMARY KEY AUTOINCREMENT, "
                    "name TEXT, "
                    "icon TEXT, "
                    "description TEXT)")) {
        qDebug() << "Error: Unable to create table" << query.lastError();
        return false;
    }
    return true;
}

bool DatabaseManager::insertPass(const QString &name, const QString &icon, const QString &description)
{
    QSqlQuery query;
    query.prepare("INSERT INTO passes (name, icon, description) "
                  "VALUES (:name, :icon, :description)");
    query.bindValue(":name", name);
    query.bindValue(":icon", icon);
    query.bindValue(":description", description);

    if (!query.exec()) {
        qDebug() << "Error: Unable to insert pass" << query.lastError();
        return false;
    }
    return true;
}

QSqlQuery DatabaseManager::getAllPasses()
{
    QSqlQuery query("SELECT * FROM passes");
    return query;
}

QSqlQuery DatabaseManager::getPassById(int id)
{
    QSqlQuery query;
    query.prepare("SELECT * FROM passes WHERE id = :id");
    query.bindValue(":id", id);
    query.exec();
    return query;
}
