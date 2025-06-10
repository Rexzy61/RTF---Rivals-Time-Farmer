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

X3 := x
Y3 := y

IniWrite(X3, iniFile, "Settings", "X3")
IniWrite(Y3, iniFile, "Settings", "Y3")

Run(A_ScriptDir "\..\Main.ahk")

ExitApp()