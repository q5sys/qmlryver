#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <qtwebengineglobal.h>
#include <QDir>
#include <stdlib.h>
#include <QDebug>
#include <QQmlContext>
#include <QIcon>
#include <QtSvg>

int main(int argc, char *argv[]){
  setenv("XDG_RUNTIME_DIR", (QDir::homePath()+"/.config/ryver").toLocal8Bit(), false);
 
  QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
  QGuiApplication app(argc, argv);
  QtWebEngine::initialize();
  QString urlarg = QString(argv[1]);
  qDebug() << urlarg;
  QQmlApplicationEngine ryverinstance;
  ryverinstance.load(QUrl(QStringLiteral("qrc:/main.qml")));
  ryverinstance.rootContext()->setContextProperty("URL", urlarg);
  app.setWindowIcon(QIcon("/usr/local/share/icons/hicolor/scalable/apps/ryver.png"));

  return app.exec();
}
