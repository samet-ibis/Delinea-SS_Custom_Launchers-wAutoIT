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
$username=$CmdLine[1]
$password=$CmdLine[2]
$ip=$CmdLine[3]
$port=$CmdLine[4]
$servicename=$CmdLine[5]


   $apppath = "C:\sqldeveloper\sqldeveloper.exe"
  Run($apppath)

Do
	Send("{ESC}")
	Until(WinExists("Oracle SQL Developer"))
WinWaitActive("Oracle SQL Developer")
 Sleep(2000)
	
Send("+{TAB}")
   Sleep(4000)
   Send("^n")
   Sleep(2000)
   Send("connection")
   Sleep(2000)
   Send("{ENTER}")
   Sleep(500)
   WinWaitActive("New / Select Database Connection")
Sleep(700)
Send("!u")
Sleep(700)
Send("+{TAB}")
Sleep(700)
Send("+{TAB}")
Sleep(700)
Send("+{TAB}")
Sleep(700)
Send("+{TAB}")
Sleep(700)
Send("+{TAB}")
Sleep(700)
Send($CmdLine[3], 1)
 
   $conn=$CmdLine[5] & '-' & $CmdLine[3] & '-' & $CmdLine[4]

   Sleep(500)
   Send("{TAB}")
   ;Send("!n")
   Sleep(100)
   ;Send Connectio name
   ;Send($conn, 1)
 


   Sleep(500)
   Send("!u")
   Sleep(100)
   ; Send  Username
   Send($CmdLine[1], 1)
  

   Sleep(500)
   Send("!p")
   Sleep(100)
   ; Send  Password
   Send($CmdLine[2], 1)

   If(StringUpper($username) == 'SYS') Then
   Sleep(500)
   Send("!l")
   Send("{DOWN}")
   Send("{DOWN}")
   Send("{ENTER}")
   EndIf

  Sleep(500)
   Send("!a")
   Sleep(100)
   ; Send  IP
   Send($CmdLine[3], 1)

   Sleep(500)
   Send("!r")
   Sleep(100)
   ; Send Port
   Send($CmdLine[4], 1)

   Sleep(500)
   Send("!e")
   Sleep(1000)
   Send("{TAB}")
   Sleep(100)
   Send("{TAB}")
   ;Send ServiceName
   Send($CmdLine[5], 1)
   Sleep(100)
   Send("!T")
   Sleep(100)
   Send("!o")
