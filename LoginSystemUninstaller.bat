@echo off
cls
echo Are you sure you want to uninstall Login System? [y][n]
set /p confirm=
if "%confirm%" == "y" (
cd %USERPROFILE%/Desktop
echo Deleting desktop icon...
del LoginSystemDesktop.bat
cd %USERPROFILE%/LoginSystem
echo Deleting program files...
del Login.bat
del Password.txt
del username.txt
del correct.bat
cd %USERPROFILE%/Downloads/LoginSystem-master/LoginSystem-master
echo Deleting desktop icon...
del LoginSystemDesktop.bat
echo Deleting wizard...
del LoginSystemWizard.bat
echo Deleting README...
del README.md
cd ..
echo Deleting download folder...
rmdir LoginSystem-master
cd ..
echo Deleting download folder...
rmdir LoginSystem-master
echo Deleting zip...
del LoginSystem-master.zip
cd %USERPROFILE%/LoginSystem
move LoginSystemUninstaller.bat %USERPROFILE%
cd ..
echo Deleting file folder...
rmdir LoginSystem
pause
echo Deleting uninstaller...
del LoginSystemUninstaller.bat
)