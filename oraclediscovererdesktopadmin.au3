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


Global $sAdjustExe     = '"C:\oracle\product\11.1.1\as_1\bin\dis51adm.exe"'
Global $sExpectedTitle = 'OracleBI Discoverer Administrator'
Global $sWindowTitle = 'OracleBI Discoverer Administrator'
Global Const $iTimeoutInSeconds = 2



If NOT WinExists("OracleBI Discoverer Administrator")Then
  Run($sAdjustExe)
  Sleep(4000)
  EndIf
  Sleep(200)
 

Sleep(500)

 WinActivate($sExpectedTitle)
 Sleep(1000)
 If WinWaitNotActive("Connect to Oracle Business Intelligence Discoverer Administrator")Then
	Send("{ESC}")
	Sleep(500)
	Sleep(500)
	Send("!F")
	Send("{down}")
	Sleep(500)
	Send("{down}")
	Sleep(500)
	Send("{down}")
	Sleep(500)
	Send("{down}")
	Sleep(500)
	Send("{down}")
	Sleep(500)
	Send("{ENTER}")
	Sleep(600)
EndIf
WinActivate("Connect to Oracle Business Intelligence Discoverer Administrator")
If WinWaitActive("Connect to Oracle Business Intelligence Discoverer Administrator") Then
 Sleep(400)
Sleep(400)
   Send("!u")
   Sleep(400)
   ; Send  Username
	Send($CmdLine[1], 1)
   Sleep(400)
   Send("!P")
   Sleep(400)
   ; Send  Password
  Send($CmdLine[2], 1)
   Sleep(400)
   Send("!C")
   Sleep(400)
   ; Send  Host
  Send($CmdLine[3], 1)
    Sleep(500)
   Send("{TAB}")
   Send("{ENTER}")
   Sleep(100)
 EndIf