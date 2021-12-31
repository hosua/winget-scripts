echo Note: You must be running this as an administrator for this to install properly.
echo After the installation, there will be instructions if you installed Msys2 for C++.
echo The paths will be added automatically, don't change the installation directory.
pause
winget install -e --id msys2.msys2

echo Setting mingsys path
cmd /c setx /M path "%path%;C:\msys64\mingw64\bin;"

echo  Attempting to open Msys2...
C:\msys64\msys2.exe

@echo If msys2 msys didn't open by itself, open it yourself.
@echo Copy and paste the following command into the terminal and press enter.
@echo pacman -S --needed base-devel mingw-w64-x86_64-toolchain
@echo After this is complete, you are done. Reopen a cmd/powershell and confirm that g++ --version and vim --version show you a version number.
pause