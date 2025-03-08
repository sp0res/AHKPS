; Setup
#Persistent

; Recommended for new scripts due to its superior speed and reliability.
SendMode Input 

; System tray
TrayIconFile := "..\Images\goofycat.ico" ; Corrected relative path syntax

Menu,Tray,Icon,%TrayIconFile%

TrayTip:="Firefox Shortcuts."
Menu,Tray,Tip,%TrayTip%


#IfWinActive ahk_class MozillaWindowClass

; Move to Next Tab (Ctrl + E)
^e::Send ^{Tab}

; Move to Previous Tab (Ctrl + Q)
^q::Send ^+{Tab}

; Reopen Last Closed Tab (Ctrl + Tab)
!Tab::Send ^+t


#IfWinActive
