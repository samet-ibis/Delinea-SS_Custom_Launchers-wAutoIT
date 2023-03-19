#cs ----------------------------------------------------------------------------
#ce ----------------------------------------------------------------------------
#include <MsgBoxConstants.au3>

Opt("WinTitleMatchMode", 1)
$CmdLine[0] 
$CmdLine[1] 
$CmdLine[2] 
$CmdLine[3] 
Opt('MustDeclareVars', 1)
Opt('WinTitleMatchMode', 2)


Global $sAdjustExe     = 'C:\oracle\product\11.1.1\as_1\bin\dis51usr.exe'
Global $sExpectedTitle = 'Oracle Business Intelligence Discoverer'
Global $sWindowTitle = 'Oracle Business Intelligence Discoverer'
Global Const $iTimeoutInSeconds = 2



If NOT WinExists("Oracle Business Intelligence Discoverer")Then
  Run($sAdjustExe)
  Sleep(4000)
  EndIf
  Sleep(200)
 

Sleep(500)
 WinActivate($sExpectedTitle)
 Sleep(1000)
 If WinWaitNotActive("Connect to Oracle Business Intelligence Discoverer Desktop")Then
	Sleep(1000)
	Send("{ESC}")
	Sleep(1000)
	Send("{ESC}")
	Sleep(300)
	Sleep(300)
	Send("!F")
	Send("{ENTER}")
	EndIf
If WinWaitActive("Connect to Oracle Business Intelligence Discoverer Desktop") Then
 Sleep(400)
WinWaitActive("Connect to Oracle Business Intelligence Discoverer Desktop")
Sleep(500)
   Send("!u")
   Sleep(500)
   ; Send  Username
	Send($CmdLine[1], 1)
   Sleep(500)
   Send("!P")
   Sleep(500)
   ; Send  Password
  Send($CmdLine[2], 1)
   Sleep(500)
   Send("!C")
   Sleep(500)
   ; Send  Host
  Send($CmdLine[3], 1)
    Sleep(500)
   Send("{TAB}")
   Send("{ENTER}")
   Sleep(500)
 EndIf