# Enforce recent QT
lessThan(QT_VERSION, 4.8) {
    error("RoxeeSinApp is tested only with Qt 4.8 or greater")
}

# Explore subdirs in order
TEMPLATE = subdirs
CONFIG = ordered
SUBDIRS = src demo

OTHER_FILES += vars.pri.in \
    res/doxygen.tpl \
    res/redist/AUTHORS \
    res/redist/ChangeLog \
    res/redist/LICENSE.BSD2 \
    README
