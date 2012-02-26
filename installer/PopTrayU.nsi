;------------------------------------------------------------
; PopTrayU 4.0 NSIS install script (NSIS 2.46 Modern UI 1.74)
;------------------------------------------------------------

!define VER_MAJOR "4"
!define VER_MINOR "0"

!define PRODUCT "PopTrayU"
!define VERSION "${VER_MAJOR}.${VER_MINOR}"
Name "${PRODUCT} ${VERSION}"

!include "MUI.nsh"

!define Language $1
!define Sounds $2
!define StartMenuIcons $3
!define StartupIcon $4
!define DesktopIcon $5

!define TEMP $R9

;------------------------------------------------------------------[ Configuration ]---

OutFile "Deploy\PopTrayU${VER_MAJOR}${VER_MINOR}.exe"
SetCompressor /SOLID lzma

InstType "Full"
InstType "Minimum"

ShowInstDetails show
ShowUninstDetails show

;------------------------------------------------------------------[ Modern UI Configuration ]---

  ; UI settings
  !define MUI_ICON "images\Setup.ico"
  !define MUI_UNICON "images\Uninstall.ico"
  
  !define MUI_HEADERIMAGE
  !define MUI_HEADERIMAGE_BITMAP "images\setup_header.bmp"
  !define MUI_WELCOMEFINISHPAGE_BITMAP "images\setup.bmp"

  !define MUI_COMPONENTSPAGE_SMALLDESC
  !define MUI_ABORTWARNING

  ;!define MUI_UNCUSTOMPAGECOMMANDS

  ; Text
  !define MUI_WELCOMEPAGE_TITLE "${PRODUCT} Setup Wizard"
  !define MUI_WELCOMEPAGE_TEXT "This wizard will guide you through the installation of PopTrayU\r\n\r\nPopTrayU is a full-featured, open-source, e-mail notifier with an easy to use interface.\r\n\r\n"
  !define MUI_FINISHPAGE_SHOWREADME_TEXT "Show HISTORY.TXT"

  ; Pages
  !insertmacro MUI_PAGE_WELCOME
  !insertmacro MUI_PAGE_COMPONENTS
  !insertmacro MUI_PAGE_DIRECTORY
  !insertmacro MUI_PAGE_INSTFILES
    
    !define MUI_FINISHPAGE_NOREBOOTSUPPORT
    !define MUI_FINISHPAGE_RUN $INSTDIR\PopTrayU.exe
    !define MUI_FINISHPAGE_SHOWREADME $INSTDIR\History.txt
    !define MUI_FINISHPAGE_SHOWREADME_NOTCHECKED
  !insertmacro MUI_PAGE_FINISH


;------------------------------------------------------------------[ Pages ]---
  
  UninstPage custom un.SetPage
  !insertmacro MUI_UNPAGE_INSTFILES
  
;------------------------------------------------------------------[ Languages ]---
 
  !insertmacro MUI_LANGUAGE "English"
  !define MUI_TEXT_FINISH_SHOWREADME "Show HISTORY.TXT"
  
  
;------------------------------------------------------------------[ Language Strings ]---

  LangString DESC_SecPopTrayU ${LANG_ENGLISH} "Copy PopTrayU application files to the application folder."
  LangString DESC_SecLang ${LANG_ENGLISH} "Install the Language files for multi-language PopTrayU."
  LangString DESC_SecSound ${LANG_ENGLISH} "Install example notification sound files."
  LangString DESC_SecIcons ${LANG_ENGLISH} "Select the icons to create."
  LangString DESC_SecStartMenu ${LANG_ENGLISH} "Create a PopTrayU group under the start menu with icons the the PopTrayU files."
  LangString DESC_SecStartup ${LANG_ENGLISH} "Automatically start PopTrayU when Windows starts"
  LangString DESC_SecDesktop ${LANG_ENGLISH} "Put PopTrayU icon on the Desktop"

;------------------------------------------------------------------[ Reserve Files ]---
  
  ReserveFile "${MUI_HEADERIMAGE_BITMAP}"
  ReserveFile "${MUI_WELCOMEFINISHPAGE_BITMAP}"
  ReserveFile "NSIS.ini" 
  !insertmacro MUI_RESERVEFILE_INSTALLOPTIONS

