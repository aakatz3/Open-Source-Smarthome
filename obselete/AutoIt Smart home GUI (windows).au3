#include <ButtonConstants.au3>
#include <GUIConstantsEx.au3>
#include <GuiStatusBar.au3>
#include <StaticConstants.au3>
#include <TabConstants.au3>
$PathTOWGetEXE = "C:\GNUWIN32\bin\wget.exe"
$AddressOfServer = "http://ip_address_of_pi:port/python_file_that_is_served.py"
#Region ### START Koda GUI section ### Form=GUI.kxf
$Form1 = GUICreate("Help Me Now Control Panel", 324, 224, 203, 119)
$StatusBar1 = _GUICtrlStatusBar_Create($Form1)
Dim $StatusBar1_PartsWidth[1] = [-1]
_GUICtrlStatusBar_SetParts($StatusBar1, $StatusBar1_PartsWidth)
_GUICtrlStatusBar_SetText($StatusBar1, "Copyright (C) Andrew Katz, 2013. Some rights reserved.", 0)
$Tab1 = GUICtrlCreateTab(16, 16, 257, 137)
$TabSheet1 = GUICtrlCreateTabItem("Appliences")
$Button8 = GUICtrlCreateButton("Radio", 64, 48, 91, 41)
$Button9 = GUICtrlCreateButton("Coffee Maker", 64, 96, 91, 41)
$Button10 = GUICtrlCreateButton("Dog Feeder", 168, 48, 91, 41)
$Button11 = GUICtrlCreateButton("Lights", 168, 96, 91, 41)
$Icon4 = GUICtrlCreateIcon("C:\Windows\System32\DDORes.dll", -6, 24, 48, 32, 32)
$TabSheet2 = GUICtrlCreateTabItem("TV")
$Button1 = GUICtrlCreateButton("Power", 24, 88, 43, 41, $BS_ICON)
GUICtrlSetImage(-1, "C:\Windows\System32\shell32.dll", -28)
$Button2 = GUICtrlCreateButton("Channel Up", 80, 48, 83, 25)
$Button3 = GUICtrlCreateButton("Channel Down", 80, 80, 83, 25)
$Button4 = GUICtrlCreateButton("Volume Up", 176, 48, 83, 25)
$Button5 = GUICtrlCreateButton("Volume Down", 176, 80, 83, 25)
$Button6 = GUICtrlCreateButton("Input", 80, 112, 83, 25)
$Icon1 = GUICtrlCreateIcon("C:\Windows\System32\DDORes.dll", -36, 32, 48, 32, 32)
$Button7 = GUICtrlCreateButton("Mute", 176, 112, 83, 25)
GUICtrlCreateTabItem("")
$Button14 = GUICtrlCreateButton("About", 56, 168, 219, 33)
$Icon3 = GUICtrlCreateIcon("C:\Windows\System32\imageres.dll", -77, 16, 168, 32, 32)
$Icon2 = GUICtrlCreateIcon("C:\Users\Andrew Katz\Icons\home.ico", -1, 280, 8, 32, 32)
$Icon5 = GUICtrlCreateIcon("C:\Users\Andrew Katz\Icons\home.ico", -1, 280, 48, 32, 32)
$Icon6 = GUICtrlCreateIcon("C:\Users\Andrew Katz\Icons\home.ico", -1, 280, 88, 32, 32)
$Icon7 = GUICtrlCreateIcon("C:\Users\Andrew Katz\Icons\home.ico", -1, 280, 128, 32, 32)
$Icon8 = GUICtrlCreateIcon("C:\Users\Andrew Katz\Icons\home.ico", -1, 280, 168, 32, 32)
GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###

While 1
	$nMsg = GUIGetMsg()
	Switch $nMsg
		Case $GUI_EVENT_CLOSE
			Exit

		Case $Button8
		   MsgBox(0,"","")
		Case $Button9
		   MsgBox(0,"","")
		Case $Button10
		   MsgBox(0,"","")
		Case $Button11
		   MsgBox(0,"","")
		Case $Button1
		   MsgBox(0,"","")
		Case $Button2
		   MsgBox(0,"","")
		Case $Button3
		   MsgBox(0,"","")
		Case $Button4
		   MsgBox(0,"","")
		Case $Button7
		   MsgBox(0,"","")
		Case $Button5
		   MsgBox(0,"","")
		Case $Button6
		   MsgBox(0,"","")
		Case $Button14
		   MsgBox(64,"About","Help Me Now GUI v1.01B, Copyright (C) Andrew Katz, 2013. Some rights reserved.")
	EndSwitch
WEnd
