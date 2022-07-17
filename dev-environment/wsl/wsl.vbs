' We can create a shortcut to this script in order to easly launch wsl with X11 server in windows

' This script is meant to be launched from the Windows side, to start up a decorationless
' VcXsrv container for the environment.
'
' You may need to change this to reflect your VcXsrv install path as well as screen resolution.
' Then after the VcXsrv container is running, it pulls the WSL Ubuntu into it, along with a launch script.

Set shell = CreateObject("WScript.Shell" ) 
shell.Run """C:\Program Files\VcXsrv\vcxsrv.exe"" :0 -ac -screen 0 @2 -wgl -nodecoration +xinerama -screen 1 @1 -wgl -nodecoration +xinerama -engine 1"
WScript.Sleep 200
shell.Run 
