TEMPLATE = lib
QT = core network widgets

PROJECT_ROOT = $$PWD/..
include($$PROJECT_ROOT/config/qmakeitup.pri)

INCLUDEPATH += $$PWD

DEFINES += LIBDUBOSINAPP_LIBRARY
contains(DUBO_LINK_TYPE, static){
    DEFINES += LIBDUBOSINAPP_USE_STATIC
}

copyToDestdir($$PWD/lib$${TARGET}/*, $$DESTDIR/../include/lib$${TARGET})
copyToDestdir($$PWD/../res/redist/*, $$DESTDIR/../share/lib$${TARGET})

SOURCES +=  $$PWD/qtlockedfile.cpp \
            $$PWD/qtlockedfile_win.cpp \
            $$PWD/qtlockedfile_unix.cpp \
            $$PWD/qtlocalpeer.cpp \
            $$PWD/qtsingleapplication.cpp \
            $$PWD/sinapp.cpp \
            $$PWD/root.cpp

HEADERS +=  $$PWD/qtlockedfile.h \
            $$PWD/qtlocalpeer.h \
            $$PWD/qtsingleapplication.h \
            $$PWD/lib$${TARGET}/libdubosinapp_global.h \
            $$PWD/lib$${TARGET}/sinapp.h \
            $$PWD/lib$${TARGET}/root.h
