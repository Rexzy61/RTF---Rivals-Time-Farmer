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

X1 := x
Y1 := y

IniWrite(X1, iniFile, "Settings", "X1")
IniWrite(Y1, iniFile, "Settings", "Y1")

Run(A_ScriptDir "\..\Main.ahk")

ExitApp()