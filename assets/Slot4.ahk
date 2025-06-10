#Requires AutoHotkey v2.0

Sleep (100)

;set INI file path
iniFile := A_ScriptDir "\data.ini"

WinActivate("Roblox")

Sleep (100)

while !GetKeyState("LButton", "P")
{
	MouseGetPos &x, &y
	ToolTip "X: " x "`nY: " y
}

X4 := x
Y4 := y

IniWrite(X4, iniFile, "Settings", "X4")
IniWrite(Y4, iniFile, "Settings", "Y4")

Run(A_ScriptDir "\..\Main.ahk")

ExitApp()