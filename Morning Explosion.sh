#!/bin/bash
#This program will ask for a name, output the name and self-destruct!
date=$(date +%H)
if [ $# -eq 0 ] ;then
	echo -n "Please Enter your name: "
	read name
elif [ $# -eq 1 ] ;then
	name=$1
else
	echo "$0 Usage: There are too many arguments."
	exit 1
fi

if [ $date -ge 00 -a $date -le 11 ] ;then
	echo "Good morning $name"
elif [ $date -ge 12 -a $date -le 17 ] ;then
	echo "Good Afternoon $name"
elif [ $date -ge 18 -a $date -le 23 ] ;then
	echo "Good Evening $name"
fi

for (( i=10; i>0; i-- )); do
	echo -n -e "This Message will self destruct in $i seconds!"\\r
	sleep 1
done
echo -e "\nBoom!"
exit 0
