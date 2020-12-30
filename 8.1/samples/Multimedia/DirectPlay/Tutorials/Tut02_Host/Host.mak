# Microsoft Developer Studio Generated NMAKE File, Based on Host.dsp
!IF "$(CFG)" == ""
CFG=Host - Win32 Debug
!MESSAGE No configuration specified. Defaulting to Host - Win32 Debug.
!ENDIF 

!IF "$(CFG)" != "Host - Win32 Release" && "$(CFG)" != "Host - Win32 Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "Host.mak" CFG="Host - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "Host - Win32 Release" (based on "Win32 (x86) Application")
!MESSAGE "Host - Win32 Debug" (based on "Win32 (x86) Application")
!MESSAGE 
!ERROR An invalid configuration is specified.
!ENDIF 

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE 
NULL=nul
!ENDIF 

!IF  "$(CFG)" == "Host - Win32 Release"

OUTDIR=.\Release
INTDIR=.\Release
# Begin Custom Macros
OutDir=.\Release
# End Custom Macros

ALL : "$(OUTDIR)\Host.exe"


CLEAN :
	-@erase "$(INTDIR)\Host.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(OUTDIR)\Host.exe"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /ML /W3 /GX /O2 /D "NDEBUG" /D "_MBCS" /D "_WINDOWS" /D "WIN32" /D "_CONSOLE" /Fp"$(INTDIR)\Host.pch" /YX /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 

.c{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.c{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

MTL=midl.exe
MTL_PROJ=/nologo /D "NDEBUG" /mktyplib203 /win32 
RSC=rc.exe
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\Host.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=dplay.lib dxguid.lib ole32.lib uuid.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib /nologo /subsystem:console /incremental:no /pdb:"$(OUTDIR)\Host.pdb" /machine:I386 /out:"$(OUTDIR)\Host.exe" /stack:0x10000,0x10000
LINK32_OBJS= \
	"$(INTDIR)\Host.obj"

"$(OUTDIR)\Host.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "Host - Win32 Debug"

OUTDIR=.\Debug
INTDIR=.\Debug
# Begin Custom Macros
OutDir=.\Debug
# End Custom Macros

ALL : "$(OUTDIR)\Host.exe"


CLEAN :
	-@erase "$(INTDIR)\Host.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(INTDIR)\vc60.pdb"
	-@erase "$(OUTDIR)\Host.exe"
	-@erase "$(OUTDIR)\Host.ilk"
	-@erase "$(OUTDIR)\Host.pdb"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /MLd /W3 /Gm /GX /Zi /Od /D "_CONSOLE" /D "NDEBUG" /D "_MBCS" /D "_WINDOWS" /D "WIN32" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 

.c{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.c{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

MTL=midl.exe
MTL_PROJ=/nologo /D "_DEBUG" /mktyplib203 /win32 
RSC=rc.exe
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\Host.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=ole32.lib uuid.lib oleaut32.lib odbc32.lib odbccp32.lib dplay.lib dxguid.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib /nologo /subsystem:console /incremental:yes /pdb:"$(OUTDIR)\Host.pdb" /debug /machine:I386 /out:"$(OUTDIR)\Host.exe" /pdbtype:sept /stack:0x10000,0x10000
LINK32_OBJS= \
	"$(INTDIR)\Host.obj"

"$(OUTDIR)\Host.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ENDIF 


!IF "$(NO_EXTERNAL_DEPS)" != "1"
!IF EXISTS("Host.dep")
!INCLUDE "Host.dep"
!ELSE 
!MESSAGE Warning: cannot find "Host.dep"
!ENDIF 
!ENDIF 


!IF "$(CFG)" == "Host - Win32 Release" || "$(CFG)" == "Host - Win32 Debug"
SOURCE=.\Host.cpp

"$(INTDIR)\Host.obj" : $(SOURCE) "$(INTDIR)"



!ENDIF 