;------------------------------------------------------------------[ Installer Sections ]---

Section "PopTrayU (required)" SecPopTrayU
  SectionIn 1 2

  SetOutPath "$INSTDIR"

  !define HWND $R0
  !define Count $R1

  ; try copying EXE.  If it fails try killing the running PopTrayU upto 5 times
  SetOverwrite try
  TryPoptrayU:
 	IntOp ${Count} ${Count} + 1
        ;DetailPrint ${Count}
  	IntCmp ${Count} 5 CantClose
  	ClearErrors
  	File "PopTrayU.exe"
  	IfErrors ClosePopTrayU OtherFiles
  ClosePopTrayU:
  	; close running PopTrayU
  	FindWindow ${HWND} "TfrmPopMain"
  	IntCmp ${Count} 1 Print Send Send
  Print:
  	DetailPrint "Closing existing PopTrayU"
  Send:
  	SendMessage ${HWND} 1036 0 0 ; UM_QUIT = 1036
  	;SendMessage ${HWND} ${WM_CLOSE} 0 0
  	Sleep 1000
  	Goto TryPopTrayU
  CantClose:
  	DetailPrint "Can't close existing PopTrayU"
  	SetOverwrite on
  	File "PopTrayU.exe"
  
  ; rest of the files
  OtherFiles:
  	SetOverwrite on
  	File "PopTrayU.chm"
  	File "Readme.txt"
  	File "History.txt"
  	File "License.txt"
  	File "Skin.bmp"
  
  ;MessageBox MB_OK "Debug Wait"

  WriteRegStr HKLM "Software\${PRODUCT}" "" $INSTDIR
  WriteRegStr HKLM "Software\${PRODUCT}" "Language" 0
  WriteRegStr HKLM "Software\${PRODUCT}" "Sounds" 0
  WriteRegStr HKLM "Software\${PRODUCT}" "StartMenuIcons" 0
  WriteRegStr HKLM "Software\${PRODUCT}" "StartupIcon" 0
  WriteRegStr HKLM "Software\${PRODUCT}" "DesktopIcon" 0
  
  ; uninstall data
  WriteRegExpandStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\${PRODUCT}" "UninstallString" "$INSTDIR\Uninstall.exe"
  WriteRegExpandStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\${PRODUCT}" "InstallLocation" "$INSTDIR"
  WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\${PRODUCT}" "DisplayName" "${PRODUCT} ${VERSION}"
  WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\${PRODUCT}" "DisplayIcon" "$INSTDIR\PopTrayU.exe,0"
  WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\${PRODUCT}" "DisplayVersion" "${VERSION}"
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\${PRODUCT}" "VersionMajor" "${VER_MAJOR}"
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\${PRODUCT}" "VersionMinor" "${VER_MINOR}"
  WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\${PRODUCT}" "Publisher" "Renier Crause"
  WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\${PRODUCT}" "URLInfoAbout" "http://www.poptray.org"
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\${PRODUCT}" "NoModify" "1"
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\${PRODUCT}" "NoRepair" "1"
  
  ; delete inno setup files
  Delete "$INSTDIR\unins000.dat"
  Delete "$INSTDIR\unins000.exe"
  DeleteRegKey HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\PopTrayU_is1"
  
  ; uninstaller
  Delete "$INSTDIR\Uninstall.exe"
  WriteUninstaller "$INSTDIR\Uninstall.exe"
SectionEnd

SubSection "Icons" SecIcons

Section "Start Menu Icons" SecStartMenu
  SectionIn 1 2
  WriteRegStr HKLM "Software\${PRODUCT}" "StartMenuIcons" 1
  CreateDirectory $SMPROGRAMS\PopTrayU
  CreateShortCut "$SMPROGRAMS\PopTrayU\PopTrayU.lnk" "$INSTDIR\PopTrayU.exe" ""
  CreateShortCut "$SMPROGRAMS\PopTrayU\Uninstall.lnk" "$INSTDIR\Uninstall.exe" ""
  CreateShortCut "$SMPROGRAMS\PopTrayU\PopTrayU Help.lnk" "$INSTDIR\PopTrayU.chm" ""
  CreateShortCut "$SMPROGRAMS\PopTrayU\Read Me.lnk" "$INSTDIR\ReadMe.txt" ""
  CreateShortCut "$SMPROGRAMS\PopTrayU\Version History.lnk" "$INSTDIR\History.txt" ""
