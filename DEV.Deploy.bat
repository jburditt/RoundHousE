@echo off

Powershell.exe -File "./Increment Version.ps1"

SET DIR=%~d0%~p0%

SET database.name="DatabaseName"
SET server.database="ServerName"
SET sql.files.directory="%DIR%\DB"
SET version.file="_BuildInfo.xml"
SET version.xpath="//buildInfo/version"
SET environment="DEV"

"%DIR%Console\rh.exe" ^
	/d=%database.name% ^
	/f=%sql.files.directory% ^
	/s=%server.database% ^
	/vf=%version.file% ^
	/vx=%version.xpath% ^
	/r=%repository.path% ^
	/env=%environment% ^
	/simple

pause
