'By LordMustang

Set oShell = CreateObject ("Wscript.Shell") 
Dim strArgs
strArgs = "cmd /c autosave_delete.cmd"
oShell.Run strArgs, 0, false