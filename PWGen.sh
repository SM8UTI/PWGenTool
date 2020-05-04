#!/bin/bash/
#Password Generactor Tool
#Author : Smruti Ranjan Nayak

clear
/bin/cat <<'PWG'
 
  _______          _______              _______          _ 
 |  __ \ \        / / ____|            |__   __|        | |
 | |__) \ \  /\  / / |  __  ___ _ __      | | ___   ___ | |
 |  ___/ \ \/  \/ /| | |_ |/ _ \ '_ \     | |/ _ \ / _ \| |
 | |      \  /\  / | |__| |  __/ | | |    | | (_) | (_) | |
 |_|       \/  \/   \_____|\___|_| |_|    |_|\___/ \___/|_|
PWG
echo " -"
echo -e " ------------------\e[1;37mPASSWORD GENERTOR TOOL\e[0m------------------"
echo -e " \e[1;37mAuthor\e[0m : \e[1;33mSmruti Ranjan Nayak\e[0m\n"
press()
{
echo -e "\e[4;31mPlease Enter Any Key\e[0m"
read hg
}
echo -e "\e[2;37mChosse a Format\e[0m (\e[2;33mbase64,hex\e[0m) : " 
read format
echo -e "\e[2;37mSet a Password Length :\e[0m " 
read pwgen1
pwgen()
{
for p in $(seq 1 )
do
openssl rand -${format} 48 | cut -c1-${pwgen1}
done
}
clear
echo -e "\e[1;37mYour Generate Password =\e[0m  "
           pwgen




