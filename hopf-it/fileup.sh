#!/bin/bash

#usage:
#chmod +x fileup.sh
#./fileup.sh <uploadfile> pw

ftp -i -n -v <<EOCMDS
open hopf-it.de
user u41387060 $2
binary
put $1
quit
EOCMDS