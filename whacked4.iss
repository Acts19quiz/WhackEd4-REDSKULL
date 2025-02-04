[Tasks]
Name: desktopicon; Description: Create a desktop icon; Flags: unchecked
Name: associate; Description: Associate with Dehacked patch files


[Files]
// Acts19quiz
Source: .\build\exe.win32-3.7\*.*; DestDir: {app}; Flags: recursesubdirs createallsubdirs
Source: .\fonts\dejavu-sans-mono\DejaVuSansMono.ttf; DestDir: {fonts}; Flags: onlyifdoesntexist uninsneveruninstall; FontInstall: DejaVu Sans Mono
Source: .\fonts\dejavu-sans-mono\DejaVuSansMono-Bold.ttf; DestDir: {fonts}; Flags: onlyifdoesntexist uninsneveruninstall; FontInstall: DejaVu Sans Mono Bold


[Icons]
Name: {group}\WhackEd4; Filename: {app}\whacked4.exe; WorkingDir: {app}; IconFilename: {app}\res\icon-hatchet.ico; IconIndex: 0
Name: {userdesktop}\WhackEd4; Filename: {app}\whacked4.exe; WorkingDir: {app}; IconFilename: {app}\res\icon-hatchet.ico; IconIndex: 0; Tasks: " desktopicon"
Name: {group}\{cm:UninstallProgram, WhackEd4}; Filename: {uninstallexe}


[Setup]
InternalCompressLevel=ultra64
SolidCompression=true
// Acts 19 quiz
AppName=WhackEd4 REDSKULL
// Acts 19 quiz
AppVerName=WhackEd4 REDSKULL 1.2.4
// Acts 19 quiz
DefaultDirName={pf}\WhackEd4 REDSKULL
AlwaysUsePersonalGroup=false
ShowLanguageDialog=no
AppVersion=1.2.4
UninstallDisplayIcon={app}\whacked4.exe
UninstallDisplayName=WhackEd4
AppendDefaultGroupName=true
// Acts 19 quiz
DefaultGroupName=WhackEd4 REDSKULL
Compression=lzma2/ultra64
OutputDir=.
SourceDir=.
// Acts 19 quiz
OutputBaseFilename=whacked4-REDSKULL-setup-1.2.4
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


[InstallDelete]
Name: {app}\cfg\tables_mbf_beta.json; Type: files


[UninstallDelete]
Name: {app}\res; Type: filesandordirs
Name: {app}\cfg; Type: filesandordirs
Name: {app}\*.*; Type: files
Name: {app}; Type: dirifempty
Name: {userappdata}\whacked4; Type: filesandordirs


[Registry]
Root: HKCR; SubKey: "WhackEd4"; ValueType: String; ValueName: ""; ValueData: "WhackEd4 patch file"; Flags: uninsdeletekey; Tasks: associate
Root: HKCR; Subkey: "WhackEd4\DefaultIcon"; ValueType: String; ValueName: ""; ValueData: "{app}\res\icon-document.ico,0"; Flags: uninsdeletekey; Tasks: associate

Root: HKCR; SubKey: "WhackEd4\Shell\Open\Command"; ValueType: String; ValueName: ""; ValueData: """{app}\whacked4.exe"" -workdir ""{app}"" -open ""%1"""; Flags: uninsdeletekey; Tasks: associate

Root: HKCR; SubKey: ".deh"; ValueType: String; ValueName: ""; ValueData: "WhackEd4"; Flags: uninsdeletekey; Tasks: associate
Root: HKCR; SubKey: ".bex"; ValueType: String; ValueName: ""; ValueData: "WhackEd4"; Flags: uninsdeletekey; Tasks: associate
