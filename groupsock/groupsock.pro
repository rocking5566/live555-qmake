TARGET = groupsock
HOME_PATH = $${PWD}/..

# Project setting
QT     -= gui
CONFIG -= flat
CONFIG += c++11
CONFIG += staticlib
TEMPLATE = lib

# Include file(s) (Include the pri file generated by VS-Addin.)
include(groupsock.pri)

win32 {
    QMAKE_CXXFLAGS += /Zi
    contains(QMAKE_TARGET.arch, x86_64) {
        QMAKE_LFLAGS += /MACHINE:X64

        CONFIG(debug, debug|release) {
            DESTDIR = $${HOME_PATH}/build/x64/Debug
            QMAKE_LFLAGS_WINDOWS += /LARGEADDRESSAWARE
        }
        else {
            DESTDIR = $${HOME_PATH}/build/x64/Release
            QMAKE_LFLAGS_WINDOWS += /debug /opt:ref /MAP /MAPINFO:EXPORTS /LARGEADDRESSAWARE
        }
    }
    else {
        QMAKE_LFLAGS += /MACHINE:X86
        #Require x86 lib
        #LIBS +=
        CONFIG(debug, debug|release) {
            DESTDIR = $${HOME_PATH}/build/Win32/Debug
            QMAKE_LFLAGS_WINDOWS += /LARGEADDRESSAWARE
        }
        else {
            DESTDIR = $${HOME_PATH}/build/Win32/Release
            QMAKE_LFLAGS_WINDOWS += /debug /opt:ref /MAP /MAPINFO:EXPORTS /LARGEADDRESSAWARE
        }
    }
}

linux-g++ {
    CONFIG(debug, debug|release) {
        DESTDIR = $${HOME_PATH}/build/Debug
    }
    else {
        DESTDIR = $${HOME_PATH}/build/Release
    }
}
