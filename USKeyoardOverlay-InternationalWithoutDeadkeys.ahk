#SingleInstance force

; Refrences
; Modifier key docs:  https://www.autohotkey.com/docs/Hotkeys.htm
; Unicode for symobls:  https://r12a.github.io/app-conversion/
;
; https://www.autohotkey.com/boards/viewtopic.php?t=19534
; https://gist.github.com/danidiaz/583824e50e3667ab50963cc30c7df0ec


; >! is right Alt key (i.e. what we want to use as AltGr)
; + is Shift key
; <^>! is the actual AltGr key when a layout that has this key is active (is Left Control + Right Alt)

>!Enter::SetDefaultKeyboard(0x0409) ; English (USA)
<^>!Enter::SetDefaultKeyboard(0x0409) ; English (USA)

;>!t::enabled = !enabled
;#If enabled
; Special symbols (RAlt + ...)
>!2::Send {U+00B2}  ; RAlt + 2   ==>   ² = U+00B2
>!3::Send {U+00B3}  ; RAlt + 3   ==>   ³ = U+00B3
>!4::Send {U+00A4}  ; RAlt + 4   ==>   ¤ = U+00A4
>!5::Send {U+20AC}  ; RAlt + 5   ==>   € = U+20AC
>!6::Send {U+00BC}  ; RAlt + 6   ==>   ¼ = U+00BC
>!7::Send {U+00BD}  ; RAlt + 7   ==>   ½ = U+00BD
>!8::Send {U+00BE}  ; RAlt + 8   ==>   ¾ = U+00BE
>!9::Send {U+2018}  ; RAlt + 9   ==>   ‘ = U+2018
>!0::Send {U+2019}  ; RAlt + 0   ==>   ’ = U+2019
>!-::Send {U+00A5}  ; RAlt + -   ==>   ¥ = U+00A5
>!=::Send {U+00D7}  ; RAlt + =   ==>   × = U+00D7
>!m::Send {U+00B5}  ; RAlt + m   ==>   µ = U+00B5
>!c::Send {U+00A9}  ; RAlt + c   ==>   © = U+00A9
>![::Send {U+00AB}  ; RAlt + [   ==>   « = U+00AB
>!]::Send {U+00BB}  ; RAlt + ]   ==>   » = U+00BB

; Special symbols (RAlt + Shift + ...)
>!+;::Send {U+00B0}  ; RAlt + Shift + ;   ==>   ° = U+00B0
>!+1::Send {U+00B9}  ; RAlt + Shift + 1   ==>   ¹ = U+00B9
>!+4::Send {U+00A3}  ; RAlt + Shift + 4   ==>   £ = U+00A3
>!+=::Send {U+00F7}  ; RAlt + Shift + =   ==>   ÷ = U+00F7
>!+s::Send {U+00A7}  ; RAlt + Shift + s   ==>   § = U+00A7

; Norwegian letters
>!z::Send {U+00E6}  ; RAlt + z   ==>   æ = U+00E6
>!+Z::Send {U+00C6}  ; RAlt + Z   ==>   Æ = U+00C6
>!l::Send {U+00F8}  ; RAlt + l   ==>   ø = U+00F8
>!+L::Send {U+00D8}  ; RAlt + L   ==>   Ø = U+00D8
>!w::Send {U+00E5}  ; RAlt + w   ==>   å = U+00E5
>!+W::Send {U+00C5}  ; RAlt + W   ==>   Å = U+00C5


SetDefaultKeyboard(LocaleID){
	Global
	SPI_SETDEFAULTINPUTLANG := 0x005A
	SPIF_SENDWININICHANGE := 2
	Lan := DllCall("LoadKeyboardLayout", "Str", Format("{:08x}", LocaleID), "Int", 0)
	VarSetCapacity(Lan%LocaleID%, 4, 0)
	NumPut(LocaleID, Lan%LocaleID%)
	DllCall("SystemParametersInfo", "UInt", SPI_SETDEFAULTINPUTLANG, "UInt", 0, "UPtr", &Lan%LocaleID%, "UInt", SPIF_SENDWININICHANGE)
	WinGet, windows, List
	Loop %windows% {
		PostMessage 0x50, 0, %Lan%, , % "ahk_id " windows%A_Index%
	}
}
return