SectionEnd

Section "Startup Icon" SecStartup
  SectionIn 1
  WriteRegStr HKLM "Software\${PRODUCT}" "StartupIcon" 1
  CreateShortCut "$SMSTARTUP\PopTrayU.lnk" "$INSTDIR\PopTrayU.exe" ""
SectionEnd

Section "Desktop Icon" SecDesktop
  SectionIn 1
  WriteRegStr HKLM "Software\${PRODUCT}" "DesktopIcon" 1
  CreateShortCut "$DESKTOP\PopTrayU.lnk" "$INSTDIR\PopTrayU.exe" ""
SectionEnd

SubSectionEnd

Section "Language files" SecLang
  SectionIn 1
  WriteRegStr HKLM "Software\${PRODUCT}" "Language" 1
  
  SetOutPath "$INSTDIR\Languages"
  
  ; copy new
  File "languages\blank.ptlang"
  File "languages\language.ptlang"
  File "languages\Afrikaans.ptlang"
  File "languages\Arabic.ptlang"
  File "languages\Bulgarian.ptlang"
  File "languages\Catalan.ptlang"
  File "languages\Chinese.ptlang"
  File "languages\Croatian.ptlang"
  File "languages\Czech.ptlang"
  File "languages\Danish.ptlang"
  File "languages\Dutch.ptlang"
  File "languages\Estonian.ptlang"
  File "languages\Finnish.ptlang"
  File "languages\French.ptlang"
  File "languages\French (Canada).ptlang"
  File "languages\Frisian.ptlang"
  File "languages\Galician.ptlang"
  File "languages\German.ptlang"
  File "languages\Greek.ptlang"
  File "languages\Hebrew.ptlang"
  File "languages\Hungarian.ptlang"
  File "languages\Italian.ptlang"
  File "languages\Lithuanian.ptlang"
  File "languages\Korean.ptlang"
  File "languages\Norwegian.ptlang"
  File "languages\Polish.ptlang"
  File "languages\Portuguese.ptlang"
  File "languages\Portuguese (Brazil).ptlang"
  File "languages\Romanian.ptlang"
  File "languages\Russian.ptlang"
  File "languages\Serbian.ptlang"
  File "languages\Slovak.ptlang"
  File "languages\Slovene.ptlang"
  File "languages\Spanish.ptlang"
  File "languages\Spanish (Chile).ptlang"
  File "languages\Spanish (Hispanic America).ptlang"
  File "languages\Swedish.ptlang"
  File "languages\Taiwan.ptlang"
  File "languages\Turkish.ptlang"
  File "languages\Ukranian.ptlang"
  File "languages\Valencian.ptlang"
SectionEnd

Section "Sound files" SecSound
  SectionIn 1
  WriteRegStr HKLM "Software\${PRODUCT}" "Sounds" 1
  
  SetOutPath "$INSTDIR\Sounds"
  
  File "sounds\poptray_newmail_lo.wav"
  File "sounds\poptray_urgent_lo.wav"
  File "sounds\poptray_friend_lo.wav"
  File "sounds\poptray_business_lo.wav"
  File "sounds\poptray_junkmail_lo.wav"
  File "sounds\poptray_spam_lo.wav"
SectionEnd



;!insertmacro MUI_SECTIONS_FINISHHEADER

;------------------------------------------------------------------[ Descriptions ]---

!insertmacro MUI_FUNCTION_DESCRIPTION_BEGIN
  !insertmacro MUI_DESCRIPTION_TEXT ${SecPopTrayU} $(DESC_SecPopTrayU)
  !insertmacro MUI_DESCRIPTION_TEXT ${SecLang} $(DESC_SecLang)
  !insertmacro MUI_DESCRIPTION_TEXT ${SecSound} $(DESC_SecSound)
  !insertmacro MUI_DESCRIPTION_TEXT ${SecIcons} $(DESC_SecIcons)
  !insertmacro MUI_DESCRIPTION_TEXT ${SecStartMenu} $(DESC_SecStartMenu)
  !insertmacro MUI_DESCRIPTION_TEXT ${SecStartup} $(DESC_SecStartup)
  !insertmacro MUI_DESCRIPTION_TEXT ${SecDesktop} $(DESC_SecDesktop)
