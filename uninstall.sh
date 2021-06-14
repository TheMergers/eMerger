#!/bin/bash

source src/other/global.sh

rm ~/.logo
printf "${RED}File '.logo' removed\n"
sed -i "/alias up=/d" ~/.bashrc
printf "Alias 'up' removed\n"

printf "\nUninstallation completed\n"

read -p "Press enter, the process  will be killed.\nIf your terminal closes, open a new one." text
printf "${NORMAL}"

kill -9 $PPID
exit 0
