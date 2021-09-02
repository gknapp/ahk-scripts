#NoEnv                        ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
#SingleInstance Force         ; Surpress prompt to replace
SendMode Input                ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%   ; Ensures a consistent starting directory.

; Visual Studio Code shortcuts
#IfWinActive ahk_exe code.exe
F13::
Send, git stash push -m "" --{Space}{Left 5}
return
F14::
Send, git merge --log --no-ff gk/feature/
return
F15::
Send, git fetch origin master && git rebase master
return
F16::
Send, git stash apply stash@{{}{}}{Left}
return