!insertmacro MUI_FUNCTION_DESCRIPTION_END
 
;------------------------------------------------------------------[ Uninstaller Section ]---

Section "Uninstall"
  ; application files
  Delete "$INSTDIR\PopTrayU.exe"
  Delete "$INSTDIR\Uninstall.exe"
  Delete "$INSTDIR\PopTrayU.chm"
  Delete "$INSTDIR\Readme.txt"
  Delete "$INSTDIR\History.txt"
  Delete "$INSTDIR\Beta.txt"
  
  ; start menu icons
  Delete "$SMPROGRAMS\PopTrayU\PopTrayU.lnk"
  Delete "$SMPROGRAMS\PopTrayU\Uninstall.lnk"
  Delete "$SMPROGRAMS\PopTrayU\PopTrayU Help.lnk"
  Delete "$SMPROGRAMS\PopTrayU\PopTrayU Help.lnk"
  Delete "$SMPROGRAMS\PopTrayU\Read Me.lnk"
  Delete "$SMPROGRAMS\PopTrayU\Version History.lnk"
  Delete "$SMPROGRAMS\PopTrayU\Read Me (beta info).lnk"
  
  ; other icons
  Delete "$SMSTARTUP\PopTrayU.lnk"
  Delete "$DESKTOP\PopTrayU.lnk"
  
  ; sounds
  Delete "$INSTDIR\Sounds\poptray_newmail_lo.wav"
  Delete "$INSTDIR\Sounds\poptray_urgent_lo.wav"
  Delete "$INSTDIR\Sounds\poptray_family_lo.wav"
  Delete "$INSTDIR\Sounds\poptray_friend_lo.wav"
  Delete "$INSTDIR\Sounds\poptray_business_lo.wav"
  Delete "$INSTDIR\Sounds\poptray_junkmail_lo.wav"
  Delete "$INSTDIR\Sounds\poptray_spam_lo.wav"

  ; language
  Delete "$INSTDIR\Languages\blank.ptlang"
  Delete "$INSTDIR\Languages\language.ptlang"
  Delete "$INSTDIR\Languages\Afrikaans.ptlang"
  Delete "$INSTDIR\Languages\Arabic.ptlang"
  Delete "$INSTDIR\Languages\Bulgarian.ptlang"
  Delete "$INSTDIR\Languages\Catalan.ptlang"
  Delete "$INSTDIR\Languages\Chinese.ptlang"
  Delete "$INSTDIR\Languages\Croatian.ptlang"
  Delete "$INSTDIR\Languages\Czech.ptlang"
  Delete "$INSTDIR\Languages\Danish.ptlang"
  Delete "$INSTDIR\Languages\Dutch.ptlang"
  Delete "$INSTDIR\Languages\Estonian.ptlang"
  Delete "$INSTDIR\Languages\Finnish.ptlang"
  Delete "$INSTDIR\Languages\French.ptlang"
  Delete "$INSTDIR\Languages\French (Canada).ptlang"
  Delete "$INSTDIR\Languages\Frisian.ptlang"
  Delete "$INSTDIR\Languages\Galician.ptlang"
  Delete "$INSTDIR\Languages\German.ptlang"
  Delete "$INSTDIR\Languages\Greek.ptlang"
  Delete "$INSTDIR\Languages\Hebrew.ptlang"
  Delete "$INSTDIR\Languages\Hungarian.ptlang"
  Delete "$INSTDIR\Languages\Italian.ptlang"
  Delete "$INSTDIR\Languages\Lithuanian.ptlang"
  Delete "$INSTDIR\Languages\Korean.ptlang"
  Delete "$INSTDIR\Languages\Norwegian.ptlang"
  Delete "$INSTDIR\Languages\Polish.ptlang"
  Delete "$INSTDIR\Languages\Portuguese.ptlang"
  Delete "$INSTDIR\Languages\Portuguese (Brazil).ptlang"
  Delete "$INSTDIR\Languages\Romanian.ptlang"
  Delete "$INSTDIR\Languages\Russian.ptlang"
  Delete "$INSTDIR\Languages\Serbian.ptlang"
  Delete "$INSTDIR\Languages\Slovak.ptlang"
  Delete "$INSTDIR\Languages\Slovene.ptlang"
  Delete "$INSTDIR\Languages\Spanish.ptlang"
  Delete "$INSTDIR\Languages\Spanish (Hispanic America).ptlang"
  Delete "$INSTDIR\Languages\Spanish (Chile).ptlang"
  Delete "$INSTDIR\Languages\Swedish.ptlang"
  Delete "$INSTDIR\Languages\Taiwan.ptlang"
  Delete "$INSTDIR\Languages\Turkish.ptlang"
  Delete "$INSTDIR\Languages\Ukranian.ptlang"
  Delete "$INSTDIR\Languages\Valencian.ptlang"
  
  ; configuration files
  !insertmacro MUI_INSTALLOPTIONS_READ ${TEMP} "NSIS.ini" "Field 4" "State"
  StrCmp ${TEMP} "1" "" NoConfig
    Delete "$INSTDIR\PopTrayU.ini"
    Delete "$INSTDIR\Rules.ini"
    Delete "$INSTDIR\PopTrayU.customize"
    Delete "$INSTDIR\Preview.customize"
    Delete "$INSTDIR\WhiteList.ptdat"
    Delete "$INSTDIR\BlackList.ptdat"
    Delete "$INSTDIR\Rules.log"
    Delete "$INSTDIR\Account_*.ids"
  NoConfig:

  ; directories
  RMDir "$INSTDIR\Languages"
  RMDir "$INSTDIR\Sounds"
  RMDir "$INSTDIR"
  RMDir "$SMPROGRAMS\PopTrayU"

  ; registry
  DeleteRegKey HKCU "Software\${PRODUCT}"
  DeleteRegKey HKLM "Software\${PRODUCT}"
  DeleteRegKey HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\${PRODUCT}"
  
