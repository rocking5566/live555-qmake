INCLUDEPATH += $${HOME_PATH}/BasicUsageEnvironment/include \
               $${HOME_PATH}/groupsock/include \
               $${HOME_PATH}/liveMedia/include \
               $${HOME_PATH}/UsageEnvironment/include
               
SOURCES += mediaServer/DynamicRTSPServer.cpp \
           mediaServer/live555MediaServer.cpp

HEADERS += mediaServer/DynamicRTSPServer.hh \
           mediaServer/version.hh