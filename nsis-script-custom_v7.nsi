;--------------------------------
;Include Modern UI

!include "MUI2.nsh"

;--------------------------------
;Custom Variables

;Define name of the product
!define PRODUCT "e-Sword Modulos"

;Define website of the product
!define PRODUCT_URL "https://github.com/YourGitHubUsername/e-Sword-Modulos"

;--------------------------------
;General information

;Properly display all languages
Unicode true

;The name of the installer
Name "${PRODUCT}"

;The output file path of the installer to be created
OutFile "e-Sword Modulos Installer.exe"

;The default installation directory
InstallDir "$PROGRAMFILES64\${PRODUCT}"

;Registry key to check for a install directory from a previous installation
InstallDirRegKey HKLM "Software\${PRODUCT}" "Install_Dir"

;Request application privileges for Windows Vista and higher
RequestExecutionLevel admin

;Show the 'console' in installer
ShowInstDetails show

;Show the 'console' in uninstaller
ShowUninstDetails show

;--------------------------------
;Interface Settings

;Warn the user before aborting the installer
!define MUI_ABORTWARNING

;Use custom icons
!define MUI_ICON "example_files\icon_installer.ico"
!define MUI_UNICON "example_files\icon_uninstaller.ico"

;Use custom pictures for the 'Welcome' and 'Finish' page
!define MUI_HEADERIMAGE_RIGHT
!define MUI_WELCOMEFINISHPAGE_BITMAP "example_files\picture_installer.bmp"
!define MUI_UNWELCOMEFINISHPAGE_BITMAP "example_files\picture_uninstaller.bmp"

;--------------------------------
;Installer pages

;Show a page where the user needs to accept a license
!insertmacro MUI_PAGE_LICENSE "example_files\License.txt"
;Show a page where the user can customize the components to be installed
!insertmacro MUI_PAGE_COMPONENTS
;Show a page where the user can customize the install directory
!insertmacro MUI_PAGE_DIRECTORY
;Show a page where the progress of the install is listed
!insertmacro MUI_PAGE_INSTFILES

;--------------------------------
;Uninstaller pages

;Show a page where the user needs to confirm the uninstall
!insertmacro MUI_UNPAGE_CONFIRM
;Show a page where the progress of the uninstall is listed
!insertmacro MUI_UNPAGE_INSTFILES

