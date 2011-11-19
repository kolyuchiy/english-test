@echo off

set INSTALLPATH=..\Distr
set TESTSPATH=%INSTALLPATH%\Tests
set PICSPATH=%INSTALLPATH%\Pics

mkdir %INSTALLPATH%
mkdir %TESTSPATH%
mkdir %PICSPATH%
copy project.exe %INSTALLPATH%
copy project.lng %INSTALLPATH%
copy about.txt %INSTALLPATH%
copy help.txt %INSTALLPATH%
copy Tests %TESTSPATH%
copy Pics %PICSPATH%