@echo off
REM usage: fileup <datei> password
echo user u41387060> ftpcmd.dat
echo %2>> ftpcmd.dat
echo binary>> ftpcmd.dat
echo put %1>> ftpcmd.dat
echo quit>> ftpcmd.dat
ftp -n -s:ftpcmd.dat hopf-it.de
del ftpcmd.dat