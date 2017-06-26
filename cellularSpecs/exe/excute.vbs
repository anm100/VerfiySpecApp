Set WshShell = CreateObject("WScript.Shell") 
WshShell.Run chr(34) & "exe\aa.bat" & Chr(34), 0
Set WshShell = Nothing