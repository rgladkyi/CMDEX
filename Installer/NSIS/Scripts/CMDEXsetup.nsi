!define PRODUCT_NAME "CMDEX Preset"
!define PRODUCT_VERSION "0.3.7"
!define PRODUCT_PUBLISHER "Roman Gladkyi"
!define PRODUCT_WEB_SITE "https://rgladkyi.github.io/CMDEX/"

!include "MUI2.nsh"

;-------------------------------
; General settings

  Name "CMDEX"
  OutFile "CMDEXsetup.exe"


  ;Default installation folder
  InstallDir "C:\Program Files\CMDEX Preset"

  ;Get installation folder from registry if available
  InstallDirRegKey HKCU "Software\CMDEX" "RootDirectory"

  ;Request application privileges for Windows Vista
  RequestExecutionLevel admin

;--------------------------------
;Interface Settings

  !define MUI_ICON "C:\CMDEX\Resources\CMDEX_Logo_Icon_v1.ico"

  !define MUI_HEADERIMAGE
  !define MUI_HEADERIMAGE_BITMAP "C:\CMDEX\Resources\Installer_Header_Image_Logo_Shadow_v1.bmp"
  !define MUI_HEADERIMAGE_RIGHT
  !define MUI_ABORTWARNING

;--------------------------------
;Pages

  !insertmacro MUI_PAGE_WELCOME
  !insertmacro MUI_PAGE_LICENSE "C:\CMDEX\License.txt"
  !insertmacro MUI_PAGE_COMPONENTS
  
  !insertmacro MUI_PAGE_DIRECTORY

  !insertmacro MUI_PAGE_INSTFILES
  !insertmacro MUI_PAGE_FINISH

  !insertmacro MUI_UNPAGE_WELCOME
  !insertmacro MUI_UNPAGE_CONFIRM
  !insertmacro MUI_UNPAGE_INSTFILES
  !insertmacro MUI_UNPAGE_FINISH

;--------------------------------
;Languages

  !insertmacro MUI_LANGUAGE "English"

;--------------------------------
;Installer Sections

