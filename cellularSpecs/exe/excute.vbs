Set WshShell = CreateObject("WScript.Shell") 
WshShell.Run chr(34) & "exe\a.bat" & Chr(34), 0
Set WshShell = Nothing