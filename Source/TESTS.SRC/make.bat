@echo off

set TESTS=..\Tests

mkdir %TESTS%
encrypt.exe passv.tst %TESTS%\passv.enc
encrypt.exe subjmood.tst %TESTS%\subjmood.enc
encrypt.exe tenses.tst %TESTS%\tenses.enc
encrypt.exe dirsp.tst %TESTS%\dirsp.enc
encrypt.exe misc.tst %TESTS%\misc.enc
