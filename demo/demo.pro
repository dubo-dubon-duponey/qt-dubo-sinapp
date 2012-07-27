TEMPLATE = subdirs
#TARGET = DemoSinApp
#TEMPLATE = app
#include($$PWD/../vars.pri)
#include($$PWD/../conf/confbase.pri)

#QT = core gui

#target.path = $$DESTDIR
#INSTALLS += target

#INCLUDEPATH += $$PWD
#INCLUDEPATH += ../src/include

#LIBS += -L$${DESTDIR}/../lib

#win32{
## GCC
#    win32-g++{
#        LIBS += -lroxeesinapp
#        contains(ROXEE_LINK_TYPE, static){
#            DEFINES += LIBROXEESINAPP_USE_STATIC
#        }
#    }else{
## MSVC
#        contains(ROXEE_LINK_TYPE, static){
#            LIBS += -lroxeesinapp
#        }else{
#            LIBS += -lroxeesinapp0
#        }

#    }
#}

#SOURCES += main.cpp
