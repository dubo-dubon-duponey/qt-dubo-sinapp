TEMPLATE = app
QT = core widgets

include($$PWD/../config/common.pri)

INCLUDEPATH += $$PWD
target.path = $$DESTDIR
INSTALLS += target

LIBS += -l$${ROXEE_LINK_NAME}

contains(ROXEE_LINK_TYPE, static){
    DEFINES += LIBROXEESINAPP_USE_STATIC
}

SOURCES +=  $$PWD/main.cpp
