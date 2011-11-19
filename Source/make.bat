@echo off

cd Tests.src
call make.bat
cd ..
bpc -M -CD project.pas