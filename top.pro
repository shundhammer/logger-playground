# Toplevel qmake .pro file. Create a Makefile from this with
#
#     qmake
#
# Then build the program with
#
#     make
#
# Then install it with
#
#     sudo make install

TEMPLATE = subdirs
CONFIG  += ordered

SUBDIRS  = src 
