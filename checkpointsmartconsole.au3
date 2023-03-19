#cs ----------------------------------------------------------------------------
#ce ----------------------------------------------------------------------------
#include <MsgBoxConstants.au3>

Opt("WinTitleMatchMode", 1)
Opt("MouseCoordMode", 2)
$CmdLine[0] 
$CmdLine[1] 
$CmdLine[2] 
$CmdLine[3]  

$username=$CmdLine[1]
$password=$CmdLine[2]
$ip=$CmdLine[3]
Opt('MustDeclareVars', 1)
Opt('WinTitleMatchMode', 2)


Global $sAdjustExe     = 'C:\Program Files (x86)\CheckPoint\SmartConsole\R81.10\PROGRAM\SmartConsole.exe'
Global $sExpectedTitle = 'Check Point SmartConsole'
Global Const $iTimeoutInSeconds = 2



If NOT WinExists("Check Point SmartConsole")Then
  Run($sAdjustExe)
  Sleep(2000)
  EndIf
  Sleep(200)

 WinActivate($sExpectedTitle)
 Sleep(1000)
If WinWaitActive($sExpectedTitle) Then
 Sleep(9000)
WinWaitActive($sExpectedTitle)
Sleep(100)
   ; Send  Username
	Send($CmdLine[1], 1)
   Sleep(500)
  Send("{TAB}")
   Sleep(100)
   ; Send  Password
  Send($CmdLine[2], 1)
   Sleep(100)
   Send("{TAB}")
   Send("{TAB}")
 Sleep(500)
   ; Send  Host
  Send($CmdLine[3], 1)
  Sleep(100)
   Send("{TAB}")
   Send("{TAB}")
   Send("{TAB}")
    Sleep(500)
Send("{ENTER}")
 EndIf