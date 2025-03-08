; Setup
#Persistent

; Recommended for new scripts due to its superior speed and reliability.
SendMode Input 

; System tray
TrayIconFile := "..\Images\sillymonke.ico" ; Corrected relative path syntax

Menu,Tray,Icon,%TrayIconFile%

TrayTip:="Shift Click Middle Drag, Alt+Tab To Pause Desktop Shortcuts"
Menu,Tray,Tip,%TrayTip%

~Shift & RButton::
{
    if (GetKeyState("Shift", "P") && GetKeyState("RButton", "P"))
    {
        Send, {MButton Down}
    }
    return
}

; Release MButton if either Shift or RButton is released
~Shift Up::
~RButton Up::
{
    Send, {MButton Up}
    return
}

!Tab::Suspend  ; Alt+Tab

; --------------------------------------------------------