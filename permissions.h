#ifndef PERMISSIONS_H
#define PERMISSIONS_H

#include <QObject>
#include <QQmlEngine>

class Permissions : public QObject
{
    Q_OBJECT
    QML_ELEMENT
    QML_SINGLETON
    Q_PROPERTY(QString reason READ reason NOTIFY reasonChanged)
public:
    inline static Permissions *createPermission(QQmlEngine *qmlEngine, QJSEngine *) {
        return instance();
    }

    inline static Permissions *instance() {
        if (!s_Permissions) {
            s_Permissions = new Permissions();
        }
        return s_Permissions;
    }

    inline void setReason(const QString &reason) {
        m_reason = reason;
    }

    inline QString reason() const {
        return m_reason;
    }


signals:
    void permissionDenied(const QString &reason);
    void reasonChanged();

private:
    explicit Permissions(QObject *parent = nullptr);
    inline static Permissions *s_Permissions = nullptr;
    QString m_reason;
};

#endif // PERMISSIONS_H
