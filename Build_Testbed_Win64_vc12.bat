@echo off

call "C:\Program Files (x86)\Microsoft Visual Studio 12.0\VC\vcvarsall.bat" x86_amd64
IF NOT EXIST build mkdir build
cd build

IF NOT EXIST mediaServer mkdir mediaServer
IF NOT EXIST testRTSPClient mkdir testRTSPClient
IF NOT EXIST openRTSP mkdir openRTSP
IF NOT EXIST proxyServer mkdir proxyServer
IF NOT EXIST SimpleRTSPClient mkdir SimpleRTSPClient


cd mediaServer
qmake.exe -spec win32-msvc2013 "CONFIG += x86_64" -r ../../Testbed/mediaServer.pro
nmake
cd ..

cd testRTSPClient
qmake.exe -spec win32-msvc2013 "CONFIG += x86_64" -r ../../Testbed/testRTSPClient.pro
nmake
cd ..

cd openRTSP
qmake.exe -spec win32-msvc2013 "CONFIG += x86_64" -r ../../Testbed/openRTSP.pro
nmake
cd ..

cd proxyServer
qmake.exe -spec win32-msvc2013 "CONFIG += x86_64" -r ../../Testbed/proxyServer.pro
nmake
cd ..

cd SimpleRTSPClient
qmake.exe -spec win32-msvc2013 "CONFIG += x86_64" -r ../../Testbed/SimpleRTSPClient/SimpleRTSPClient.pro
nmake
cd ..


pause