; Script generated by the HM NIS Edit Script Wizard.

NAME "Keyboard Lights 2.0"

; HM NIS Edit Wizard helper defines
!define PRODUCT_NAME "Keyboard Lights"
!define PRODUCT_VERSION "2.0"
!define PRODUCT_PUBLISHER "Jessica Brown"
!define PRODUCT_WEB_SITE "http://poptrayu.sourceforge.net/"
!define PRODUCT_UNINST_KEY "Software\Microsoft\Windows\CurrentVersion\Uninstall\${PRODUCT_NAME}"
!define PRODUCT_UNINST_ROOT_KEY "HKLM"

!include "MUI2.nsh"
!include "ReadMePage.nsh"
!include "InstallOptions.nsh"

; MUI Settings
!define MUI_ABORTWARNING
!define MUI_ICON "..\lights.ico"
!define MUI_UNICON "..\lights.ico"


!define MUI_WELCOMEPAGE_TEXT "This wizard will guide you through the installation of Keyboard Lights 2.0$\r$\n$\r$\nPlease exit PopTrayU before continuing."

;;!define MUI_LICENSEPAGE_BUTTON "Next >"
;;!define MUI_LICENSEPAGE_TITLE "Keyboard Lights 2.0 Readme"
;;!define MUI_LICENSEPAGE_TEXT_TOP ""
;;!define MUI_LICENSEPAGE_TEXT_BOTTOM ""
  ${ReadmeLanguage} "${LANG_ENGLISH}" \
          "About $(^name):" \
          "A Notification Plugin for PopTrayU" \
          "Readme File:" \
          "$\n"

!define MUI_TEXT_DIRECTORY_SUBTITLE "Please select your existing PopTrayU installation directory."
!define MUI_DIRECTORYPAGE_TEXT_TOP "Keyboard Lights 2.0 will be installed into the Plugins subdirectory.$\r$\n$\r$\n"
; Welcome page
!insertmacro MUI_PAGE_WELCOME

!insertmacro MUI_PAGE_README "NotifyKeyboardLights.txt"
; Directory page
!insertmacro MUI_PAGE_DIRECTORY
; Instfiles page
!insertmacro MUI_PAGE_INSTFILES
; Finish page
;;!define MUI_FINISHPAGE_SHOWREADME "$INSTDIR\Plugins\NotifyKeyboardLights.txt"
!insertmacro MUI_PAGE_FINISH

; Uninstaller pages
!insertmacro MUI_UNPAGE_WELCOME
!insertmacro MUI_UNPAGE_CONFIRM
!insertmacro MUI_UNPAGE_INSTFILES

; Language files
!insertmacro MUI_LANGUAGE "English"




; MUI end ------

;;Name "${PRODUCT_NAME} ${PRODUCT_VERSION}"
OutFile "KeyboardLights20Setup.exe"
InstallDir "$PROGRAMFILES\PopTrayU"
ShowInstDetails show
ShowUnInstDetails show

Section "Keyboard Lights 2.0" SEC01
  SetOutPath "$INSTDIR\Plugins"
  SetOverwrite ifnewer
  File "NotifyKeyboardLights.dll"
  File "NotifyKeyboardLights.txt"
SectionEnd

Section -AdditionalIcons
  SetOutPath $INSTDIR
  CreateDirectory "$SMPROGRAMS\PopTrayU"
  CreateShortCut "$SMPROGRAMS\PopTrayU\Uninstall Keyboard Lights 2.0.lnk" "$INSTDIR\Plugins\UninstallKeyboardLights20.exe"
SectionEnd

Section -Post
  WriteUninstaller "$INSTDIR\Plugins\UninstallKeyboardLights20.exe"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "DisplayName" "$(^Name)"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "UninstallString" "$INSTDIR\Plugins\UninstallKeyboardLights20.exe"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "DisplayVersion" "${PRODUCT_VERSION}"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "URLInfoAbout" "${PRODUCT_WEB_SITE}"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "Publisher" "${PRODUCT_PUBLISHER}"
SectionEnd


Function un.onUninstSuccess
  ;;HideWindow
  ;;MessageBox MB_ICONINFORMATION|MB_OK "Keyboard Lights 2.0 was successfully removed from your computer."
FunctionEnd

Function un.onInit
  ;;MessageBox MB_ICONQUESTION|MB_YESNO|MB_DEFBUTTON2 "Please exit PopTrayU before continuing.$\r$\n$\r$\nAre you sure you want to completely remove Keyboard Lights 2.0 and all of its components?" IDYES +2
  ;;Abort
  TryPoptrayU:

  ClosePopTrayU:
  	; close running PopTrayU
  	FindWindow ${HWND} "TfrmPopUMain.UnicodeClass"
  	IntCmp ${Count} 1 Print Send Send
  Print:
  	DetailPrint "Closing existing PopTrayU"
  Send:
  	SendMessage ${HWND} 1036 0 0 ; UM_QUIT = 1036
  	Sleep 1000
  	Goto TryPopTrayU
  CantClose:
  	DetailPrint "Can't close existing PopTrayU"

  ; rest of the files
  OtherFiles:
  
FunctionEnd

Section Uninstall

  # Remove start menu shortcut to uninstaller
  Delete "$SMPROGRAMS\PopTrayU\Uninstall Keyboard Lights 2.0.lnk"
  # Try to remove the Start Menu folder - this will only happen if it is empty
  ;;rmDir "$SMPROGRAMS\PopTrayU"

  # remove program files
  Delete "$INSTDIR\NotifyKeyboardLights.txt"
  Delete "$INSTDIR\NotifyKeyboardLights.dll"

  # remove uninstaller
  Delete "$INSTDIR\UninstallKeyboardLights20.exe"
  
  # Try to remove the install directory - this will only happen if it is empty
  ;;rmDir $INSTDIR

  DeleteRegKey ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}"
  SetAutoClose false
SectionEnd