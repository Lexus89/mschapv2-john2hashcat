#!/bin/bash

HASH=$1

# Start of the script

if [ -n "$1" ] ; then
	INTERFACE=$1
else
	echo -e "\033[0;31m[!]\033[0m No hash was provided! Please run as: $0 '<hash>'"
	echo -e "\033[0;34m[+]\033[0m Note: output can be cracked with hashcat using -m 5500 (NetNTLMv1)"
	exit 0;
fi

echo $HASH | perl -ne '/(.*?):\$.*?\$(.*?)\$(.*)/; print "$1::::$3:$2\n";'
