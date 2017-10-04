#ifndef StreamClientState_h__
#define StreamClientState_h__

#include "liveMedia.hh"
#include "BasicUsageEnvironment.hh"

// Define a class to hold per-stream state that we maintain throughout each stream's lifetime:

class StreamClientState
{
public:
    StreamClientState();
    virtual ~StreamClientState();

public:
    MediaSubsessionIterator* iter;
    MediaSession* session;
    MediaSubsession* subsession;
    TaskToken streamTimerTask;
    double duration;
};
#endif // StreamClientState_h__