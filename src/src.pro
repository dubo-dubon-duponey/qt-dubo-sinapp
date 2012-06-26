# Basic consumer variables
include(../vars.pri)

QT = core network gui

# Build a lib
TEMPLATE = lib
DEFINES += LIBROXEESINAPP_LIBRARY

# Basic stuff (version and build/path magic)
include(../conf/confbase.pri)

# Third-party stuff
include(../third-party/bootstrap.pri)

# Windows specific configuration
win32{
    message( -> Targetting windows)
    include(../conf/confwin.pri)
}

# Mac specific configuration
mac{
    message( -> Targetting osx)
    include(../conf/confmacx.pri)
}

# Unix specific configuration
unix:!mac {
    message( -> Targetting *nux)
    include(../conf/confunix.pri)
}

INCLUDEPATH += $$PWD
INCLUDEPATH += $$PWD/include/libroxeesinapp
target.path = $$DESTDIR
INSTALLS += target

SOURCES += \
    qtlocalpeer.cpp \
    qtsingleapplication.cpp \
    sinapp.cpp \
    root.cpp

HEADERS += \
    qtlockedfile.h \
    qtlocalpeer.h \
    qtsingleapplication.h \
    include/libroxeesinapp/libroxeesinapp_global.h \
    include/libroxeesinapp/sinapp.h \
    include/libroxeesinapp/root.h
