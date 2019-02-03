TEMPLATE = lib
QT = core network widgets

PROJECT_ROOT = $$PWD/..
include($$PROJECT_ROOT/config/qmakeitup.pri)

INCLUDEPATH += $$PWD

HEADERS +=  $$PWD/qtlockedfile.h \
            $$PWD/qtlocalpeer.h \
            $$PWD/qtsingleapplication.h \
            $$PWD/lib$${TARGET}/global.h \
            $$PWD/lib$${TARGET}/sinapp.h \
            $$PWD/lib$${TARGET}/root.h

SOURCES +=  $$PWD/qtlockedfile.cpp \
            $$PWD/qtlockedfile_win.cpp \
            $$PWD/qtlockedfile_unix.cpp \
            $$PWD/qtlocalpeer.cpp \
            $$PWD/qtsingleapplication.cpp \
            $$PWD/sinapp.cpp \
            $$PWD/root.cpp
