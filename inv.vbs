Set WshShell = CreateObject("WScript.Shell")
WshShell.Run "powershell -WindowStyle Hidden -Command ""Start-Process -WindowStyle Hidden 'wscript.exe' -ArgumentList '""start.vbs""'""", 0, False