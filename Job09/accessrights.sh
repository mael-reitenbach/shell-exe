#!/bin/bash
{
read
while read -r line;
do
	username="$(echo $line | cut -d "," -f2 | tr -d " ")$(echo $line | cut -d "," -f3 | tr -d " ")"
	password="$(echo $line | cut -d "," -f4)" 
	checkadmin="$(echo $line | cut -d "," -f5 | tr -d " " | wc -c)"
	if [[ $checkadmin -eq 7 ]]
		then
			sudo useradd $username -p $password -G sudo && sudo echo "$username ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
		else
			sudo useradd $username -p $password
	fi;
done
} < Shell_Userlist.csv

#pour détecter si le fichier est modifié, on fait ceci dans un terminal qu'on laisse tourner:
#sudo apt install entr
#sudo ls list.csv | sudo entr -r ./accessrights.sh
