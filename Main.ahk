;AutoGUI creator: Alguimist autohotkey.com/boards/viewtopic.php?f=64&t=89901
;AHKv2converter creator: github.com/mmikeww/AHK-v2-script-converter
;EasyAutoGUI-AHKv2 github.com/samfisherirl/Easy-Auto-GUI-for-AHK-v2

#Requires AutoHotkey v2.0
#SingleInstance Force

;load InI Values
iniFile := A_ScriptDir "\assets\data.ini"

X1 := IniRead(iniFile, "Settings", "X1", "Not Set or Found")
Y1 := IniRead(iniFile, "Settings", "Y1", "Not Set or Found")

X2 := IniRead(iniFile, "Settings", "X2", "Not Set or Found")
Y2 := IniRead(iniFile, "Settings", "Y2", "Not Set or Found")

X3 := IniRead(iniFile, "Settings", "X3", "Not Set or Found")
Y3 := IniRead(iniFile, "Settings", "Y3", "Not Set or Found")

X4 := IniRead(iniFile, "Settings", "X4", "Not Set or Found")
Y4 := IniRead(iniFile, "Settings", "Y4", "Not Set or Found")

Time := IniRead(iniFile, "Settings", "Time", 1000 = 1)

myGui := Gui()
myGui.Show("w300 h200")
myGui.Title := "RTV V1.0"
myGui.OnEvent("Close", (*) => ExitApp())

	if FileExist(A_ScriptDir "\assets\images\img.png") {
		myGui.Add("Picture", "x205 y5 w90 h150", A_ScriptDir "\assets\images\img.png")
	}

	myGui.Add("Text", "x87 y181 w80 h23", "Stop (F6)")
    myGui.Add("Text", "x48 y160 w198 h2 +0x10")
	myGui.Add("Text", "x183 y162 w120 h21", "Time between Switch:")
	myGui.Add("Text", "x95 y8 w185 h23 +0x200", "X: " X1 " Y: " Y1)
	myGui.Add("Text", "x95 y40 w185 h23 +0x200", "X: " X2 " Y: " Y2)
	myGui.Add("Text", "x95 y72 w184 h23 +0x200", "X: " X3 " Y: " Y3)
	myGui.Add("Text", "x95 y104 w185 h23 +0x200", "X: " X4 " Y: " Y4)

BS := myGui.Add("Button", "x2 y176 w80 h23", "&OK (F5)")
Time := myGui.Add("Edit", "x175 y177 w120 h21", Time)
Slot1 := myGui.Add("Button", "x8 y8 w80 h23", "Slot 1")
Slot2 := myGui.Add("Button", "x8 y40 w80 h23", "Slot 2")
Slot3 := myGui.Add("Button", "x8 y72 w80 h23", "Slot 3")
Slot4 := myGui.Add("Button", "x8 y104 w80 h23", "Slot 4")

BS.OnEvent("Click", Start)
Time.OnEvent("Change", Save)

Slot1.OnEvent("Click", S1press)
Slot2.OnEvent("Click", S2press)
Slot3.OnEvent("Click", S3press)
Slot4.OnEvent("Click", S4press)

S1press(*) {
	Run(A_ScriptDir "\assets\Slot1.ahk")
	ExitApp()
}

S2press(*) {
	Run(A_ScriptDir "\assets\Slot2.ahk")
	ExitApp()
}

S3press(*) {
	Run(A_ScriptDir "\assets\Slot3.ahk")
	ExitApp()
}

S4press(*) {
	Run(A_ScriptDir "\assets\Slot4.ahk")
	ExitApp()
}

Start(*) {
	Run(A_ScriptDir "\assets\main.ahk")
	ExitApp()
}

Save(*) {
	IniWrite(Time.Value, iniFile, "Settings", "Time")
}