#!/bin/bash

#usage:
#chmod +x fileup.sh
#./fileup.sh <uploadfile>

username=u41387060
passwd=markushopf
ftp -i -n -v <<EOCMDS
open hopf-it.de
user u41387060 markushopf
binary
put $1
quit
EOCMDS