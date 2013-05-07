TEMPLATE = lib
QT = core network widgets

include($$PWD/../config/common.pri)

DEFINES += LIBROXEESINAPP_LIBRARY

contains(ROXEE_LINK_TYPE, static){
    DEFINES += LIBROXEESINAPP_USE_STATIC
}

INCLUDEPATH += $$PWD
INCLUDEPATH += $$PWD/include
target.path = $$DESTDIR
INSTALLS += target

copyToDestdir($$PWD/include/libroxeesinapp/*, $$DESTDIR/../include/libroxeesinapp)
copyToDestdir($$PWD/../res/redist/*, $$DESTDIR/../share/libroxeesinapp)

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
            $$PWD/include/libroxeesinapp/libroxeesinapp_global.h \
            $$PWD/include/libroxeesinapp/sinapp.h \
            $$PWD/include/libroxeesinapp/root.h
