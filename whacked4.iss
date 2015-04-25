[Tasks]
Name: desktopicon; Description: Create a desktop icon; Flags: unchecked
Name: associate; Description: Associate with Dehacked patch files


[Files]
Source: .\build\exe.win32-2.7\*.*; DestDir: {app}; Flags: recursesubdirs createallsubdirs
Source: .\fonts\ttf-bitstream-vera-1.10\VeraMono.ttf; DestDir: {fonts}; Flags: onlyifdoesntexist uninsneveruninstall; FontInstall: Bitstream Vera Sans Mono
Source: .\fonts\ttf-bitstream-vera-1.10\VeraMoBd.ttf; DestDir: {fonts}; Flags: onlyifdoesntexist uninsneveruninstall; FontInstall: Bitstream Vera Sans Mono Bold
Source: .\fonts\ttf-bitstream-vera-1.10\VeraMoBi.ttf; DestDir: {fonts}; Flags: onlyifdoesntexist uninsneveruninstall; FontInstall: Bitstream Vera Sans Mono Bold Oblique
Source: .\fonts\ttf-bitstream-vera-1.10\VeraMoIt.ttf; DestDir: {fonts}; Flags: onlyifdoesntexist uninsneveruninstall; FontInstall: Bitstream Vera Sans Mono Oblique


[Icons]
Name: {group}\WhackEd4; Filename: {app}\whacked4.exe; WorkingDir: {app}; IconFilename: {app}\res\icon-hatchet.ico; IconIndex: 0
Name: {userdesktop}\WhackEd4; Filename: {app}\whacked4.exe; WorkingDir: {app}; IconFilename: {app}\res\icon-hatchet.ico; IconIndex: 0; Tasks: " desktopicon"
Name: {group}\{cm:UninstallProgram, WhackEd4}; Filename: {uninstallexe}


[Setup]
InternalCompressLevel=ultra64
SolidCompression=true
AppName=WhackEd4
AppVerName=WhackEd4 1.1.0
DefaultDirName={pf}\WhackEd4
AlwaysUsePersonalGroup=false
ShowLanguageDialog=no
AppVersion=1.1.0
UninstallDisplayIcon={app}\whacked4.exe
UninstallDisplayName=WhackEd4
AppendDefaultGroupName=true
DefaultGroupName=WhackEd4
Compression=lzma/ultra64
OutputDir=.
SourceDir=.
OutputBaseFilename=whacked4-setup-1.1.0
AllowNoIcons=true
PrivilegesRequired=admin
ChangesAssociations=true
InfoBeforeFile=
LicenseFile=LICENSE
FlatComponentsList=true
UninstallLogMode=overwrite
LanguageDetectionMethod=none
WizardImageStretch=false
RestartIfNeededByRun=false
AppID={{A8A56AC6-E82B-49AD-9093-5AC204830F89}


[Run]
Filename: {app}\whacked4.exe; WorkingDir: {app}; Description: Run WhackEd4; Flags: nowait postinstall hidewizard skipifsilent


[UninstallDelete]
Name: {app}\res; Type: filesandordirs
Name: {app}\cfg; Type: filesandordirs
Name: {app}\*.*; Type: files
Name: {app}; Type: dirifempty
Name: {userappdata}\whacked4; Type: filesandordirs


[Registry]
Root: HKCR; SubKey: .deh; ValueType: string; ValueData: WhackEd4; Flags: uninsdeletekey; Tasks: associate
Root: HKCR; SubKey: .bex; ValueType: string; ValueData: WhackEd4; Flags: uninsdeletekey; Tasks: associate
Root: HKCR; SubKey: WhackEd4; ValueType: string; ValueData: WhackEd4 patch file; Flags: uninsdeletekey; Tasks: associate
Root: HKCR; SubKey: WhackEd4\Shell\Open\Command; ValueType: string; ValueData: """{app}\whacked4.exe"" ""%1"""; Flags: uninsdeletevalue; Tasks: associate
Root: HKCR; Subkey: WhackEd4\DefaultIcon; ValueType: string; ValueData: {app}\res\icon-document.ico,0; Flags: uninsdeletevalue; Tasks: associate
