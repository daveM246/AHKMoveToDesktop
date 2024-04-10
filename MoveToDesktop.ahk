;#Modified to work in VH V2 following failures with V1 on Windows11 build 22621
;#SETUP START
#SingleInstance force
ListLines 0
SendMode "Input"
SetWorkingDir A_ScriptDir
KeyHistory 0
#WinActivateForce

ProcessSetPriority "H"

SetWinDelay -1
SetControlDelay -1


;include the library
;#Include VD.ah2
#Include %A_LineFile%\..\VD.ah2
#Include %A_ScriptDir%\Icons\
; VD.init() ;COMMENT OUT `static dummyStatic1 := VD.init()` if you don't want to init at start of script


ActiveDesktopSetIcon(){
    n := VD.getCurrentDesktopNum()
    w :=  A_ScriptDir
    if (n<10) {
        f := w "\icons\" n ".ico"
    }
    else {
        f := w "\icons\10up.ico"
    }
    If FileExist(f) {
	    ;Menu, Tray, Icon, f 
		TraySetIcon f
	}
    ;MsgBox n " " w " " f
}


VD.createUntil(3) ;create until we have at least 3 VD
;MsgBox "Starting AHKMoveToDesktop", VD.goToRelativeDesktopNum(+1) ;MsgBox required to make things work!
;VD.goToDesktopNum(1)
ActiveDesktopSetIcon()
return

; wrapping / cycle back to first desktop when at the last
; using WIN+CTRL+<
^#,::VD.goToRelativeDesktopNum(-1), ActiveDesktopSetIcon()
^#Left::VD.goToRelativeDesktopNum(-1), ActiveDesktopSetIcon()
; or WIN+CTRL+>
^#.::VD.goToRelativeDesktopNum(+1), ActiveDesktopSetIcon()
^#Right::VD.goToRelativeDesktopNum(+1), ActiveDesktopSetIcon()

; move window to left and follow it using WIN+ALT+<
#!,::{
	VD.goToDesktopNum(VD.MoveWindowToRelativeDesktopNum("A", -1))
	ActiveDesktopSetIcon()
}
#!Left::{
	VD.goToDesktopNum(VD.MoveWindowToRelativeDesktopNum("A", -1))
	ActiveDesktopSetIcon()
}
; move window to right and follow it using WIN+ALT+>
#!.::{
	VD.goToDesktopNum(VD.MoveWindowToRelativeDesktopNum("A", 1))
	ActiveDesktopSetIcon()
}
#!Right::{
	VD.goToDesktopNum(VD.MoveWindowToRelativeDesktopNum("A", 1))
	ActiveDesktopSetIcon()
}

;Create a new desktop and switch to it using WIN+CTRL+D
#^d::{
    VD.createDesktop(true)
	ActiveDesktopSetIcon()
}

; delete the current virtual desktop using WIN+ALT+DEL
#!del::{
    VD.removeDesktop(VD.getCurrentDesktopNum())
	ActiveDesktopSetIcon()
}


;getters and stuff

;f1::Msgbox VD.getCurrentDesktopNum()
;f2::Msgbox VD.getCount()
