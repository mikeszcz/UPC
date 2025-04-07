#ifndef PASSMANAGER_H
#define PASSMANAGER_H

#include <QObject>

// //old version, diont use - justin

// class PassManager : public QObject {
//     Q_OBJECT
//     Q_PROPERTY(QString name READ name WRITE setName NOTIFY nameChanged)
//     Q_PROPERTY(QString codeType READ codeType WRITE setCodeType NOTIFY codeTypeChanged)
//     Q_PROPERTY(QString description READ description WRITE setDescription NOTIFY descriptionChanged)
//     Q_PROPERTY(QString scanFilePath READ scanFilePath WRITE setScanFilePath NOTIFY scanFilePathChanged)

// public:
//     explicit PassManager(QObject *parent = nullptr);

//     QString name() const;
//     void setName(const QString &value);

//     QString codeType() const;
//     void setCodeType(const QString &value);

//     QString description() const;
//     void setDescription(const QString &value);

//     QString scanFilePath() const;
//     void setScanFilePath(const QString &value);

//     Q_INVOKABLE void save();

// signals:
//     void nameChanged();
//     void codeTypeChanged();
//     void descriptionChanged();
//     void scanFilePathChanged();

// private:
//     QString m_name;
//     QString m_codeType;
//     QString m_description;
//     QString m_scanFilePath;
// };

// #endif