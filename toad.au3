#cs ----------------------------------------------------------------------------
#ce ----------------------------------------------------------------------------
#include <MsgBoxConstants.au3>

Opt("WinTitleMatchMode", 1)
Opt("MouseCoordMode", 2)
$CmdLine[0] 
$CmdLine[1] 
$CmdLine[2] 
$CmdLine[3]  
$CmdLine[4]  
$CmdLine[5]  

$username=$CmdLine[1]
$password=$CmdLine[2]
$ip=$CmdLine[3]
$port=$CmdLine[4]
$servicename=$CmdLine[5]
Opt('MustDeclareVars', 1)
Opt('WinTitleMatchMode', 2)


Global $sAdjustExe     = 'C:\Program Files (x86)\Quest Software\Toad for Oracle 10.6\Toad.exe'
Global $sExpectedTitle = 'Toad for Oracle'
Global $sWindowTitle = 'Initial Setup'
Global Const $iTimeoutInSeconds = 2



If NOT WinExists("Toad for Oracle")Then
  Run($sAdjustExe)
  Sleep(2000)
  EndIf
  Sleep(200)
 
 
;If NOT WinWaitActive($sExpectedTitle) or Not WinWaitActive("Toad for Oracle Database Login Version 10.6.1.3") Then
;Send("{TAB 3}")
;	 Sleep(1000)
;	 Send('{ENTER 8}')
;	 Sleep(200)
 ;EndIf
 ;Sleep(400)

Sleep(9000)
 While True
	 If WinExists("Initial Setup") Then
		 WinClose("Initial Setup")
		 Send("{ESC}")
		 WinWaitClose("Initial Setup")
		 ExitLoop
	 ElseIf WinExists("Initial Setup") = "0" Then
		 ExitLoop
	 EndIf
 WEnd
 WinActivate($sExpectedTitle)
 Sleep(1000)
 If WinWaitNotActive("Initial Setup")Then
	 Send("{ESC}")
	Sleep(300)
	Sleep(300)
	Send("!S")
	Send("{ENTER}")
	EndIf
If WinWaitActive("Toad for Oracle Database Login Version 10.6.1.3") Then
 Sleep(400)
; İKİNCİ ÇALIŞIRKEN DE BURDA
WinWaitActive("Toad for Oracle Database Login Version 10.6.1.3")
Sleep(100)
   Send("!u")
   Sleep(100)
   ; Send  Username
	Send($CmdLine[1], 1)
   Sleep(500)
   Send("!P")
   Sleep(100)
   ; Send  Password
  Send($CmdLine[2], 1)
   Sleep(100)
   AutoItSetOption('MouseCoordMode', 2)
MouseClick('Main', 543, 118)
 Sleep(500)
   Send("!H")
   Sleep(100)
   ; Send  Host
  Send($CmdLine[3], 1)
   Sleep(100)
    Sleep(500)
   Send("{TAB}")
   Sleep(100)
   ; Send  Port
  Send($CmdLine[4], 1)
   Sleep(100)
    Sleep(500)
Send("{TAB}")
   Sleep(100)
   ; Send  Servicename
  Send($CmdLine[5], 1)
   Sleep(100)
   Sleep(500)
Send("{ENTER}")
 EndIf