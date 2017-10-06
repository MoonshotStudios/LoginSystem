@echo off
cls
set /p correctUsername=<Username.txt
set /p correctPassword=<Password.txt
echo Username
set /p username=
echo Password
set /p password=
if "%username%" == "%correctUsername%" (
	correct.bat
)