jet WshShell = CreateObject("WScript.Shell")
WshShell.Run chr(34) & ".\runme.cmd" & Chr(34), 0
Set WshShell = Nothing
