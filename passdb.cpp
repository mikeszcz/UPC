#include "passdb.h"
#include <QSqlQuery>
#include <QSqlError>
#include <QDebug>

//old version, diont use - justin

// PassDB::PassDB(QObject *parent) : QObject(parent) {
//     db = QSqlDatabase::addDatabase("QSQLITE");
//     db.setDatabaseName("pass_storage.db");
//     if (!db.open()) {
//         qWarning() << "Failed to open DB:" << db.lastError().text();
//     } else {
//         initDB();
//     }
// }

// void PassDB::initDB() {
//     QSqlQuery query;
//     query.exec("CREATE TABLE IF NOT EXISTS passes ("
//                "id INTEGER PRIMARY KEY AUTOINCREMENT,"
//                "name TEXT,"
//                "type TEXT,"
//                "description TEXT"
//                ")");
// }

// bool PassDB::savePass(const QString &name, const QString &type, const QString &description) {
//     QSqlQuery query;
//     query.prepare("INSERT INTO passes (name, type, description) VALUES (?, ?, ?)");
//     query.addBindValue(name);
//     query.addBindValue(type);
//     query.addBindValue(description);
//     if (!query.exec()) {
//         qWarning() << "Failed to insert pass:" << query.lastError().text();
//         return false;
//     }
//     return true;
// }
