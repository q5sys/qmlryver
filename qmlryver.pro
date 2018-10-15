TEMPLATE = app

QT += webengine svg gui
lessThan(QT_MINOR_VERSION, 5.9): error("requires Qt 5.9")

SOURCES += main.cpp

RESOURCES += qml.qrc

target.path = /usr/local/bin

desktop.files = ryver.desktop
desktop.path = /usr/local/share/applications

icon.files = ryver.png
icon.path = /usr/local/share/icons/hicolor/scalable/apps

INSTALLS += target desktop icon
