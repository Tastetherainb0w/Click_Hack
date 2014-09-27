#cs ----------------------------------------------------------------------------

	AutoIt Version: 3.3.12.0
	Author:         Tastetherainb0w

	Script Function:
	Template AutoIt script.

#ce ----------------------------------------------------------------------------

#include <ButtonConstants.au3>
#include <GUIConstantsEx.au3>
#include <StaticConstants.au3>
#include <WindowsConstants.au3>
#include <msgboxconstants.au3>
#include <misc.au3>

Global $SpeedReturn, $clickhack



#Region ### START Koda GUI section ### Form=
$Form1_1 = GUICreate("Form1", 353, 299, 187, 125, -1, $WS_EX_TOPMOST)
GUISetBkColor(0x3399FF)
$Button1 = GUICtrlCreateButton("Start The Hack!!!!!", -40, 208, 433, 121)
GUICtrlSetFont(-1, 25, 400, 0, "MS Sans Serif")
GUICtrlSetBkColor(-1, 0x0000FF)
$Label1 = GUICtrlCreateLabel("Made By, Tastetherainb0w", 176, 0, 192, 24)
GUICtrlSetFont(-1, 13, 400, 0, "MS Sans Serif")
$Button2 = GUICtrlCreateButton("About", 0, 0, 153, 25)
GUICtrlSetFont(-1, 13, 400, 0, "MS Sans Serif")
GUICtrlSetBkColor(-1, 0x0000FF)
$Label2 = GUICtrlCreateLabel("To initiate the hack hit the button below", 48, 152, 278, 24)
GUICtrlSetFont(-1, 12, 400, 0, "MS Sans Serif")
Global $Label3 = GUICtrlCreateLabel("NOT CLICKING", 128, 32, 84, 17)
$Label4 = GUICtrlCreateLabel("To stop the hack hit escape", 88, 184, 199, 24)
GUICtrlSetFont(-1, 12, 400, 0, "MS Sans Serif")
GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###


While 1
	$nMsg = GUIGetMsg()
	Switch $nMsg
		Case $GUI_EVENT_CLOSE
			Exit
		Case $Button2
			MsgBox($mb_iconinformation, "About the Developer:", "Created by: Benjamin Mahoney (Tastetherainb0w)" & @CRLF & @CRLF & _
					"This version was released on 9-7-2014" & @CRLF & @CRLF & _
					"All of the code, the README, updated download links, my other programs, etc. are available on my GitHub!" & @CRLF & @CRLF & _
					"Thanks for using my program! :)")
		Case $Button1
			hackwait()

	EndSwitch
WEnd

Func clickhack()
	HotKeySet("{SPACE}")
	While 1
		$SpeedReturn = TimerInit()
		GUICtrlSetData($Label3, "CLICKING!!!!")
		MouseClick("Left")
		Sleep(11)
		If _IsPressed("1B") Then
			Return
		EndIf
	WEnd
	GUICtrlSetData($Label3, "NOT CLICKING")
	Return
EndFunc   ;==>clickhack

Func hackwait()
	HotKeySet("{space}", "clickhack")
	If _IsPressed("20") Then
		HotKeySet("{space}")
	EndIf
EndFunc   ;==>hackwait


