# Microsoft Developer Studio Generated NMAKE File, Based on Emboss.dsp
!IF "$(CFG)" == ""
CFG=Emboss - Win32 Debug
!MESSAGE No configuration specified. Defaulting to Emboss - Win32 Debug.
!ENDIF 

!IF "$(CFG)" != "Emboss - Win32 Release" && "$(CFG)" != "Emboss - Win32 Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "Emboss.mak" CFG="Emboss - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "Emboss - Win32 Release" (based on "Win32 (x86) Application")
!MESSAGE "Emboss - Win32 Debug" (based on "Win32 (x86) Application")
!MESSAGE 
!ERROR An invalid configuration is specified.
!ENDIF 

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE 
NULL=nul
!ENDIF 

!IF  "$(CFG)" == "Emboss - Win32 Release"

OUTDIR=.\Release
INTDIR=.\Release
# Begin Custom Macros
OutDir=.\Release
# End Custom Macros

ALL : "$(OUTDIR)\Emboss.exe"


CLEAN :
	-@erase "$(INTDIR)\d3dapp.obj"
	-@erase "$(INTDIR)\d3dfile.obj"
	-@erase "$(INTDIR)\d3dfont.obj"
	-@erase "$(INTDIR)\d3dutil.obj"
	-@erase "$(INTDIR)\dxutil.obj"
	-@erase "$(INTDIR)\Emboss.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(INTDIR)\winmain.res"
	-@erase "$(OUTDIR)\Emboss.exe"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /ML /W3 /GX /O2 /I "..\..\..\common\include" /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_MBCS" /Fp"$(INTDIR)\Emboss.pch" /YX /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 

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
RSC_PROJ=/l 0x409 /fo"$(INTDIR)\winmain.res" /d "NDEBUG" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\Emboss.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=dxguid.lib d3dx8.lib d3d8.lib d3dxof.lib winmm.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib /nologo /subsystem:windows /incremental:no /pdb:"$(OUTDIR)\Emboss.pdb" /machine:I386 /out:"$(OUTDIR)\Emboss.exe" /stack:0x200000,0x200000
LINK32_OBJS= \
	"$(INTDIR)\d3dapp.obj" \
	"$(INTDIR)\d3dfile.obj" \
	"$(INTDIR)\d3dfont.obj" \
	"$(INTDIR)\d3dutil.obj" \
	"$(INTDIR)\dxutil.obj" \
	"$(INTDIR)\Emboss.obj" \
	"$(INTDIR)\winmain.res"

"$(OUTDIR)\Emboss.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "Emboss - Win32 Debug"

OUTDIR=.\Debug
INTDIR=.\Debug
# Begin Custom Macros
OutDir=.\Debug
# End Custom Macros

ALL : "$(OUTDIR)\Emboss.exe"


CLEAN :
	-@erase "$(INTDIR)\d3dapp.obj"
	-@erase "$(INTDIR)\d3dfile.obj"
	-@erase "$(INTDIR)\d3dfont.obj"
	-@erase "$(INTDIR)\d3dutil.obj"
	-@erase "$(INTDIR)\dxutil.obj"
	-@erase "$(INTDIR)\Emboss.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(INTDIR)\vc60.pdb"
	-@erase "$(INTDIR)\winmain.res"
	-@erase "$(OUTDIR)\Emboss.exe"
	-@erase "$(OUTDIR)\Emboss.ilk"
	-@erase "$(OUTDIR)\Emboss.pdb"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /MLd /W3 /Gm /GX /Zi /Od /I "..\..\..\common\include" /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_MBCS" /Fp"$(INTDIR)\Emboss.pch" /YX /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 

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
RSC_PROJ=/l 0x409 /fo"$(INTDIR)\winmain.res" /d "_DEBUG" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\Emboss.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=dxguid.lib d3dx8dt.lib d3d8.lib d3dxof.lib winmm.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib /nologo /subsystem:windows /incremental:yes /pdb:"$(OUTDIR)\Emboss.pdb" /debug /machine:I386 /out:"$(OUTDIR)\Emboss.exe" /pdbtype:sept /stack:0x200000,0x200000
LINK32_OBJS= \
	"$(INTDIR)\d3dapp.obj" \
	"$(INTDIR)\d3dfile.obj" \
	"$(INTDIR)\d3dfont.obj" \
	"$(INTDIR)\d3dutil.obj" \
	"$(INTDIR)\dxutil.obj" \
	"$(INTDIR)\Emboss.obj" \
	"$(INTDIR)\winmain.res"

"$(OUTDIR)\Emboss.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ENDIF 


!IF "$(NO_EXTERNAL_DEPS)" != "1"
!IF EXISTS("Emboss.dep")
!INCLUDE "Emboss.dep"
!ELSE 
!MESSAGE Warning: cannot find "Emboss.dep"
!ENDIF 
!ENDIF 


!IF "$(CFG)" == "Emboss - Win32 Release" || "$(CFG)" == "Emboss - Win32 Debug"
SOURCE=.\winmain.rc

"$(INTDIR)\winmain.res" : $(SOURCE) "$(INTDIR)"
	$(RSC) $(RSC_PROJ) $(SOURCE)


SOURCE=..\..\..\common\src\d3dapp.cpp

"$(INTDIR)\d3dapp.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=..\..\..\common\src\d3dfile.cpp

"$(INTDIR)\d3dfile.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=..\..\..\common\src\d3dfont.cpp

"$(INTDIR)\d3dfont.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=..\..\..\common\src\d3dutil.cpp

"$(INTDIR)\d3dutil.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=..\..\..\common\src\dxutil.cpp

"$(INTDIR)\dxutil.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\Emboss.cpp

"$(INTDIR)\Emboss.obj" : $(SOURCE) "$(INTDIR)"



!ENDIF 

