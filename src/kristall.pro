QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets network multimedia multimediawidgets

CONFIG += c++17

# The following define makes your compiler emit warnings if you use
# any Qt feature that has been marked deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

QMAKE_CFLAGS += -Wno-unused-parameter
QMAKE_CXXFLAGS += -Wno-unused-parameter

SOURCES += \
    browsertab.cpp \
    documentoutlinemodel.cpp \
    documentstyle.cpp \
    favouritecollection.cpp \
    fingerclient.cpp \
    geminiclient.cpp \
    geminirenderer.cpp \
    gopherclient.cpp \
    gophermaprenderer.cpp \
    ioutil.cpp \
    main.cpp \
    mainwindow.cpp \
    mediaplayer.cpp \
    plaintextrenderer.cpp \
    protocolsetup.cpp \
    settingsdialog.cpp \
    tabbrowsinghistory.cpp \
    webclient.cpp

HEADERS += \
    browsertab.hpp \
    documentoutlinemodel.hpp \
    documentstyle.hpp \
    favouritecollection.hpp \
    fingerclient.hpp \
    geminiclient.hpp \
    geminirenderer.hpp \
    gopherclient.hpp \
    gophermaprenderer.hpp \
    ioutil.hpp \
    kristall.hpp \
    mainwindow.hpp \
    mediaplayer.hpp \
    plaintextrenderer.hpp \
    protocolsetup.hpp \
    settingsdialog.hpp \
    tabbrowsinghistory.hpp \
    webclient.hpp

FORMS += \
    browsertab.ui \
    mainwindow.ui \
    mediaplayer.ui \
    settingsdialog.ui

TRANSLATIONS += \
    kristall_en_US.ts

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

RESOURCES += \
  ../lib/BreezeStyleSheets/breeze.qrc \
  icons.qrc

DISTFILES += \
  gophertypes.txt
