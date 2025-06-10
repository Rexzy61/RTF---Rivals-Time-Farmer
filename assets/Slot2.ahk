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

X2 := x
Y2 := y

IniWrite(X2, iniFile, "Settings", "X2")
IniWrite(Y2, iniFile, "Settings", "Y2")

Run(A_ScriptDir "\..\Main.ahk")

ExitApp()