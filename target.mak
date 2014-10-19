# target.mak
# Created by IBM WorkFrame/2 MakeMake at 18:48:47 on 23 Feb 1996
#
# The actions included in this make file are:
#  Compile::C++ Compiler
#  Link::Linker
#  Bind::Resource Bind
#  Compile::Resource Precompile
#  Compile::Resource Compiler

.SUFFIXES: .cpp .obj .rc .rcx .res

.all: \
    .\target.exe

.cpp.obj:
    @echo " Compile::C++ Compiler "
    icc.exe -DIC_TRACE_DEVELOP /Ti /Gm /Gd /C %s

.rcx.rc:
    @echo " Compile::Resource Precompile "
    icc.exe -c /Pc+ /Pe+ /Pd /I. %s > %|dpfF.rc

.rc.res:
    @echo " Compile::Resource Compiler "
    rc.exe -r %s .\%|fF.RES

.\target.exe: \
    .\test.obj \
    .\vbmain.obj \
    .\APerson.obj \
    .\keyacc.obj \
    .\test.res
    @echo " Link::Linker "
    @echo " Bind::Resource Bind "
    icc.exe @<<
    -DIC_TRACE_DEVELOP
     /Tdp
     /Gm /Gd
     /B" /de /pmtype:pm"
     /Fetarget.exe
     .\test.obj
     .\vbmain.obj
     .\APerson.obj
     .\keyacc.obj
<<
    rc.exe .\test.res target.exe

.\test.obj: \
    g:\samples\vkeysrt\test.cpp \
    {g:\samples\vkeysrt;$(INCLUDE);}test.hpp \
    {g:\samples\vkeysrt;$(INCLUDE);}APerson.hpp \
    {g:\samples\vkeysrt;$(INCLUDE);}imykysrt.h \
    {g:\samples\vkeysrt;$(INCLUDE);}test.h \
    {g:\samples\vkeysrt;$(INCLUDE);}keyacc.hpp \
    {g:\samples\vkeysrt;$(INCLUDE);}APerson.h \
    {g:\samples\vkeysrt;$(INCLUDE);}aperson.hpv

.\keyacc.obj: \
    g:\samples\vkeysrt\keyacc.cpp \
    {g:\samples\vkeysrt;$(INCLUDE);}APerson.hpp \
    {g:\samples\vkeysrt;$(INCLUDE);}keyacc.hpp \
    {g:\samples\vkeysrt;$(INCLUDE);}APerson.h \
    {g:\samples\vkeysrt;$(INCLUDE);}aperson.hpv

.\APerson.obj: \
    g:\samples\vkeysrt\APerson.cpp \
    {g:\samples\vkeysrt;$(INCLUDE);}APerson.hpp \
    {g:\samples\vkeysrt;$(INCLUDE);}keyacc.hpp \
    {g:\samples\vkeysrt;$(INCLUDE);}APerson.h \
    {g:\samples\vkeysrt;$(INCLUDE);}aperson.hpv \
    {g:\samples\vkeysrt;$(INCLUDE);}aperson.cpv

.\vbmain.obj: \
    g:\samples\vkeysrt\vbmain.cpp \
    {g:\samples\vkeysrt;$(INCLUDE);}test.hpp \
    {g:\samples\vkeysrt;$(INCLUDE);}APerson.hpp \
    {g:\samples\vkeysrt;$(INCLUDE);}imykysrt.h \
    {g:\samples\vkeysrt;$(INCLUDE);}test.h \
    {g:\samples\vkeysrt;$(INCLUDE);}keyacc.hpp \
    {g:\samples\vkeysrt;$(INCLUDE);}APerson.h \
    {g:\samples\vkeysrt;$(INCLUDE);}aperson.hpv

.\test.rc: \
    g:\samples\vkeysrt\test.rcx \
    {$(INCLUDE)}test.rci \
    {$(INCLUDE)}test.h

.\test.res: \
    .\test.rc