SectionEnd


;------------------------------------------------------------------[ Functions ]---

Function un.SetPage
  !insertmacro MUI_HEADER_TEXT "Uninstall PopTrayU" "Remove PopTrayU from you computer."
  !insertmacro MUI_INSTALLOPTIONS_DISPLAY "NSIS.ini"
FunctionEnd


;------------------------------------------------------------------[ Events ]---

Function .onInit
  ; get install dir
  ReadRegStr ${TEMP} HKLM "Software\${PRODUCT}" ""
  StrCmp ${TEMP} "" +2
    Goto DirFound
    
  ReadRegStr ${TEMP} HKCU "Software\${PRODUCT}" ""
  StrCmp ${TEMP} "" +2
    Goto DirFound
  
  ReadRegStr ${TEMP} HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\PopTrayU_is1" "Inno Setup: App Path"
  StrCmp ${TEMP} "" +2
    Goto DirFound
  
  ;Else:
    StrCpy ${TEMP} "$PROGRAMFILES\${PRODUCT}"
  DirFound:
    StrCpy $INSTDIR ${TEMP}

  ; read selections from registry
  ReadRegStr ${StartMenuIcons} HKLM "Software\${PRODUCT}" "StartMenuIcons"
  ReadRegStr ${StartupIcon} HKLM "Software\${PRODUCT}" "StartupIcon"
  ReadRegStr ${DesktopIcon} HKLM "Software\${PRODUCT}" "DesktopIcon"
  ReadRegStr ${Language} HKLM "Software\${PRODUCT}" "Language"
  ReadRegStr ${Sounds} HKLM "Software\${PRODUCT}" "Sounds"

  ; set icons from registry values
  StrCmp ${StartMenuIcons} "0" "" +2
    SectionSetFlags ${SecStartMenu} 0
  StrCmp ${StartupIcon} "0" "" +2
    SectionSetFlags ${SecStartup} 0
  StrCmp ${DesktopIcon} "0" "" +2
    SectionSetFlags ${SecDesktop} 0
  StrCmp ${Language} "0" "" +2
    SectionSetFlags ${SecLang} 0
  StrCmp ${Sounds} "0" "" +2
    SectionSetFlags ${SecSound} 0
FunctionEnd

Function un.onInit
  !insertmacro MUI_INSTALLOPTIONS_EXTRACT "NSIS.ini"
  !insertmacro MUI_INSTALLOPTIONS_WRITE "NSIS.ini" "Field 3" "State" "$INSTDIR"
FunctionEnd

