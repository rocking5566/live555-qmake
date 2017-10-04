INCLUDEPATH += $${HOME_PATH}/BasicUsageEnvironment/include \
               $${HOME_PATH}/groupsock/include \
               $${HOME_PATH}/liveMedia/include \
               $${HOME_PATH}/UsageEnvironment/include
               
SOURCES += src/DummySink.cpp \
           src/main.cpp \
           src/ourRTSPClient.cpp \
           src/RTSPCtrl.cpp \
           src/StreamClientState.cpp

HEADERS += src/DummySink.h \
           src/ourRTSPClient.h \
           src/RTSPCtrl.h \
           src/StreamClientState.h