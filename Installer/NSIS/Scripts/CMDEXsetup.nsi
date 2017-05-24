!define PRODUCT_NAME "CMDEX Preset"
!define PRODUCT_VERSION "0.3.9"
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

  !define MUI_ICON "$%CMDEX_ROOT_DIR%\Resources\CMDEX_Logo_Icon_v1.ico"

  !define MUI_HEADERIMAGE
  !define MUI_HEADERIMAGE_BITMAP "$%CMDEX_ROOT_DIR%\Resources\Installer_Header_Image_Logo_Shadow_v1.bmp"
  !define MUI_HEADERIMAGE_RIGHT
  !define MUI_ABORTWARNING

;--------------------------------
;Pages

  !insertmacro MUI_PAGE_WELCOME
  !insertmacro MUI_PAGE_LICENSE "$%CMDEX_ROOT_DIR%\License.txt"
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

  SetOutPath "$INSTDIR\"    
  File /r "$%CMDEX_ROOT_DIR%\install.bat"

  ;SetOutPath "$INSTDIR\Aliases\"    
  ;File /r "$%CMDEX_ROOT_DIR%\Aliases\doc.txt"

  ;SetOutPath "$INSTDIR\Automation\"    
  ;File /r "$%CMDEX_ROOT_DIR%\Automation\*"


  SetOutPath "$INSTDIR\Data\"    
  File /r "$%CMDEX_ROOT_DIR%\Data\clear_last_oppened_data.bat"

  ;SetOutPath "$INSTDIR\Data\Settings\"    
  ;File /r "$%CMDEX_ROOT_DIR%\Data\Settings\*"
  

  SetOutPath "$INSTDIR\Documentation\"    
  File /r "$%CMDEX_ROOT_DIR%\Documentation\*"

  ;SetOutPath "$INSTDIR\History\"    
  ;File /r "$%CMDEX_ROOT_DIR%\History\doc.txt"

  SetOutPath "$INSTDIR\Installer\"    
  ;File /r "$%CMDEX_ROOT_DIR%\Installer\*"

  SetOutPath "$INSTDIR\Interfaces\"
  File /r "$%CMDEX_ROOT_DIR%\Interfaces\*"

  ;SetOutPath "$INSTDIR\Mirror\"
  ;File /r "$%CMDEX_ROOT_DIR%\Mirror\*"

  SetOutPath "$INSTDIR\Release\"    
  File /r "$%CMDEX_ROOT_DIR%\Release\VersionId.txt"

  SetOutPath "$INSTDIR\Resources\"    
  File /r "$%CMDEX_ROOT_DIR%\Resources\*"

  ;SetOutPath "$INSTDIR\Saves\"    
  ;File /r "$%CMDEX_ROOT_DIR%\Saves\*"

  ;SetOutPath "$INSTDIR\TestCases\"    
  ;File /r "$%CMDEX_ROOT_DIR%\TestCases\*"

  ;SetOutPath "$INSTDIR\Wall\"    
  ;File /r "$%CMDEX_ROOT_DIR%\Wall\doc.txt"
  
  
  SetOutPath "$INSTDIR\Tools\"
  ;File /r "$%CMDEX_ROOT_DIR%\Tools\*" 

  SetOutPath "$INSTDIR\Tools\GnuWin32\"
  File /r "$%CMDEX_ROOT_DIR%\Tools\GnuWin32\*" 

  SetOutPath "$INSTDIR\Tools\WinDirStat\"
  File /r "$%CMDEX_ROOT_DIR%\Tools\WinDirStat\*" 

  ;SetOutPath "$INSTDIR\Tools\WinMerge\"
  ;File /r "$%CMDEX_ROOT_DIR%\Tools\WinMerge\*" 

  ;SetOutPath "$INSTDIR\Tools\Notepad++\"
  ;File /r "$%CMDEX_ROOT_DIR%\Tools\Notepad++\*" 

  ;SetOutPath "$INSTDIR\Tools\MCITool\"
  ;File /r "$%CMDEX_ROOT_DIR%\Tools\MCITool\*" 

  ;SetOutPath "$INSTDIR\Tools\Vim\"
  ;File /r "$%CMDEX_ROOT_DIR%\Tools\Vim\*" 

  ;SetOutPath "$INSTDIR\Tools\MinGW\"
  ;File /r "$%CMDEX_ROOT_DIR%\Tools\MinGW\*" 

  SetOutPath "$INSTDIR\Tools\7z\"
  File /r "$%CMDEX_ROOT_DIR%\Tools\7z\*" 

  ;SetOutPath "$INSTDIR\Tools\AltDrag\"
  ;File /r "$%CMDEX_ROOT_DIR%\Tools\AltDrag\*" 

  SetOutPath "$INSTDIR\WinOpenInstaller\Installer"
  File /r "$%CMDEX_ROOT_DIR%\WinOpenInstaller\Installer\*" 

  SetOutPath "$INSTDIR\WinOpenInstaller\InstallScripts"
  File /r "$%CMDEX_ROOT_DIR%\WinOpenInstaller\InstallScripts\*" 

  SetOutPath "$INSTDIR\WinOpenInstaller\Tools\7z"
  File /r "$%CMDEX_ROOT_DIR%\WinOpenInstaller\Tools\7z\*" 

  SetOutPath "$INSTDIR\WinOpenInstaller\Tools\GnuWin32"
  File /r "$%CMDEX_ROOT_DIR%\WinOpenInstaller\Tools\GnuWin32\*" 

  SetOutPath "$INSTDIR\WinOpenInstaller\"
  File /r "$%CMDEX_ROOT_DIR%\WinOpenInstaller\LICENSE" 

  SetOutPath "$INSTDIR\WinOpenInstaller\"
  File /r "$%CMDEX_ROOT_DIR%\WinOpenInstaller\README.md" 

  SetOutPath "$INSTDIR\Updater\"
  File /r "$%CMDEX_ROOT_DIR%\Updater\*" 

  SetOutPath "$INSTDIR\Autogenerate\"
  File /r "$%CMDEX_ROOT_DIR%\Autogenerate\*" 

  ;SetOutPath "$INSTDIR\"
  ;File /r "$%CMDEX_ROOT_DIR%\ADMIN.lnk" 

  SetOutPath "$INSTDIR\"
  File /r "$%CMDEX_ROOT_DIR%\README.txt"

  ;test File /r "$%CMDEX_ROOT_DIR%\Interfaces\*"

  ;Store installation folder
