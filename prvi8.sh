#!/usr/bin/env
# Tools buat Tugas Pkkwu
# 1 April 2020
# Covid-19
rm -rf /tmp/choose.txt
export red=$'\e[0;91m'
export green=$'\e[0;92m'
export blue=$'\e[0;94m'
export white=$'\e[0;97m'
export cyan=$'\e[0;96m'
export endc=$'\e[0m'

# b = bold
export bgreen=$'\e[1;92m'
export bblue=$'\e[1;94m'
export bwhite=$'\e[1;97m'
export bcyan=$'\e[1;96m'
export byellow=$'\e[1;96m'

#resize -s 28 96
clear

# Cuma animasi loading biar keren aja
animation() {
	nyawa=$!
	local i sp n
	sp='/-\|'
	n=${#sp}
	printf ''
	while [ -d /proc/$nyawa ] ; do
		printf "%s\b" "${sp:i++%n:1}"
	done
}

banner(){
  printf "
  __         _______                             __   __
 |__|.-----.|    ___|.-----.----.--------.---.-.|  |_|__|.-----.-----.
 |  ||     ||    ___||  _  |   _|        |  _  ||   _|  ||  _  |     |
 |__||__|__||___|    |_____|__| |__|__|__|___._||____|__||_____|__|__|
                                                                       ${red}1.0
 ${green}Project   :${bblue} https://github.com/wardnaa/InfCorn
 ${endc}Api on    : https://api.kawalcorona.com

 Coronaviruses are a group of related viruses that cause diseases in mammals and birds.
 In humans, coronaviruses cause respiratory tract infections that can be mild,such as some
 cases of the common cold.
"
}

oops(){
	     					echo -e "\n | "
							echo " |_ "
							echo -e $red"    [-]$endc Wrong: spesific your command - "$green"[help] $endc"
}

err1(){

	     					echo -e "\n | "
							echo " |_ "
							echo -e $red"    [-]$endc Ops: use ID - Example : "$green"use 0x1 (indonesia)$endc "
}

err(){

	     					echo -e "\n | "
							echo " |_ "
							echo -e $red"    [-]$endc Ops: before use this options, you must set module - "$green"[use ID] $RESET "
}

module(){
  echo -e "\n | "
  echo " |_ "
  echo "    Options:[Use ID Country] "
  echo ""
  echo -ne $green"	       0x01  "$endc"|"$green":"$endc"|  Country United States"
  echo -e $green"	       0x20"$endc"  |"$green":"$endc"|  Country Italy        "
  echo -ne $green"	       0x02"$endc"  |"$green":"$endc"|  Country Spain        "
  echo -e $green"	       0x21"$endc"  |"$green":"$endc"|  Country China"
  echo -ne $green"	       0x03"$endc"  |"$green":"$endc"|  Country Germany      "
  echo -e $green"	       0x22"$endc"  |"$green":"$endc"|  Country France"
  echo -ne $green"	       0x04"$endc"  |"$green":"$endc"|  Country Iran         "
  echo -e $green"	       0x23"$endc"  |"$green":"$endc"|  Country United Kingdom"
  echo -ne $green"	       0x05"$endc"  |"$green":"$endc"|  Country Switzerland"
  echo -e $green"	       0x24"$endc"  |"$green":"$endc"|  Country Berlgium"
  echo -ne $green"	       0x06"$endc"  |"$green":"$endc"|  Country Netherland"
  echo -e $green"	       0x25"$endc"  |"$green":"$endc"|  Country Turkey"
  echo -ne $green"	       0x07"$endc"  |"$green":"$endc"|  Country Austria"
  echo -e $green"	       0x26"$endc"  |"$green":"$endc"|  Country korea. South"
  echo -ne $green"	       0x08"$endc"  |"$green":"$endc"|  Country Canada"
  echo -e $green"	       0x27"$endc"  |"$green":"$endc"|  Country Portugal"
  echo -ne $green"	       0x09"$endc"  |"$green":"$endc"|  Country Brazil"
  echo -e $green"	       0x28"$endc"  |"$green":"$endc"|  Country Israel"
  echo -ne $green"	       0x10"$endc"  |"$green":"$endc"|  Country Sweden"
  echo -e $green"	       0x29"$endc"  |"$green":"$endc"|  Country Australia"
  echo -ne $green"	       0x11"$endc"  |"$green":"$endc"|  Country Norway "
  echo -e $green"	       0x30"$endc"  |"$green":"$endc"|  Country Czechia"
  echo -ne $green"	       0x12"$endc"  |"$green":"$endc"|  Country Denmark"
  echo -e $green"	       0x31"$endc"  |"$green":"$endc"|  Country Ireland"
  echo -ne $green"	       0x13"$endc"  |"$green":"$endc"|  Country Chile        "
  echo -e $green"	       0x32"$endc"  |"$green":"$endc"|  Country Malaysia"
  echo -ne $green"	       0x14"$endc"  |"$green":"$endc"|  Country Russia"
  echo -e $green"	       0x33"$endc"  |"$green":"$endc"|  Country Romania"
  echo -ne $green"	       0x15"$endc"  |"$green":"$endc"|  Country Poland"
  echo -e $green"	       0x34"$endc"  |"$green":"$endc"|  Country Philippines"
  echo -ne $green"	       0x16"$endc"  |"$green":"$endc"|  Country Ecuador"
  echo -e $green"	       0x35"$endc"  |"$green":"$endc"|  Country japan"
  echo -ne $green"	       0x17"$endc"  |"$green":"$endc"|  Country Luxembourg"
  echo -e $green"	       0x36"$endc"  |"$green":"$endc"|  Country Pakistan"
  echo -ne $green"	       0x18"$endc"  |"$green":"$endc"|  Country Thailand"
  echo -e $green"	       0x37"$endc"  |"$green":"$endc"|  Country Saudi Arabia"
  echo -ne $green"	       0x19"$endc"  |"$green":"$endc"|  Country Indonesia"
  echo -e $green"	       0x38"$endc"  |"$green":"$endc"|  Country India"

  }

help(){
  echo " | "
  echo " |_ "
  echo "    Options:[arguments] "
  echo ""
  echo -e $green"	     help  "$endc"      |"$green":"$endc"| show this message"
  echo -e $green"	     show"$endc"        |"$green":"$endc"| show all Country modules from this tools"
  echo -e $green"	     use "$endc"        |"$green":"$endc"| use a module, ex : use [ID] "
  echo -e $green"	     clear  "$endc"     |"$green":"$endc"| Clear window"
  echo -e $green"	     exit     "$endc"   |"$green":"$endc"| Exit program"
  echo -e $green"	     options"$endc"     |"$green":"$endc"| show module options "
  echo -e $green"	     run        "$endc" |"$green":"$endc"| Execute the module "
  echo ""
}


settings() {
	cat << !

  Options :
           +-------++----------------------++
           | ID    ||  Name of Country     ||
           +-------++----------------------++
           | $id  ||  $negara
           +------++-----------------------++
!

}

controller() {
  clear;banner
  while /bin/true
  do
    	echo -ne $green"\nInfCorn""╺─╸"$green"[ "$white"cli"$green" ]"$red" > ";tput sgr0 ;read ops_1 ops_2 ops_3
        if   [[ $ops_1 == "help" ]]; then
             help

        elif [[ $ops_1 == "exit"  ]]; then
            exit 1

        elif [[ $ops_1 == "show" ]]; then
            module

        elif [[ $ops_1 == "options" ]]; then
            settings

        elif [[ $ops_1 == "clear" ]]; then
            clear

        elif [[ $ops_1 == "use" ]] && [[ $ops_2 == "$ops_2" ]]; then
             if [[ $ops_2 == "0x01" ]]; then
                 echo "0" > /tmp/choose.txt
                 id="0x01"
                 negara="United States"
             elif [[ $ops_2 == "0x02" ]]; then
                 echo "2" > /tmp/choose.txt
                 id="0x02"
                 negara="Spain"
             elif [[ $ops_2 == "0x03" ]]; then
                 echo "3" > /tmp/choose.txt
                 id="0x03"
                 negara="Germany"
             elif [[ $ops_2 == "0x04" ]]; then
                 echo "6" > /tmp/choose.txt
                 id="0x04"
                 negara="Iran"
             elif [[ $ops_2 == "0x05" ]]; then
                 echo "8" > /tmp/choose.txt
                 id="0x05"
                 negara="Switzerland"
             elif [[ $ops_2 == "0x06" ]]; then
                 echo "11" > /tmp/choose.txt
                 id="0x06"
                 negara="Netherland"
             elif [[ $ops_2 == "0x07" ]]; then
                 echo "13" > /tmp/choose.txt
                 id="0x07"
                 negara="Austria"
             elif [[ $ops_2 == "0x08" ]]; then
                 echo "12" > /tmp/choose.txt
                 id="0x08"
                 negara="Canada"
             elif [[ $ops_2 == "0x09" ]]; then
                 echo "16" > /tmp/choose.txt
                 id="0x09"
                 negara="Brazil"
             elif [[ $ops_2 == "0x10" ]]; then
                 echo "18" > /tmp/choose.txt
                 id="0x10"
                 negara="Sweden"
             elif [[ $ops_2 == "0x11" ]]; then
                 echo "19" > /tmp/choose.txt
                 id="0x11"
                 negara="Norway"
             elif [[ $ops_2 == "0x12" ]]; then
                 echo "23" > /tmp/choose.txt
                 id="0x12"
                 negara="Denmark"
             elif [[ $ops_2 == "0x13" ]]; then
                 echo "25" > /tmp/choose.txt
                 id="0x13"
                 negara="Chile"
             elif [[ $ops_2 == "0x14" ]]; then
                 echo "24" > /tmp/choose.txt
                 id="0x14"
                 negara="Russia"
             elif [[ $ops_2 == "0x15" ]]; then
                 echo "28" > /tmp/choose.txt
                 id="0x15"
                 negara="Poland"
             elif [[ $ops_2 == "0x16" ]]; then
                 echo "26" > /tmp/choose.txt
                 id="0x16"
                 neagara="Ecuador"
             elif [[ $ops_2 == "0x17" ]]; then
                 echo "33" > /tmp/choose.txt
                 id="0x17"
                 negara="Luxembourg"
             elif [[ $ops_2 == "0x18" ]]; then
                 echo "35" > /tmp/choose.txt
                 id="0x18"
                 negara="Thailand"
             elif [[ $ops_2 == "0x19" ]]; then
                 echo "37" > /tmp/choose.txt
                 id="0x19"
                 negara="Indonesia"
             elif [[ $ops_2 == "0x20" ]]; then
                 echo "1" > /tmp/choose.txt
                 id="0x20"
                 negara="Italy"
             elif [[ $ops_2 == "0x21" ]]; then
                 echo "4" > /tmp/choose.txt
                 id="0x21"
                 negara="China"
             elif [[ $ops_2 == "0x22" ]]; then
                 echo "5" >  /tmp/choose.txt
                 id="0x22"
                 negara="France"
             elif [[ $ops_2 == "0x23" ]]; then
                 echo "7" > /tmp/choose.txt
                 id="0x23"
                 negara="United Kingdom"
             elif [[ $ops_2 == "0x24" ]]; then
                 echo "10" > /tmp/choose.txt
                 id="0x24"
                 negara="Berlgium"
             elif [[ $ops_2 == "0x25" ]]; then
                 echo "9"  > /tmp/choose.txt
                 id="0x25"
                 negara="Turkey"
             elif [[ $ops_2 == "0x26" ]]; then
                 echo "14" > /tmp/choose.txt
                 id="0x26"
                 negara="Korea. South"
             elif [[ $ops_2 == "0x27" ]]; then
                 echo "15" > /tmp/choose.txt
                 id="0x27"
                 negara="Portugal"
             elif [[ $ops_2 == "0x28" ]]; then
                 echo "17" > /tmp/choose.txt
                 id="0x28"
                 negara="Israel"
             elif [[ $ops_2 == "0x29" ]]; then
                 echo "20" > /tmp/choose.txt
                 id="0x29"
                 negara="Australia"
             elif [[ $ops_2 == "0x30" ]]; then
                 echo "21" > /tmp/choose.txt
                 id="0x30"
                 negara="Czechia"
             elif [[ $ops_2 == "0x31" ]]; then
                 echo "22" > /tmp/choose.txt
                 id="0x31"
                 negara="Ireland"
             elif [[ $ops_2 == "0x32" ]]; then
                 echo "27" > /tmp/choose.txt
                 id="0x32"
                 negara="Malaysia"
             elif [[ $ops_2 == "0x33" ]]; then
                 echo "29" > /tmp/choose.txt
                 id="0x33"
                 negara="Romania"
             elif [[ $ops_2 == "0x34" ]]; then
                 echo "30" > /tmp/choose.txt
                 id="0x34"
                 negara="Philippines"
             elif [[ $ops_2 == "0x35" ]]; then
                 echo "31" > /tmp/choose.txt
                 id="0x35"
                 negara="Japan"
             elif [[ $ops_2 == "0x36" ]]; then
                 echo "34" > /tmp/choose.txt
                 id="36"
                 negara="Pakistan"
             elif [[ $ops_2 == "0x37" ]]; then
                 echo "35" > /tmp/choose.txt
                 id="0x37"
                 negara="Saudi Arabia"
             elif [[ $ops_2 == "0x38" ]]; then
                 echo "32" > /tmp/choose.txt
                 id="0x38"
                 negara="India"
             fi
        elif [[ $ops_1 == "run" ]]; then
         choose=$(cat /tmp/choose.txt)
         # Json ya jsonn lagii from api.kawalcorona.com
         akudimana=$(pwd)
         rm -rf webpage/index.html
        (echo -ne $green"Geting Data From API "${endc}
         sleep 2
         getdata=$(curl -s --insecure https://api.kawalcorona.com/ | jq -r ".[$choose] .attributes" > corona.json)
         mati=$(cat corona.json | jq ".Deaths")
         terkonfirmasi=$(cat corona.json | jq ".Confirmed")
         perawatan=$(cat corona.json | jq ".Active")
         sembuh=$(cat corona.json | jq ".Recovered")
         # Change value to the webpage

         sed -e "s/1111/$terkonfirmasi/g" webpage/bahan.html > webpage/index.html
         sed -i "s/2222/$mati/g" webpage/index.html
         sed -i "s/3333/$perawatan/g" webpage/index.html
         sed -i "s/4444/$sembuh/g" webpage/index.html
         sed -i "s/saominovelia/$negara/" webpage/index.html
        ) & animation
        muntah=$(cat corona.json)
        echo "$muntah"
        echo -e ${green}"Starting PHP Web Server in localhost:8080..."
        sleep 2
        gnome-terminal --title="PHP Web Server" --geometry 81x31+100+300 -- bash -c "cd $akudimana/webpage; php -S localhost:8080" >> /dev/null 2>&1
        xdg-open http://localhost:8080
        echo -ne "${bgreen}Wanna Check Another Country ? y/n "
        read user
        echo $green
        if [[ $user == "y" ]] || [[ $user = "Y" ]]; then
            echo -e "please wait.."
          ( echo -ne "Close the firefox window..."
            wmctrl -a Corona; xdotool key Ctrl+w
            killall php
            sleep 2
          ) & animation
          clear
          echo -e "So Please Select The Country ..."
          module
        else
          sleep 3
          clear
          echo -e "Okey !"
          sleep 0.5
          echo -e "Dont Forget To W0rk Fr0m H0me"
          sleep 0.5
          echo -e "This Options will Close the PHP server and exit this Tools !"
          sleep 0.5
          sleep 5
          wmctrl -a Corona; xdotool key Ctrl+w
          killall php
          exit
        fi
      else
        oops
        fi
  done

}


controller
