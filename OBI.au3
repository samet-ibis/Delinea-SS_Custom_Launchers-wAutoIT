#cs ----------------------------------------------------------------------------
AutoIt Version: 3.5.4
Script Function:
#ce ----------------------------------------------------------------------------


Opt("WinTitleMatchMode", 1)


$CmdLine[0] 
$CmdLine[1] 
$CmdLine[2] 

   $apppath = 'C:\oracle\Middleware\Oracle_Home\obi\bi\bitools\bin\admintool.cmd'
  Run($apppath)
 Sleep(2000)

WinActivate("Oracle BI Administration Tool")
If WinWaitActive("Oracle BI Administration Tool")Then
	Send("!f")
	Send("{down}")
	Send("{right}")
	Send("{down}")
	Send("{down}")
	Send("{Enter}")
	Send($CmdLine[1])
	Sleep(200)
	Send("{tab}")
	Send($CmdLine[2])
	; replace up/down keys with your deployment because the resources will be different on your prod
	Send("{tab}")
	Send("{down}")
	Send("{up}")
	Send("{tab}")
	Send("{enter}")
	EndIf