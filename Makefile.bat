@echo off
set input_file=hostname.cpp
set output_file=hostname.exe
set cygwin_path=C:\cygwin
echo test > %cygwin_path%\test
if errorlevel1 goto nocygwin
set g++_compiler=%cygwin_path%\usr\bin\g++.exe
if not exist %g++_compiler% goto nogccpp
%g++_compiler% %input_file% -o %output_file%
title Compile Complete
pause >nul
exit
:nocygwin
title Compile Failed: No Cygwin
echo The directory C:\cygwin does not exist or Cygwin is not installed to that location, please fix this.
pause >nul
exit
:nogccpp
title Compile Failed: No G++
echo The directory C:\cygwin\usr\bin\g++.exe does not exist. Please run Cygwin setup again and install gcc-g++.
pause >nul
exit