;  WriteRegStr HKCU "Software\CMDEX" "" $INSTDIR

  ;Create uninstaller
  WriteUninstaller "$INSTDIR\Uninstall.exe"

  ;---------- Bat filese to execute
;        
 ;       SetOutPath "$INSTDIR\Installer\TerminateRunningProcessesBeforeItsUpdate.bat"
  ;File /r "$%CMDEX_ROOT_DIR%\Installer\TerminateRunningProcessesBeforeItsUpdate.bat"
;
 ;       SetOutPath "$INSTDIR\Interfaces\cmdex_add_settings_to_registry.bat"
  ;File /r "$%CMDEX_ROOT_DIR%\Interfaces\cmdex_add_settings_to_registry.bat"
;
;        SetOutPath "$INSTDIR\Interfaces\cmdex_get_set_root_dir.bat"
 ; File /r "$%CMDEX_ROOT_DIR%\Interfaces\cmdex_get_set_root_dir.bat"
;
 ;       SetOutPath "$INSTDIR\Interfaces\cmdex_add_to_path.bat"
  ;File /r "$%CMDEX_ROOT_DIR%\Interfaces\cmdex_add_to_path.bat"
;
 ;       SetOutPath "$INSTDIR\Interfaces\cmdex_create_shortcuts.bat"
  ;File /r "$%CMDEX_ROOT_DIR%\Interfaces\cmdex_create_shortcuts.bat"

  ExecWait '"$INSTDIR\Installer\TerminateRunningProcessesBeforeItsUpdate.bat"'
  ExecWait '"$INSTDIR\Interfaces\cmdex_add_settings_to_registry.bat" "$INSTDIR"'
  ExecWait '"$INSTDIR\Interfaces\cmdex_get_set_root_dir.bat"'

  ExecWait '"$INSTDIR\Interfaces\cmdex_add_to_path.bat" "$INSTDIR"'
  ExecWait '"$INSTDIR\Interfaces\cmdex_create_shortcuts.bat"'

  ;---------------- TEST
  ;ExecWait '"C:\CMDEX\Installer\TerminateRunningProcessesBeforeItsUpdate.bat"'
  ;ExecWait '"C:\CMDEX\Interfaces\cmdex_add_settings_to_registry.bat" "C:\CMDEX"'
  ;ExecWait '"C:\CMDEX\Interfaces\cmdex_get_set_root_dir.bat"'

  ;ExecWait '"C:\CMDEX\Interfaces\cmdex_add_to_path.bat" "C:\CMDEX"'
  ;ExecWait '"C:\CMDEX\Interfaces\cmdex_create_shortcuts.bat"'

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
