@echo off & setlocal

set "KontoAlt=Administrator"
set "KontoNeu=AdminNeu"
set "PWNeu=G@nzNeue5PW"

net user %KontoAlt% "%PWneu%"

set "R=%temp%\RenAdmAcc.vbs"
echo GetObject("WinNT://.").MoveHere GetObject("WinNT://./%KontoAlt%,user").ADSPath, "%KontoNeu%">%R%
cscript //nologo %R%
del %R%
