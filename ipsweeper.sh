#!/bin/bash
if [ "$1" == "" ]
then
	echo "You forgot an IP address!"
	echo "Syntax example: ./ipsweep.sh 192.168.1 (Replace these numbers with your target's IP)"

else
	for ip in `seq 1 254`; do
		ping -c 1 $1.$ip | grep "64 bytes" | cut -d " " -f 4 | tr -d ":" &
	done
fi