 A compiled Auto Hot Key script to enable virtual desktop and app switching via keyboard shortcuts including display of current desktop number.

 Works on Windows 10 and 11. 
 
 Can be used in place of VirtualDesktopManager and MoveToDesktop which both stopped working on Windows 11
 
    Simply download the exe and run it.
    To automatically run at logon, place a shortcut to it in your startup folder.
 
    Created this from examples in VH.ahk ( https://github.com/FuPeiJiang/VD.ahk ).
 
    How to do it obtained from
	https://superuser.com/questions/1685845/moving-current-window-to-another-desktop-in-windows-11-using-shortcut-keys
	but used the hot key functions from 'VD examples.ahk' .
     
 
 Usage:
 
    Win+Ctl+Left		Switch to Desktop to the left (with cycle to right most)
    Win+Ctl+Right		Switch to Desktop to the right (with cycle to left most)
    Win+Alt+Left		Move app to Desktop on left
    Win+Alt+Right		Move app to Desktop on right
    
    The script also ensures that at least three desktops are open at startup.
	
    Uses modified code from https://github.com/FuPeiJiang/VD.ahk/discussions/23 to display current desktop number 
	on the system tray icon after desktops are switched using the hot keys.
    Icons downloaded from https://www.iconarchive.com/show/red-orb-alphabet-icons-by-iconarchive.1.html .

 
 Build method (not required if you use the exe):
 
	1. Download and install AutoHotKey on a Windows11 system.
	
	2. Clone the VD.ahk repository (it is an AutoHotkey library adding several script functions for managing virtual desktops).
	
	3. Inside the cloned directory, create a new file (AHKMoveToDesktop.ahk) and paste the content (see AHKMoveToDesktop.ahk).
	
	4. Copy the Icons folder into the VD.ahk repository folder (it is required by the script).
	
	5. Double-click the script to run it. 
		The hot keys (see 'Usage' above) should now work. 
		Note that AHK would not run the script initially and installed ver 1 for compatibility.
	
	6. Use Akh2Exe (installs with AHK) to convert the script to an exe called AHKMoveToDeskTop_Win11_x64.exe. 
        	The compiled exe includes the necessary AHK functionality, the VD-AHK library and the icon files.
	
	7. Uninstall AutoHotKey (no longer required, optional step).
	
 Thanks to:
 
	FuPeiJiang for VD.ahk (https://github.com/FuPeiJiang/VD.ahk)
	
	Sejmou for the post describing how to create the VHK script 
	(https://superuser.com/questions/1685845/moving-current-window-to-another-desktop-in-windows-11-using-shortcut-keys)
	
	KVolker for the idea of how to display the desktop number in the system tray 
	(https://github.com/FuPeiJiang/VD.ahk/discussions/23)
	



