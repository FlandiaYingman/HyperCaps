#Requires AutoHotkey v2
#SingleInstance Force

ProcessSetPriority "High"

SetCapsLockState "AlwaysOff"
*CapsLock::Return 

/* 
| Shortcut                         | Output                             |
| -------------------------------- | ---------------------------------- |
| CAPSLOCK + { i, j, k, l }        | { Up, Left, Down, Right }          |
| CAPSLOCK + { u, o }              | { Home, End }                      |
| CAPSLOCK + { h, ; }              | Ctrl + { Left, Right } (Word Jump) |
*/

#HotIf GetKeyState("CapsLock", "P")

; --- Arrow Keys ---
*i::SendInput "{Blind}{Up}"
*j::SendInput "{Blind}{Left}"
*k::SendInput "{Blind}{Down}"
*l::SendInput "{Blind}{Right}"

; --- Ctrl + Arrow Keys (Word Jump) ---
*h::SendInput "{Blind}^{Left}"
*;::SendInput "{Blind}^{Right}"

; --- Home / End ---
*u::SendInput "{Blind}{Home}"
*o::SendInput "{Blind}{End}"

#HotIf