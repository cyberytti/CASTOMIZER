#!/data/data/com.termux/files/usr/bin/bash

#Author = @sagnik628 ([*]insta account)
#Github = https://github.com/cyberytti/

debian_style(){
	echo "PS1='\[\e[0;32m\] @$1-termux\[\e[0;37m\]:\[\e[0;34m\]\w\[\e[0m\] \[\e[0;97m\]$\[\e[0m\] '" >> ../usr/etc/bash.bashrc
}

arch_style(){
	echo "PS1='[$1@`uname -n` \[\e[0;37m\]\w\[\e[0m\] \[\e[0;97m\]]$\[\e[0m\] '" >> ../usr/etc/bash.bashrc 
}

fadora_style(){
	echo "PS1='[$1@`uname -n` \[\e[0;37m\]\w\[\e[0m\] \[\e[0;97m\]]$\[\e[0m\] '" >> ../usr/etc/bash.bashrc
}

kali_style(){
	echo "PS1='\[\e[0;32m\]┌──(\[\e[0;34m\]$1@termux\[\e[0m\]\[\e[0;32m\])-[\[\e[0;37m\]\w\[\e[0m\]\[\e[0;97m\]\[\e[0;32m\]]\n\[\e[0;32m\]└─\[\e[0;34m\]$\[\e[0m\] '" >> ../usr/etc/bash.bashrc
}

ubuntu_style(){
	echo "PS1='\[\e[0;32m\] @$1-termux\[\e[0;37m\]:\[\e[0;34m\]\w\[\e[0m\] \[\e[0;97m\]$\[\e[0m\] '" >> ../usr/etc/bash.bashrc
}

termux_style(){
	echo "PS1='\[\e[0;34m\]Termux\[\e[0;32m\]-(\[\e[0;37m\]\w\[\e[0;32m\])\[\e[0m\] \n\[\e[0;34m\]>>\[\e[0m\]'" >> ../usr/etc/bash.bashrc
}

nethunter_style(){
	echo "PS1='\[\e[0;31m\]`whoami`@termux\[\e[0m\]:\[\e[0;34m\]\w\[\e[0m\]\[\e[0;97m\]#\[\e[0m\]'" >> ../usr/etc/bash.bashrc
}

parrot_style(){
	echo "PS1='\[\e[0;31m\]┌──(\[\e[0;34m\]$1@termux\[\e[0m\]\[\e[0;31m\])-[\[\e[0;37m\]\w\[\e[0m\]\[\e[0;97m\]\[\e[0;31m\]]\n\[\e[0;31m\]└─\[\e[0;34m\]$\[\e[0m\] '" >> ../usr/etc/bash.bashrc
}


if [[ $1 = "-v" ]];then
	echo "VERSION = 1.0"
	exit
fi

read -p "username: " username

echo -e "\033[1;32m
1. Debian style
2. arch style
3. fadora style
4. kali style
5. ubuntu style
6. Advance termux style
7. Nethunter style
8. parrot style\033[00m"

echo ""

echo -e "\033[1;33mEnter your choice\033[00m: " 
read choice

if [[ $choice = "" ]];then
	echo "ENTER YOUR CHOICE"
	exit
fi

if [[ $choice = "1" ]];then
	debian_style $username
	sleep 2
	echo "Please restart your termux."
fi

if [[ $choice = "2" ]];then
	arch_style $username
	sleep 2
	echo "Please restart your termux."
fi

if [[ $choice = "3" ]];then
	fadora_style $username
	sleep 2
	echo "Please restart your termux."
fi

if [[ $choice = "4" ]];then
	kali_style $username
	sleep 2
	echo "Please restart your termux."
fi

if [[ $choice = "5" ]];then
	ubuntu_style $username
	sleep 2
	echo "Please restart your termux."
fi

if [[ $choice = "6" ]];then
	termux_style
	sleep 2
	echo "Please restart your termux."
fi

if [[ $choice = "7" ]];then
	nethunter_style
	sleep 2
	echo "Please restart your termux."
fi

if [[ $choice = "8" ]];then
	parrot_style $username
	sleep 2
	echo "Please restart your termux."
fi

