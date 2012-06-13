# Basic consumer variables
include(../vars.pri)

# This is a library (to be ovveridden by eg MSVC specific config)
TEMPLATE = lib

# Requires only core
QT = core network gui

# And be boring
CONFIG +=   QT_NO_CAST_FROM_ASCII \
            QT_NO_CAST_TO_ASCII \
            QT_STRICT_ITERATORS \
            QT_USE_FAST_CONCATENATION QT_USE_FAST_OPERATOR_PLUS

# Yes, this will build a lib
DEFINES += LIBROXEESINAPP_LIBRARY

# Basic stuff (version and build/path magic)
include(../conf/confbase.pri)

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
    message( -> Targetting linux)
    include(../conf/confunix.pri)
}

INCLUDEPATH += $$PWD
target.path = $$DESTDIR
INSTALLS += target

CONFIG += absolute_library_soname

#LIBROXEESINAPPSHARED_EXPORT
SOURCES += \
    qtlocalpeer.cpp \
    qtsingleapplication.cpp \
    sinapp.cpp \
    root.cpp

#    qtlockedfile.cpp \
#    qtlockedfile_win.cpp \
#    qtlockedfile_unix.cpp \
#    qtsinglecoreapplication.h \
#    qtsinglecoreapplication.h \

HEADERS += \
    qtlockedfile.h \
    qtlocalpeer.h \
    qtsingleapplication.h \
    libroxeesinapp_global.h \
    sinapp.h \
    root.h
