INCLUDEPATH += $${HOME_PATH}/BasicUsageEnvironment/include \
               $${HOME_PATH}/groupsock/include \
               $${HOME_PATH}/liveMedia/include \
               $${HOME_PATH}/UsageEnvironment/include

SOURCES += BasicHashTable.cpp \
           BasicTaskScheduler.cpp \
           BasicTaskScheduler0.cpp \
           BasicUsageEnvironment.cpp \
           BasicUsageEnvironment0.cpp \
           DelayQueue.cpp

HEADERS += include/BasicHashTable.hh \
           include/BasicUsageEnvironment.hh \
           include/BasicUsageEnvironment0.hh \
           include/BasicUsageEnvironment_version.hh \
           include/DelayQueue.hh \
           include/HandlerSet.hh