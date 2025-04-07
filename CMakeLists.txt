cmake_minimum_required(VERSION 3.16)

project(UPC VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 REQUIRED COMPONENTS Core Gui Multimedia Qml Quick)

qt_standard_project_setup(REQUIRES 6.8)

set(QML_IMPORT_PATH ${CMAKE_SOURCE_DIR}/qml)

qt_add_executable(appUPC
    main.cpp
)

qt_add_qml_module(appUPC
    URI UPC
    VERSION 1.0

RESOURCES qml/Capstone/designer/plugin.metainfo qml/Capstone/qmldir qml/CapstoneContent/capstone/assets/_black_and_white_pencil_clip_art_png_download_2120721743_1.png qml/CapstoneContent/capstone/assets/_layer_512x512_1841106978_1.png qml/CapstoneContent/capstone/assets/abf432912007028bd9337_4140881491_1.png qml/CapstoneContent/capstone/assets/c98d598a5000448ea94_1150086741_1.png qml/CapstoneContent/capstone/assets/element.png qml/CapstoneContent/capstone/assets/element1.png qml/CapstoneContent/capstone/assets/element6.png qml/CapstoneContent/capstone/assets/example_QR_code_1418360.png qml/CapstoneContent/capstone/assets/example_QR_code_1418360_1.png qml/CapstoneContent/capstone/assets/example_QR_code_1418361.png qml/CapstoneContent/capstone/assets/transparent_folder_icon_22_3803737133_1.png qml/CapstoneContent/capstone/assets/very_Basic_Upload_icon_1277321410_1.png qml/CapstoneContent/capstone/assets/wp1863757_2895884541_1.png qml/CapstoneContent/fonts/fonts.txt qml/Generated/Quick3DAssets.txt qml/i18n/qml_en.qm qml/qtquickcontrols2.conf
QML_FILES qml/Capstone/Constants.qml qml/Capstone/EventListModel.qml qml/Capstone/EventListSimulator.qml qml/CapstoneContent/capstone/Capstone.ui.qml qml/CapstoneContent/capstone/Component_1.ui.qml qml/CapstoneContent/App.qml qml/CapstoneContent/CameraPopup.ui.qml qml/CapstoneContent/HomeScreen.ui.qml qml/CapstoneContent/NewPassScanScreen.ui.qml qml/CapstoneContent/NewPassSelectionScreen.ui.qml qml/CapstoneContent/PassSavedScreen.ui.qml qml/CapstoneContent/PreviewScreen.ui.qml qml/CapstoneContent/SavedPassesScreen.ui.qml
SOURCES passmanager.h passmanager.cpp passlist.h passlist.cpp pass.h pass.cpp
SOURCES permissions.h permissions.cpp
QML_FILES qml/CapstoneContent/PermissionPopup.ui.qml
)

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(appUPC PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.appUPC
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appUPC
    PUBLIC Qt6::Quick
    Qt::Core
    Qt::Gui
    Qt::Multimedia
    Qt::Qml
)

include(GNUInstallDirs)
install(TARGETS appUPC
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
