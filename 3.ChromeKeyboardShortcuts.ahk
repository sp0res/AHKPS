#IfWinActive ahk_class MozillaWindowClass

; Move to Next Tab (Ctrl + E)
^e::	

	Send !+E

return

; Move to Previous Tab (Ctrl + Q)
^q::	

	Send !+Q

return

#IfWinActive
