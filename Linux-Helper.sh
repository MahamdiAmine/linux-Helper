#! /bin/bash
#============================================================================================================
#                                Linux Helper
#                       Welcome and dont disclaimer
#                       Linux Helper Author By MAHAMDI AMINE
#
#       Contact me in fm_mahamdi@gmail.com or : https://twitter.com/mahamdi.amine
#============================================================================================================
VERSION='1.0.0'
NAME='MAHAMDI AMINE'
CODENAME='Lunix Helper'
#==============================================================================
# colours
#==============================================================================
cyan='\e[0;36m'
green='\e[0;34m'
okegreen='\033[92m'
lightgreen='\e[1;32m'
white='\e[1;37m'
red='\e[1;31m'
yellow='\e[1;33m'
BlueF='\e[1;34m'
#==============================================================================
# CTRL C
#==============================================================================
trap ctrl_c INT
ctrl_c() {
clear
echo -e
echo -e $red"  [*] (Ctrl + C ) Detected, Trying To Exit ..."
sleep 1
echo ""
echo -e $yellow"  [*] Thank You For Using  :)"
echo ""
echo -e $green"  [*] We Live by The Code , and Was Raised by Ethics ... "
echo "            "
read enter
exit
}
#==============================================================================


#functions:

#==============================================================================
#install-google-chrome:
#==============================================================================
install-google-chrome(){
  apt-get update -y && apt-get upgrade -y && apt-get dist-upgrade -y
  apt-get autoremove -y && apt-get -y autoclean
  dpkg -i name.deb
  mv /opt/google/chrome/google-chrome /opt/google/chrome/google-chrome.back
  cp ./google-chrome /opt/google/chrome/
  echo -e $okegreen"  Press any key to continue ......... "
	read aw
	mainmenu
}
#===========================================================================

#donation :
#===========================================================================
donation(){
	echo -n -e $red'  \033[4mGcc@Tool:\033[0m >> 03 '; tput sgr0
	echo
	echo
	echo
	echo -e $cyan  "       If you found my script useful, you can buy me a coffee :)  "; tput sgr0
	echo""
	echo""
	sleep 2
	echo -e "    Donation link: https://www.paypal.com/cgi-bin/"
	echo
	echo
	sleep 3
	echo -e $okegreen"  Press any key to continue ......... "
	read aw
	mainmenu
}
#==============================================================================

#run-vlc-as-root :
#==============================================================================
run-vlc-as-root(){
  echo -n -e $red'  \033[4mGcc@Tool:\033[0m >> 02 '; tput sgr0
  echo
  echo
	echo -e $cyan  "       This :)  "; tput sgr0
sed -i 's/geteuid/getppid/g' /usr/bin/vlc
sleep 3
echo -e $okegreen"  Press any key to continue ......... "
read aw
mainmenu
}
#==============================================================================

#==============================================================================
show () {
echo""
echo -e $white"\t||"$red"============================================$white||";tput sgr0
echo -e "\t||  $white |=| "$okegreen"Version : $VERSION \t\t   $white   ||"
echo -e "\t||  $white |=| "$okegreen"Code by : $NAME $white             || "
echo -e "\t||  $white |=| "$okegreen"Codename: $CODENAME $white \t      || "
echo -e $white"\t||"$red"============================================$white||\n"
echo -e
echo -e $yellow"                                                   fm_mahamdi@esi.dz";tput sgr0
echo -e $green"	___________________________________________________________________";tput sgr0
echo -e
echo -e $BlueF"	  [$white"0x1"$BlueF]$cyan  Install and run google chrome as root	"
echo -e $BlueF"	  [$white"0x2"$BlueF]$cyan  Run vlc as root                 	    "
echo -e $BlueF"	  [$white"0x3"$BlueF]$cyan  Buy Me a Coffee 					  "
echo -e $BlueF"	  [$white"0x4"$BlueF]$cyan  Exit  														    "
echo -e
echo -n -e $red'  \033[4mLinux@Helper:\033[0m >> '; tput sgr0 #insert your choice
}
#==============================================================================

#==============================================================================
mainmenu(){
  clear
  echo""
  show
  read mainchoice
  clear
  echo
  case $mainchoice in
    1) install-google-chrome ;;
    2) run-vlc-as-root ;;
    3) donation ;;
    4|Q|q|exit|quit) exit ;;
    *) mainmenu ;;
    esac
  }
  #==============================================================================

  clear
  mainmenu
