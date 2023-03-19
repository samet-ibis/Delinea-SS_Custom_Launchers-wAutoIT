#cs ----------------------------------------------------------------------------
AutoIt Version: 3.5.4
#ce ----------------------------------------------------------------------------


Opt("WinTitleMatchMode", 1)

$CmdLine[0] 
$CmdLine[1]
$CmdLine[2] 
$CmdLine[3] 
$CmdLine[4] 
$CmdLine[5] 
$CmdLine[6]
Global $sAdjustExe     = '"C:\oracle\Middleware\Oracle_Home\odi\studio\odi.exe"'
Global $sExpectedTitle = 'Oracle Data Integrator Studio 12c'
Global $sWindowTitle = 'Oracle Data Integrator Studio 12c'
Global Const $iTimeoutInSeconds = 2


If NOT WinExists("Oracle Data Integrator Studio 12c")Then
  Run($sAdjustExe)
  Sleep(4000)
  EndIf
  Sleep(200)
Sleep(500)
 WinActivate($sExpectedTitle)
 Sleep(1000)
 If WinWaitActive("Oracle Data Integrator Studio 12c")Then
	  WinActivate($sExpectedTitle)
	Sleep(300)
	Send("{ESC}")
	Sleep(300)
	Sleep(300)
	Send("!o")
	Sleep(200)
	Send("{ENTER}")
	Sleep(2000)
	EndIf
If WinWaitActive("Oracle Data Integrator Login") Then
Sleep(400)
Send("{ENTER}")
	Sleep(2000)
EndIf
If WinExists("Repository Connection Information")Then
   ; Send  Loginname
   WinActivate("Repository Connection Information")
   Sleep(300)
	Send($CmdLine[1], 1)
   Sleep(400)
     Send("{TAB}")
   Sleep(400)
   ; Send  User
  Send($CmdLine[2], 1)
   Sleep(400)
     Send("{TAB}")
   Sleep(400)
   ; Send  PasswordforODI
  Send($CmdLine[3], 1)
    Sleep(500)
        Send("{TAB}")
		   ; Send  username
	Send($CmdLine[4], 1)
   Sleep(400)
     Send("{TAB}")
   Sleep(400)
   ; Send  passworddb
  Send($CmdLine[5], 1)
   Sleep(400)
   Send("{TAB}")
   	Send("{down}")
		Send("{down}")
		   Send("{TAB}")
		      Send("{TAB}")
			     Send("{TAB}")
	Sleep(400)
	; Send URL
	Send($CmdLine[6], 1)
	Sleep(400)
	Send("{TAB}")
		Sleep(100)
		      Send("{TAB}")
			  Sleep(100)
			  Send("{down}")
		   Sleep(100)
		   Send("{TAB}")
		   Sleep(100)
		    Send("{TAB}")
			Sleep(100)
			Send("{ENTER}")
			Sleep(100)
			Send("{down}")
			Sleep(100)
			Send("{ENTER}")
			Sleep(4000)
			 Send("{TAB}")
			Sleep(100)
		      Send("{TAB}")
			  Sleep(100)
			     Send("{TAB}")
				 Sleep(100)
				 Send("{TAB}")
				 Sleep(100)
				 Send("{ENTER}")
				 			Sleep(1000)
							WinWaitActive("Oracle Data Integrator Login")
				 Send("{TAB}")
			Sleep(300)
		      Send("{TAB}")
			  Sleep(300)
			     Send("{TAB}")
				 Sleep(300)
				 Send("{TAB}")
			Sleep(300)
				  	  Send($CmdLine[3], 1)
					 Sleep(300)
				  Send("{TAB}")
				Sleep(300)
				Send("{TAB}")
				Sleep(300)
				  Send($CmdLine[5], 1)
				Sleep(300)
				  	  Send("{TAB}")
				Sleep(300)
					  	  Send("{TAB}")
				Sleep(300)
				 Send("{ENTER}")
			 Else
				 Send("{ENTER}") 
				 	Sleep(300)
						 Send("{TAB}")
			Sleep(300)
		      Send("{TAB}")
			  Sleep(300)
			     Send("{TAB}")
				 Sleep(300)
				 Send("{TAB}")
			Sleep(300)
				 Send("{TAB}")
			Sleep(300)
				  	  Send($CmdLine[3], 1)
					 Sleep(300)
				  Send("{TAB}")
				Sleep(300)
				Send("{TAB}")
				Sleep(300)
				  Send($CmdLine[5], 1)
				Sleep(300)
				  	  Send("{TAB}")
				Sleep(300)
					  	  Send("{TAB}")
				Sleep(300)
				 Send("{ENTER}")
					
 EndIf