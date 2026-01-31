#!/bin/bash

read -p "Please type the ip address or the domain of the application: " target

outdir="recon_$target"
mkdir -p "$outdir"

if [[ $target =~ ^([0-9]{1,3}\.){3}[0-9]{1,3}$ ]];then
	echo "[+] IP Address detected"
	is_ip=true
else
	echo "[+] Detected domain name"
	is_ip=false
fi

if [[ "$is_ip" = false ]];then
	read -p "Choose a record type (A, AAAA, MX, TXT, NS, CNAME, ANY): " record_type
	echo "[+] Running dig"
	dig "$target" "$record_type" > "$outdir/dig.txt"
	echo "[+] Running nslookup"
	nslookup -type="$record_type" "$target" > "$outdir/nslookup.txt"
fi


echo "[+] Running WHOIS"
whois "$target" > "$outdir/whois.txt"

echo "[+] Pinging the target"
ping -c 10 "$target" > "$outdir/ping.txt"

echo "[+] Running traceroute"
traceroute "$target" > "$outdir/traceroute.txt"

echo "[+] Running nmap scan"
nmap -sC -sV -oN "$outdir/nmap.txt" "$target"
