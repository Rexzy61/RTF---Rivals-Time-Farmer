#Requires AutoHotkey v2.0
#SingleInstance Force
;load InI Values
iniFile := A_ScriptDir "\data.ini"

X1 := IniRead(iniFile, "Settings", "X1", "Not Set or Found")
Y1 := IniRead(iniFile, "Settings", "Y1", "Not Set or Found")

X2 := IniRead(iniFile, "Settings", "X2", "Not Set or Found")
Y2 := IniRead(iniFile, "Settings", "Y2", "Not Set or Found")

X3 := IniRead(iniFile, "Settings", "X3", "Not Set or Found")
Y3 := IniRead(iniFile, "Settings", "Y3", "Not Set or Found")

X4 := IniRead(iniFile, "Settings", "X4", "Not Set or Found")
Y4 := IniRead(iniFile, "Settings", "Y4", "Not Set or Found")

Time := IniRead(iniFile, "Settings", "Time", 1000 = 1)

F6:: OnExitHandler()

MsgBox "Press Ok if you are on the Weapon select Screen."

WinActivate("Roblox")
Sleep(1000)

MouseMove(X1, Y1)
MouseMove(X1, Y1)
Sleep (100)
MouseClick("Left")

Sleep(500)

MouseMove(X2, Y2)
MouseMove(X2, Y2)
Sleep (100)
MouseClick("Left")

Sleep(500)

MouseMove(X3, Y3)
MouseMove(X3, Y3)
Sleep (100)
MouseClick("Left")

Sleep(500)

MouseMove(X4, Y4)
MouseMove(X4, Y4)
Sleep (100)
MouseClick("Left")

loop
{
    Send("1")
    Sleep(Time)
    Send("2")
    Sleep(Time)
    Send("3")
    Sleep(Time)
    Send("4")
    Sleep(Time)
}

OnExitHandler(*)
{
    Run(A_ScriptDir "\..\Main.ahk")
    ExitApp()
}