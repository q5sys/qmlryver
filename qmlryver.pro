TEMPLATE = app

QT += webengine svg gui

SOURCES += main.cpp

RESOURCES += qml.qrc

target.path = /usr/bin

desktop.files = ryver.desktop
desktop.path = /usr/share/applications

icon.files = ryver.png
icon.path = /usr/share/icons/hicolor/scalable/apps

INSTALLS += target desktop icon
