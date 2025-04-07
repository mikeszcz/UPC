#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>

#include "permissions.h"
#include "DatabaseManager.h" // include DatabaseManager header - justin

#if QT_CONFIG(permissions)
    #include <QPermission>
#endif

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;

    // Initialize and expose the PassDB instance to QML
    PassDB passDB;
    engine.rootContext()->setContextProperty("passDB", &passDB);

    QObject::connect(
        &engine,
        &QQmlApplicationEngine::objectCreationFailed,
        &app,
        []() { QCoreApplication::exit(-1); },
        Qt::QueuedConnection);

    engine.addImportPath("qml");
    engine.loadFromModule("UPC", "App");

     // create an instance of DatabaseManager and open the database
    DatabaseManager databaseManager;
    if (databaseManager.openDatabase()) {
        databaseManager.createTable();  // create the passes table if it doesn't exist
    }

    // connect the databaseManager to QML
    engine.rootContext()->setContextProperty("databaseManager", &databaseManager);

    auto deniedPermissions = [&engine, &app]() {
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
