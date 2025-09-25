Set objShell = CreateObject("WScript.Shell")

command = "powershell.exe -ExecutionPolicy Bypass -File ""C:\Screensaver\Download_Screensaver.ps1"""
objShell.Run command, 0, False
