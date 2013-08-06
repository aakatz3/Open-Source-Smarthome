#include <ButtonConstants.au3>
#include <GUIConstantsEx.au3>
#include <StaticConstants.au3>
#include <WindowsConstants.au3>
#Region ### START Koda GUI section ### Form=C:\Windows\System32\Form1_1.kxf
$Form1_1 = GUICreate("Help Me Now GUI v0.1b", 410, 204, 189, 108)
$Group2 = GUICtrlCreateGroup("Notifications", 16, 16, 185, 121)
$Label2 = GUICtrlCreateLabel("Notifications", 24, 32, 62, 17)
$Button5 = GUICtrlCreateButton("On", 24, 56, 75, 25)
$Button6 = GUICtrlCreateButton("Off", 24, 88, 75, 25)
$Icon2 = GUICtrlCreateIcon("C:\Windows\System32\imageres.dll", -112, 104, 48, 88, 80)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$Group3 = GUICtrlCreateGroup("Appliences", 224, 16, 169, 121)
$Button1 = GUICtrlCreateButton("Coffee Maker", 296, 64, 75, 25)
$Button2 = GUICtrlCreateButton("Radio", 296, 32, 75, 25)
$Button3 = GUICtrlCreateButton("Button3", 240, 40, 1, 9)
$Button4 = GUICtrlCreateButton("Feed Dog", 296, 104, 75, 25)
$Icon3 = GUICtrlCreateIcon("C:\Windows\System32\DDORes.dll", -47, 232, 48, 48, 48)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$Button7 = GUICtrlCreateButton("About", 80, 144, 315, 49)
$Icon1 = GUICtrlCreateIcon("C:\Windows\System32\imageres.dll", -77, 16, 144, 48, 48)
GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###

$notify = 1
Run("C:\GNUWIN32\bin\wget.exe http://www.google.com/")

While 1
	$nMsg = GUIGetMsg()
	Switch $nMsg
		Case $GUI_EVENT_CLOSE
			Exit

		Case $Button5
		   $notify = 1
		Case $Button6
		   $notify = 0
		Case $Button1
		Case $Button2
		Case $Button4
		Case $Button7
		   MsgBox(0,"About","Help Me Now GUI, v0.1b, (C) Andrew Katz 2013. Some Rights Reserved")
	EndSwitch
WEnd


