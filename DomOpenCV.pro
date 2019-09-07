#-------------------------------------------------
#
# Project created by QtCreator 2019-08-11T18:52:24
#
#-------------------------------------------------

QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = domopencv
TEMPLATE = app

# The following define makes your compiler emit warnings if you use
# any feature of Qt which has been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

CONFIG += c++11

SOURCES += \
        DataBase/adduser.cpp \
        DataBase/database.cpp \
        DataBase/regsUsers.cpp \
        Login/login.cpp \
        main.cpp \
        mainwindow.cpp \
        video/mainvideocapture.cpp

HEADERS += \
        DataBase/adduser.h \
        DataBase/database.h \
        DataBase/regsUsers.h \
        Login/login.h \
        mainwindow.h \
        video/mainvideocapture.h

FORMS += \
        DataBase/adduser.ui \
        DataBase/regsUsers.ui \
        Login/login.ui \
        mainwindow.ui

INCLUDEPATH += 'pkg-config --cflags opencv'
LIBS        += `pkg-config --libs opencv`

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

RESOURCES += \
    iconos/iconos.qrc \
    imagenes/habitaciones.qrc \
    imagenes/imagenes.qrc
