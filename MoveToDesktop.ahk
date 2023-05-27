;#SETUP START
#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
#SingleInstance force
ListLines Off
SetBatchLines -1
SendMode Input ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir% ; Ensures a consistent starting directory.
#KeyHistory 0
#WinActivateForce

Process, Priority,, H

SetWinDelay -1
SetControlDelay -1

;include the library
#Include VD.ahk
#Include %A_ScriptDir%\Icons\
; VD.init() ;COMMENT OUT `static dummyStatic1 := VD.init()` if you don't want to init at start of script


ActiveDesktopSetIcon(){
;    n := ActiveDesktopGetNumber()
    n := VD.getCurrentDesktopNum()
    w =  %A_ScriptDir%
    if (n<10){
        f := w "\icons\" n ".ico"
    }
    else {
        f := w "\icons\10up.ico"
    }
    IfExist, %f%
	    Menu, Tray, Icon, %f% 
}

VD.createUntil(3) ;create until we have at least 3 VD
ActiveDesktopSetIcon()

return

; wrapping / cycle back to first desktop when at the last
^#left::
	VD.goToRelativeDesktopNum(-1)
	ActiveDesktopSetIcon()
return
^#right::
	VD.goToRelativeDesktopNum(+1)
	ActiveDesktopSetIcon()
return

; move window to left and follow it using WIN+ALT+LEFT
#!left::
	VD.goToDesktopNum(VD.MoveWindowToRelativeDesktopNum("A", -1))
	ActiveDesktopSetIcon()
return
; move window to right and follow it using WIN+ALT+RIGHT
#!right::
	VD.goToDesktopNum(VD.MoveWindowToRelativeDesktopNum("A", 1))
	ActiveDesktopSetIcon()
return


;getters and stuff
;f6::
;    msgbox % VD.getDesktopNumOfWindow("VD.ahk examples WinTitle")
    ; msgbox % VD.getDesktopNumOfWindow("ahk_exe GitHubDesktop.exe")
;return
;f1::
	;ActiveDesktopSetIcon()
    ;msgbox % VD.getCurrentDesktopNum()
    ;ThisDeskTopNum := VD.getCurrentDesktopNum()
    ;msgbox You are on desktop %ThisDeskTopNum%
	

return
;f2::
;    msgbox % VD.getCount()
	;NumDesktops := VD.getCount()
	;msgbox There are %NumDeskTops% desktops
;return