@echo off
cls
echo Would you like to install Login System? [y][n]
set /p confirm=
if not "%confirm%" == "y" (
	goto end
)
cd %USERPROFILE%
echo Creating file folder...
mkdir LoginSystem
cd %USERPROFILE%/Downloads/LoginSystem-master/LoginSystem-master
echo Installing program files...
move correct.bat %USERPROFILE%/LoginSystem
move Login.bat %/USERPROFILE%/LoginSystem
move Password.txt %/USERPROFILE%/LoginSystem
move username.txt %/USERPROFILE%/LoginSystem
echo Installing uninstaller...
move LoginSystemUninstaller.bat %USERPROFILE%/LoginSystem
pause
echo Would you like to add a desktop shortcut? [y][n]
set /p shortcut=
if "%shortcut%" == "y" (
	echo Installing desktop icon...
	cd %USERPROFILE%/Downloads/LoginSystem-master/LoginSystem-master
	move LoginSystemDesktop.bat %USERPROFILE%/Desktop
)
pause
echo Installation complete.
echo You may now run the program.
pause
end:
exit