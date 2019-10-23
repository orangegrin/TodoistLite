; -- TodoistBoard.iss --
; Demonstrates copying 3 files and creating an icon.

; SEE THE DOCUMENTATION FOR DETAILS ON CREATING .ISS SCRIPT FILES!

[Setup]
AppName=TodoistLite
AppVersion=1.0
WizardStyle=modern
DefaultDirName={autopf}\TodoistLite
DefaultGroupName=TodoistLite
UninstallDisplayIcon={app}\TodoistLite.exe
Compression=lzma2
SolidCompression=yes
OutputDir=install

[Files]
Source: "bin\x64\Release\*"; DestDir: "{app}"

[Icons]
Name: "{group}\TodoistLite"; Filename: "{app}\TodoistLite.exe"
Name:"{commondesktop}\Todoist Lite"; Filename: "{app}\TodoistLite.exe"

[Run]
Filename: "{app}\TodoistLite.exe"; Description: "{cm:LaunchProgram,Todoist Lite}"; Flags: nowait postinstall skipifsilent