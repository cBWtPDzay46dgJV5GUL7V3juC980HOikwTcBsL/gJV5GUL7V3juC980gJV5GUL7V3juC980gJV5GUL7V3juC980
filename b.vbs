Set WshShell = CreateObject("WScript.Shell")
Set WshNetwork = CreateObject("WScript.Network")

MsgBox "YOUR COMPUTER WILL RESTART", vbInformation + vbOKOnly, "DONE"
WshShell.Run "shutdown /r /t 5", 0, False

Set WshShell = Nothing
Set WshNetwork = Nothing
Set fso = Nothing
