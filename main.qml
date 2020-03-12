import QtQuick 2.0
import QtQuick.Window 2.0
import QtWebEngine 1.1

Window {
    width: 1024
    height: 750
    visible: true
    title: "Ryver"
    WebEngineView {
        profile.httpUserAgent: "Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.4 (KHTML, like Gecko) Chrome/22.0.1229.94 Safari/537.4" 
        anchors.fill: parent
        url: URL
    }
   
}

