# qmake .pro file
#
# Go to the project toplevel dir and build all Makefiles:
#
#     qmake
#
# Then build with
#
#     make
#

TEMPLATE         = app

QT              += widgets

# Commented out to get -O2 optimization by default (issue #160)
CONFIG          += debug
DEPENDPATH      += .
MOC_DIR          = .moc
OBJECTS_DIR      = .obj


TARGET           = logtest
INSTALLS        += TARGET


QMAKE_CXXFLAGS  +=  -Wno-deprecated -Wno-deprecated-declarations


SOURCES   = main.cc             \
            Logger.cc           \

            # Exception.cc


HEADERS   =                     \
            Logger.h            \


            # Exception.h

