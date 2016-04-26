@echo off
echo user u41387060> ftpcmd.dat
echo markushopf>> ftpcmd.dat
rem echo ascii>> ftpcmd.dat
echo binary>> ftpcmd.dat
echo put %1>> ftpcmd.dat
echo quit>> ftpcmd.dat
ftp -n -s:ftpcmd.dat hopf-it.de
del ftpcmd.dat