
#KeyHistory 0
#MaxThreadsPerHotkey 2
#IfWinActive, ahk_exe ZenlessZoneZero.exe

ShowMsg(msg)
{
	Gui, -Caption +AlwaysOnTop +Owner +LastFound +E0x20
	;WinSet, TransColor, 1
	Gui, Color, FFFFFF
	Gui, Font, s18 w700 q4, Times New Roman
	Gui, Add, Text,, % msg
	Gui, Show, NA
    sleep, 1500
	Gui, Destroy
}


;Gui, Margin, 0, 0
;Gui, Add, Picture,x484 y570,assist_icon.png

ShowMsg("AHK Start")
	
4::
Toggle:=!Toggle

Gui, +LastFound +AlwaysOnTop -Caption +Owner
WinSet, TransColor, f0f0f0 ; Removes specified color

if Toggle{
	ShowMsg("AHK ON")
}
if !Toggle{
	ShowMsg("AHK OFF")
}
While, Toggle
{

 if WinActive("ahk_exe ZenlessZoneZero.exe"){
   send {1 down}
   sleep, 10
   send {1 up}
   sleep, 40
   send {space down}
   sleep, 10
   send {space up}
   sleep, 100
  
 }
 else{
  Gui, Hide
  Sleep, 2500
 }
}
Gui, Hide
