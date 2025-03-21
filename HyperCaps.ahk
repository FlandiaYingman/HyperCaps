#Requires AutoHotkey v2
#SingleInstance Force

SetCapsLockState "AlwaysOff"

/* 
| Shortcut                         | Output                           |
| -------------------------------- | -------------------------------- |
| CAPSLOCK + { i, j, k, l }        | { Up, Left, Down, Right }        |
| CAPSLOCK + { u, o }              | { Home, End }                    |
| CAPSLOCK + { y, ; }              | { Control+Left, Control+Right }  |
*/

CapsLock & i::Up
CapsLock & j::Left
CapsLock & k::Down
CapsLock & l::Right
CapsLock & u::Home
CapsLock & o::End
CapsLock & m::^Left
CapsLock & .::^Right

CapsLock & h::
{
    Send "{Blind}{Control DownR}{Left DownR}"
}

CapsLock & h Up::
{
    Send "{Blind}{Control Up}{Left Up}"
}

CapsLock & `;::
{
    Send "{Blind}{Control DownR}{Right DownR}"
}

CapsLock & `; Up::
{
    Send "{Blind}{Control Up}{Right Up}"
}

