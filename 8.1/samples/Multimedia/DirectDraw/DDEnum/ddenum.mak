# Microsoft Developer Studio Generated NMAKE File, Based on ddenum.dsp
!IF "$(CFG)" == ""
CFG=DDEnum - Win32 Release
!MESSAGE No configuration specified. Defaulting to DDEnum - Win32 Release.
!ENDIF 

!IF "$(CFG)" != "DDEnum - Win32 Release" && "$(CFG)" != "DDEnum - Win32 Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "ddenum.mak" CFG="DDEnum - Win32 Release"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "DDEnum - Win32 Release" (based on "Win32 (x86) Application")
!MESSAGE "DDEnum - Win32 Debug" (based on "Win32 (x86) Application")
!MESSAGE 
!ERROR An invalid configuration is specified.
!ENDIF 

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE 
NULL=nul
!ENDIF 

!IF  "$(CFG)" == "DDEnum - Win32 Release"

OUTDIR=.\Release
INTDIR=.\Release
# Begin Custom Macros
OutDir=.\Release
# End Custom Macros

ALL : "$(OUTDIR)\ddenum.exe"


CLEAN :
	-@erase "$(INTDIR)\ddenum.obj"
	-@erase "$(INTDIR)\ddenum.res"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(OUTDIR)\ddenum.exe"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /ML /W3 /GX /O2 /I "..\..\common\include" /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /Fp"$(INTDIR)\ddenum.pch" /YX /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 

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
RSC_PROJ=/l 0x409 /fo"$(INTDIR)\ddenum.res" /d "NDEBUG" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\ddenum.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=dxguid.lib dxerr8.lib ddraw.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib /nologo /subsystem:windows /incremental:no /pdb:"$(OUTDIR)\ddenum.pdb" /machine:I386 /out:"$(OUTDIR)\ddenum.exe" /stack:0x200000,0x200000
LINK32_OBJS= \
	"$(INTDIR)\ddenum.obj" \
	"$(INTDIR)\ddenum.res"

"$(OUTDIR)\ddenum.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "DDEnum - Win32 Debug"

OUTDIR=.\Debug
INTDIR=.\Debug
# Begin Custom Macros
OutDir=.\Debug
# End Custom Macros

ALL : "$(OUTDIR)\ddenum.exe"


CLEAN :
	-@erase "$(INTDIR)\ddenum.obj"
	-@erase "$(INTDIR)\ddenum.res"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(INTDIR)\vc60.pdb"
	-@erase "$(OUTDIR)\ddenum.exe"
	-@erase "$(OUTDIR)\ddenum.ilk"
	-@erase "$(OUTDIR)\ddenum.pdb"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /MLd /W3 /Gm /GX /Zi /Od /I "..\..\common\include" /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /Fp"$(INTDIR)\ddenum.pch" /YX /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 

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
RSC_PROJ=/l 0x409 /fo"$(INTDIR)\ddenum.res" /d "_DEBUG" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\ddenum.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=dxguid.lib dxerr8.lib ddraw.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib /nologo /subsystem:windows /incremental:yes /pdb:"$(OUTDIR)\ddenum.pdb" /debug /machine:I386 /out:"$(OUTDIR)\ddenum.exe" /stack:0x200000,0x200000
LINK32_OBJS= \
	"$(INTDIR)\ddenum.obj" \
	"$(INTDIR)\ddenum.res"

"$(OUTDIR)\ddenum.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ENDIF 


!IF "$(NO_EXTERNAL_DEPS)" != "1"
!IF EXISTS("ddenum.dep")
!INCLUDE "ddenum.dep"
!ELSE 
!MESSAGE Warning: cannot find "ddenum.dep"
!ENDIF 
!ENDIF 


!IF "$(CFG)" == "DDEnum - Win32 Release" || "$(CFG)" == "DDEnum - Win32 Debug"
SOURCE=.\ddenum.cpp

"$(INTDIR)\ddenum.obj" : $(SOURCE) "$(INTDIR)"


SOURCE=.\ddenum.rc

"$(INTDIR)\ddenum.res" : $(SOURCE) "$(INTDIR)"
	$(RSC) $(RSC_PROJ) $(SOURCE)



!ENDIF 

