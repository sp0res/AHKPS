; Setup

#Persistent
; Recommended for new scripts due to its superior speed and reliability.
SendMode Input 

; System tray
TrayIconFile := "..\Images\goofycat_2.ico" ; Corrected relative path syntax

Menu,Tray,Icon,%TrayIconFile%

TrayTip:="Chrome Shortcuts."
Menu,Tray,Tip,%TrayTip%

#IfWinActive ahk_class MozillaWindowClass

; Move to Next Tab (Ctrl + E)
^E::	

	Send !+E

return

; Move to Previous Tab (Ctrl + Q)	
^Q::	

	Send !+Q

return

#IfWinActive
	