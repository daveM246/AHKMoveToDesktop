 Created this file from examples in VH.ahk ( https://github.com/FuPeiJiang/VD.ahk )
 
 it is used by Auto Hot Key to make desktop switching via keyboard shortcuts
 
 Idea and explanation of how to do it isd from https://superuser.com/questions/1685845/moving-current-window-to-another-desktop-in-windows-11-using-shortcut-keys but used the hot key functions from VD examples.ahk
 
 Build method:
 
	1. Download and install AutoHotKey
	
	2. Clone the VD.ahk repository (it is an AutoHotkey library adding several script functions for managing virtual desktops)
	
	3. Inside the cloned directory, create a new file (MoveToDesktop.ahk) and paste the content (see below).
	
	4. Double-click the script to run it. The shortcuts (Win+Alt+→: Move current window to the next desktop; Win+Alt+←: Move current window to the previous desktop) should now work. Note that AHK would not run the script initially and installed ver 1 for compatibility.
	
	5. Use Akh2Exe to convert the script to an exe called AHKMoveToDeskTop_x64.exe
	
	6. To make sure the exe run on every Windows startup, create a shortcut to it and put it into the folder for your Startup programs. 
	
	7. Uninstall AutoHotKey (no longer required)
	

 Usage:
 
    Win+Ctl+Left		Switch to Desktop to the left (with cycle to right most)
    
    Win+Ctl+Right		Switch to Desktop to the right (with cycle to left most)
    

    Win+Alt+Left		Move app to Desktop on left
    
    Win+Alt+Right		Move app to Desktop on right
    

    F1				Resets displayed Desktop number if changed by other means e.g. selection after Win+Tab
    

    The script also ensures that at least three desktops are open at startup.
    

    Used modified code from https://github.com/FuPeiJiang/VD.ahk/discussions/23 to display current desktop number on system tray icon
	
    Icons downloaded from https://www.iconarchive.com/show/red-orb-alphabet-icons-by-iconarchive.1.html



