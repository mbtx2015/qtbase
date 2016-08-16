TARGET = qeglfs-mali-integration

QT += core-private gui-private platformsupport-private eglfsdeviceintegration-private

# Avoid X11 header collision, use generic EGL native types
DEFINES += QT_EGL_NO_X11

INCLUDEPATH += $$PWD/../..
CONFIG += egl
QMAKE_LFLAGS += $$QMAKE_LFLAGS_NOUNDEF

SOURCES += $$PWD/qeglfsmalimain.cpp \
           $$PWD/qeglfsmaliintegration.cpp

HEADERS += $$PWD/qeglfsmaliintegration.h

OTHER_FILES += $$PWD/eglfs_mali.json

PLUGIN_TYPE = egldeviceintegrations
PLUGIN_CLASS_NAME = QEglFSMaliIntegrationPlugin
load(qt_plugin)
