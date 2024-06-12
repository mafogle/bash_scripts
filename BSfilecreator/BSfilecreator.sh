#!/bin/bash
#
# Script: BSFileCreator
# Created: 11/06/2024
# Updated: 11/06/2024
# Author: Matt Fogle
# Website: https://github.com/mafogle
# Email: matt@mattasaservice.com
#
# BSfile generator script I originally made at work test network strain when creating large files to transfer
# over an Mikrotik EoIP tunnel.
# It's June so I brought it home and added user Inputs and Yassified it. Slay. 
echo "Welcome to the Bullsh... I mean BS File Creator."
echo "Usage is simple, sis. Answer the questions."
echo "Ok slay queen. How small you want this file?"
read -r min      # min size (MB)
echo ":clapping_hands_emoji::clapping_hands_emoji: YASSSS, how big you want it? -.^"
read -r max     # max size (MB)
echo "Ok gurl, how many you want?"
read -r filecount # number of files
if [ "$filecount" -gt 9 ] ; then
    echo "Sis, you are a champ."
elif [[ "$filecount" -lt 10 && "$filecount" -gt 2 ]] ; then 
    echo "Gurl you have fun."
elif [ "$filecount" -eq 2 ] ; then
    echo "I also enjoy doubles"
else 
    echo "Just one boo? You must be desperate."
fi

for i in $(eval echo {1..$filecount})
do
    head -c $(($RANDOM%($max-$min+1)+$min))M </dev/urandom >/Matt-Test/scripts/BSfilecreator/BSfiles/BSfile$i
done

echo "All done, girly! Maybe I should have used /dev/zero to represent the data in my bank account." ; ls -lh BSfiles