Section "CMDEX" SectionCMDEX

  SetOutPath "$INSTDIR"

  ;ADD YOUR OWN FILES HERE...

  SetOverwrite on

  ExecWait '"C:\CMDEX\Installer\TerminateRunningProcessesBeforeItsUpdate.bat"'
  ExecWait '"C:\CMDEX\Interfaces\cmdex_add_settings_to_registry.bat" "$INSTDIR"'
  ExecWait '"C:\CMDEX\Interfaces\cmdex_get_set_root_dir.bat"'
  
  SetOutPath "$INSTDIR\"    
  File /r "C:\CMDEX\install.bat"

  ;SetOutPath "$INSTDIR\Aliases\"    
  ;File /r "C:\CMDEX\Aliases\doc.txt"

  ;SetOutPath "$INSTDIR\Automation\"    
  ;File /r "C:\CMDEX\Automation\*"


  SetOutPath "$INSTDIR\Data\"    
  File /r "C:\CMDEX\Data\clear_last_oppened_data.bat"

  ;SetOutPath "$INSTDIR\Data\Settings\"    
  ;File /r "C:\CMDEX\Data\Settings\*"
  

  SetOutPath "$INSTDIR\Documentation\"    
  File /r "C:\CMDEX\Documentation\*"

  ;SetOutPath "$INSTDIR\History\"    
  ;File /r "C:\CMDEX\History\doc.txt"

  SetOutPath "$INSTDIR\Installer\"    
  File /r "C:\CMDEX\Installer\*"

  SetOutPath "$INSTDIR\Interfaces\"
  File /r "C:\CMDEX\Interfaces\*"

  ;SetOutPath "$INSTDIR\Mirror\"
  ;File /r "C:\CMDEX\Mirror\*"

  SetOutPath "$INSTDIR\Release\"    
  File /r "C:\CMDEX\Release\VersionId.txt"

  SetOutPath "$INSTDIR\Resources\"    
  File /r "C:\CMDEX\Resources\*"

  ;SetOutPath "$INSTDIR\Saves\"    
  ;File /r "C:\CMDEX\Saves\*"

  ;SetOutPath "$INSTDIR\TestCases\"    
  ;File /r "C:\CMDEX\TestCases\*"

  ;SetOutPath "$INSTDIR\Wall\"    
  ;File /r "C:\CMDEX\Wall\doc.txt"
  
  
  SetOutPath "$INSTDIR\Tools\"
  ;File /r "C:\CMDEX\Tools\*" 

  SetOutPath "$INSTDIR\Tools\GnuWin32\"
  File /r "C:\CMDEX\Tools\GnuWin32\*" 

  SetOutPath "$INSTDIR\Tools\WinDirStat\"
  File /r "C:\CMDEX\Tools\WinDirStat\*" 

  ;SetOutPath "$INSTDIR\Tools\WinMerge\"
  ;File /r "C:\CMDEX\Tools\WinMerge\*" 

  ;SetOutPath "$INSTDIR\Tools\Notepad++\"
  ;File /r "C:\CMDEX\Tools\Notepad++\*" 

  ;SetOutPath "$INSTDIR\Tools\MCITool\"
  ;File /r "C:\CMDEX\Tools\MCITool\*" 

  ;SetOutPath "$INSTDIR\Tools\Vim\"
  ;File /r "C:\CMDEX\Tools\Vim\*" 

  ;SetOutPath "$INSTDIR\Tools\MinGW\"
  ;File /r "C:\CMDEX\Tools\MinGW\*" 

  SetOutPath "$INSTDIR\Tools\7z\"
  File /r "C:\CMDEX\Tools\7z\*" 

  ;SetOutPath "$INSTDIR\Tools\AltDrag\"
  ;File /r "C:\CMDEX\Tools\AltDrag\*" 

  SetOutPath "$INSTDIR\WinOpenInstaller\Installer"
  File /r "C:\CMDEX\WinOpenInstaller\Installer\*" 

  SetOutPath "$INSTDIR\WinOpenInstaller\InstallScripts"
  File /r "C:\CMDEX\WinOpenInstaller\InstallScripts\*" 

  SetOutPath "$INSTDIR\WinOpenInstaller\Tools\7z"
  File /r "C:\CMDEX\WinOpenInstaller\Tools\7z\*" 

  SetOutPath "$INSTDIR\WinOpenInstaller\Tools\GnuWin32"
  File /r "C:\CMDEX\WinOpenInstaller\Tools\GnuWin32\*" 

  SetOutPath "$INSTDIR\WinOpenInstaller\"
  File /r "C:\CMDEX\WinOpenInstaller\LICENSE" 

  SetOutPath "$INSTDIR\WinOpenInstaller\"
  File /r "C:\CMDEX\WinOpenInstaller\README.md" 

  SetOutPath "$INSTDIR\Updater\"
  File /r "C:\CMDEX\Updater\*" 

  SetOutPath "$INSTDIR\Autogenerate\"
  File /r "C:\CMDEX\Autogenerate\*" 

  ;SetOutPath "$INSTDIR\"
  ;File /r "C:\CMDEX\ADMIN.lnk" 

  SetOutPath "$INSTDIR\"
  File /r "C:\CMDEX\README.txt"

  ;test File /r "C:\CMDEX\Interfaces\*"

  ;Store installation folder
  WriteRegStr HKCU "Software\CMDEX" "" $INSTDIR

  ;Create uninstaller
  WriteUninstaller "$INSTDIR\Uninstall.exe"

  ExecWait '"C:\CMDEX\Interfaces\cmdex_add_to_path.bat" "$INSTDIR"'
  ExecWait '"C:\CMDEX\Interfaces\cmdex_create_shortcuts.bat"'

SectionEnd

;--------------------------------
;Descriptions

  ;Language strings
  LangString DESC_SecDummy ${LANG_ENGLISH} "Install All CMDEX components, update system PATH, and create shortcuts on the Desktop."

  ;Assign language strings to sections
  ;!insertmacro MUI_FUNCTION_DESCRIPTION_BEGIN
  ;  !insertmacro MUI_DESCRIPTION_TEXT ${SectionCMDEX} $(DESC_SecDummy)
  ;!insertmacro MUI_FUNCTION_DESCRIPTION_END

;--------------------------------
;Reboot prompt

Function .onInstSuccess
  MessageBox MB_YESNO|MB_ICONQUESTION "Do you wish to reboot the system?" IDNO +2
  Reboot
FunctionEnd

;--------------------------------
;Uninstaller Section

Section "Uninstall"

  ExecWait '"$INSTDIR\Interfaces\cmdex_remove_shortcuts.bat"'
  ExecWait '"$INSTDIR\Interfaces\cmdex_remove_from_path.bat"'

  ExecWait '"$INSTDIR\Installer\TerminateRunningProcessesBeforeItsUpdate.bat"'

  ;ADD YOUR OWN FILES HERE...


  RMDir /r "$INSTDIR\Tools"
  RMDir /r "$INSTDIR\Release"
  RMDir /r "$INSTDIR\Installer"
  RMDir /r "$INSTDIR\WinOpenInstaller"
  RMDir /r "$INSTDIR\Resources"

  RMDir "$INSTDIR"
  
  Delete "$INSTDIR\Uninstall.exe"
  
  DeleteRegKey /ifempty HKCU "Software\CMDEX"

SectionEnd