;--------------------------------
;Languages

  !insertmacro MUI_LANGUAGE "English"
  !insertmacro MUI_LANGUAGE "French"
  !insertmacro MUI_LANGUAGE "German"
  !insertmacro MUI_LANGUAGE "Spanish"
  !insertmacro MUI_LANGUAGE "SpanishInternational"
  !insertmacro MUI_LANGUAGE "SimpChinese"
  !insertmacro MUI_LANGUAGE "TradChinese"
  !insertmacro MUI_LANGUAGE "Japanese"
  !insertmacro MUI_LANGUAGE "Korean"
  !insertmacro MUI_LANGUAGE "Italian"
  !insertmacro MUI_LANGUAGE "Dutch"
  !insertmacro MUI_LANGUAGE "Danish"
  !insertmacro MUI_LANGUAGE "Swedish"
  !insertmacro MUI_LANGUAGE "Norwegian"
  !insertmacro MUI_LANGUAGE "NorwegianNynorsk"
  !insertmacro MUI_LANGUAGE "Finnish"
  !insertmacro MUI_LANGUAGE "Greek"
  !insertmacro MUI_LANGUAGE "Russian"
  !insertmacro MUI_LANGUAGE "Portuguese"
  !insertmacro MUI_LANGUAGE "PortugueseBR"
  !insertmacro MUI_LANGUAGE "Polish"
  !insertmacro MUI_LANGUAGE "Ukrainian"
  !insertmacro MUI_LANGUAGE "Czech"
  !insertmacro MUI_LANGUAGE "Slovak"
  !insertmacro MUI_LANGUAGE "Croatian"
  !insertmacro MUI_LANGUAGE "Bulgarian"
  !insertmacro MUI_LANGUAGE "Hungarian"
  !insertmacro MUI_LANGUAGE "Thai"
  !insertmacro MUI_LANGUAGE "Romanian"
  !insertmacro MUI_LANGUAGE "Latvian"
  !insertmacro MUI_LANGUAGE "Macedonian"
  !insertmacro MUI_LANGUAGE "Estonian"
  !insertmacro MUI_LANGUAGE "Turkish"
  !insertmacro MUI_LANGUAGE "Lithuanian"
  !insertmacro MUI_LANGUAGE "Slovenian"
  !insertmacro MUI_LANGUAGE "Serbian"
  !insertmacro MUI_LANGUAGE "SerbianLatin"
  !insertmacro MUI_LANGUAGE "Arabic"
  !insertmacro MUI_LANGUAGE "Farsi"
  !insertmacro MUI_LANGUAGE "Hebrew"
  !insertmacro MUI_LANGUAGE "Indonesian"
  !insertmacro MUI_LANGUAGE "Mongolian"
  !insertmacro MUI_LANGUAGE "Luxembourgish"
  !insertmacro MUI_LANGUAGE "Albanian"
  !insertmacro MUI_LANGUAGE "Breton"
  !insertmacro MUI_LANGUAGE "Belarusian"
  !insertmacro MUI_LANGUAGE "Icelandic"
  !insertmacro MUI_LANGUAGE "Malay"
  !insertmacro MUI_LANGUAGE "Bosnian"
  !insertmacro MUI_LANGUAGE "Kurdish"
  !insertmacro MUI_LANGUAGE "Irish"
  !insertmacro MUI_LANGUAGE "Uzbek"
  !insertmacro MUI_LANGUAGE "Galician"
  !insertmacro MUI_LANGUAGE "Afrikaans"
  !insertmacro MUI_LANGUAGE "Catalan"
  !insertmacro MUI_LANGUAGE "Esperanto"
  !insertmacro MUI_LANGUAGE "Asturian"
  !insertmacro MUI_LANGUAGE "Basque"
  !insertmacro MUI_LANGUAGE "Pashto"
  !insertmacro MUI_LANGUAGE "ScotsGaelic"
  !insertmacro MUI_LANGUAGE "Georgian"
  !insertmacro MUI_LANGUAGE "Vietnamese"
  !insertmacro MUI_LANGUAGE "Welsh"
  !insertmacro MUI_LANGUAGE "Armenian"
  !insertmacro MUI_LANGUAGE "Corsican"
  !insertmacro MUI_LANGUAGE "Tatar"
  !insertmacro MUI_LANGUAGE "Hindi"
;--------------------------------
;Installer Sections

Section "Install Modules" SecInstallModules
  SectionIn RO
  
  SetOutPath "$INSTDIR"
  
  ;Copy files to the installation directory
  File /r "modulos\*.*"

  ;Store installation folder
  WriteRegStr HKLM "Software\${PRODUCT}" "Install_Dir" "$INSTDIR"

  ;Create uninstaller
  WriteUninstaller "$INSTDIR\Uninstall.exe"

  ;Create entry in Add/Remove Programs
  WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\${PRODUCT}" "DisplayName" "${PRODUCT}"
  WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\${PRODUCT}" "UninstallString" "$\"$INSTDIR\Uninstall.exe$\""
  WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\${PRODUCT}" "QuietUninstallString" "$\"$INSTDIR\Uninstall.exe$\" /S"
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\${PRODUCT}" "NoModify" 1
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\${PRODUCT}" "NoRepair" 1
SectionEnd

;--------------------------------
;Descriptions

!insertmacro MUI_FUNCTION_DESCRIPTION_BEGIN
  !insertmacro MUI_DESCRIPTION_TEXT ${SecInstallModules} "Modulos de e-Sword: Biblias, Comentarios, Armonias, Devocionales, Diccionarios"
!insertmacro MUI_FUNCTION_DESCRIPTION_END

;--------------------------------
;Installer Functions

Function .onInit
  !insertmacro MUI_LANGDLL_DISPLAY
FunctionEnd

Function .onInstSuccess
  ;Open the product website
  ExecShell "open" "${PRODUCT_URL}"
  
  ;Open the installation directory
  ExecShell "open" "$INSTDIR"
FunctionEnd

;--------------------------------
;Uninstaller Section

Section "Uninstall"
  ;Remove registry keys
  DeleteRegKey HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\${PRODUCT}"
  DeleteRegKey HKLM "Software\${PRODUCT}"

  ;Remove files and uninstaller
  RMDir /r "$INSTDIR\*.*"
  Delete "$INSTDIR\Uninstall.exe"

  ;Remove directories used
  RMDir "$INSTDIR"
SectionEnd

;--------------------------------
;Uninstaller Functions

Function un.onInit
  !insertmacro MUI_UNGETLANGUAGE
FunctionEnd
