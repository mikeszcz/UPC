#include <QGuiApplication>
#include <QQmlApplicationEngine>

#include "permissions.h"

#if QT_CONFIG(permissions)
    #include <QPermission>
#endif

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    QObject::connect(
        &engine,
        &QQmlApplicationEngine::objectCreationFailed,
        &app,
        []() { QCoreApplication::exit(-1); },
        Qt::QueuedConnection);

    engine.addImportPath("qml");

    engine.loadFromModule("UPC", "App");

    auto deniedPermissions = [&engine, &app]() {
        // Qt.quit() called in embedded .qml by default only emits
        // quit() signal, so do this (optionally use Qt.exit()).
        QObject::connect(&engine, &QQmlEngine::quit, &app, &QGuiApplication::quit);
        emit Permissions::instance()->permissionDenied("You need to allow this application to use the camera.");
    };

    #if QT_CONFIG(permissions)
        QCameraPermission cameraPermission;
        qApp->requestPermission(cameraPermission, [=](const QPermission &permission) {
            if (permission.status() == Qt::PermissionStatus::Denied)
                deniedPermissions();
        });
    #endif

    return app.exec();
}
