#!/usr/bin/env bash

# A script that sends a WOL signal to my server running windows 10. 
# Made for headless playing using parsec, when I want to use it as a Desktop PC
#                           using steam,  when I want to play like a console

MAC=11:22:33:44:55:66
# LMAO YOU THOUGHT I WOULD GIVE MY MAC ADRESS?

echo -e $(echo $(printf 'f%.0s' {1..12}; printf "$(echo $MAC | sed 's/://g')%.0s" {1..16}) | sed -e 's/../\\x&/g') | nc -w1 -u -b 255.255.255.255 4000
