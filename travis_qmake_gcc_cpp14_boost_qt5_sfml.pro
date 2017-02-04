# Cannot use -Weffc++ with Qt5
QMAKE_CXXFLAGS += -Wall -Wextra -Werror

SOURCES += main.cpp
SOURCES += my_dialog.cpp
FORMS   += my_dialog.ui
HEADERS += my_dialog.h
RESOURCES += travis_qmake_gcc_cpp14_boost_qt5_sfml.qrc

# C++14
CONFIG += c++14
QMAKE_CXX = g++-5
QMAKE_LINK = g++-5
QMAKE_CC = gcc-5
QMAKE_CXXFLAGS += -std=c++14

# Qt5
QT += core gui widgets
# Prevent Qt for failing with this error:
# qrc_[*].cpp:400:44: error: ‘qInitResources_[*]__init_variable__’ defined but not used
# [*]: the resource filename
QMAKE_CXXFLAGS += -Wno-unused-variable

# SFML
LIBS += -lsfml-graphics -lsfml-window -lsfml-system -lsfml-audio
