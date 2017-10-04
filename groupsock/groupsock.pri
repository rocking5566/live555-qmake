INCLUDEPATH += $${HOME_PATH}/BasicUsageEnvironment/include \
               $${HOME_PATH}/groupsock/include \
               $${HOME_PATH}/liveMedia/include \
               $${HOME_PATH}/UsageEnvironment/include
               
SOURCES += GroupEId.cpp \
           Groupsock.cpp \
           GroupsockHelper.cpp \
           IOHandlers.cpp \
           NetAddress.cpp \
           NetInterface.cpp \
           inet.c 

HEADERS += include/GroupEId.hh \
           include/Groupsock.hh \
           include/groupsock_version.hh \
           include/GroupsockHelper.hh \
           include/IOHandlers.hh \
           include/NetAddress.hh \
           include/NetCommon.h \
           include/NetInterface.hh \
           include/TunnelEncaps.hh 