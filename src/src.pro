TEMPLATE = lib
QT = core network gui

include($$PWD/../vars.pri)
include($$PWD/../conf/confbase.pri)

# Windows specific configuration
win32{
    message( -> Targetting windows)
    include($$PWD/../conf/confwin.pri)
}

# Mac specific configuration
mac{
    message( -> Targetting osx)
    include($$PWD/../conf/confmacx.pri)
}

# Unix specific configuration
unix:!mac {
    message( -> Targetting *nux)
    include($$PWD/../conf/confunix.pri)
}

DEFINES += LIBROXEESINAPP_LIBRARY

contains(ROXEE_LINK_TYPE, static){
    DEFINES += LIBROXEESINAPP_USE_STATIC
}

INCLUDEPATH += $$PWD
INCLUDEPATH += $$PWD/include
target.path = $$DESTDIR
INSTALLS += target


SOURCES +=  $$PWD/qtlocalpeer.cpp \
            $$PWD/qtsingleapplication.cpp \
            $$PWD/sinapp.cpp \
            $$PWD/root.cpp

HEADERS +=  $$PWD/qtlockedfile.h \
            $$PWD/qtlocalpeer.h \
            $$PWD/qtsingleapplication.h \
            $$PWD/include/libroxeesinapp/libroxeesinapp_global.h \
            $$PWD/include/libroxeesinapp/sinapp.h \
            $$PWD/include/libroxeesinapp/root.h
