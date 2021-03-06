#-------------------------------------------------
#
# Project created by QtCreator 2017-03-03T09:03:26
#
#-------------------------------------------------

QT       += core gui \
            multimedia \
            multimediawidgets \
            widgets

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = qt_multimedia_player
TEMPLATE = app

# The following define makes your compiler emit warnings if you use
# any feature of Qt which as been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0


SOURCES += main.cpp\
        player.cpp \
    playpausebutton.cpp \
    stopbutton.cpp \
    previousbutton.cpp \
    nextbutton.cpp \
    openfilebutton.cpp \
    closebutton.cpp \
    reducebutton.cpp \
    fullscreenbutton.cpp

HEADERS  += player.h \
    playpausebutton.h \
    stopbutton.h \
    previousbutton.h \
    nextbutton.h \
    openfilebutton.h \
    closebutton.h \
    reducebutton.h \
    fullscreenbutton.h

RESOURCES += \
    resources.qrc

DISTFILES += \
    lightStyle.qss \
    darkStyle.qss

TRANSLATIONS = languages/appli_fr.ts languages/appli_en.ts
