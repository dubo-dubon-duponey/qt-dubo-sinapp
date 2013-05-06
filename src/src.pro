TEMPLATE = lib
QT = core network widgets

include($$PWD/../conf/conf.pri)

DEFINES += LIBROXEESINAPP_LIBRARY

contains(ROXEE_LINK_TYPE, static){
    DEFINES += LIBROXEESINAPP_USE_STATIC
}

INCLUDEPATH += $$PWD
INCLUDEPATH += $$PWD/include
target.path = $$DESTDIR
INSTALLS += target


defineTest(copyToDestdir) {
    files = $$1
    dest = $$2

    for(FILE, files) {
        DDIR = $$dest

        # Replace slashes in paths with backslashes for Windows
        win32:FILE ~= s,/,\\,g
        win32:DDIR ~= s,/,\\,g

        win32{
            system(mkdir $$quote($$DDIR))
        }else{
            system(mkdir -p $$quote($$DDIR))
        }
        message(********************************************)
        message($$QMAKE_COPY $$quote($$FILE) $$quote($$DDIR) $$escape_expand(\\n\\t))
        message(********************************************)

        QMAKE_POST_LINK += $$QMAKE_COPY $$quote($$FILE) $$quote($$DDIR) $$escape_expand(\\n\\t)
    }

    export(QMAKE_POST_LINK)
}

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
