#!/bin/bash
#
# BASH SECRETARY 2000 samlar in och visar information om ditt Linux-system såsom användare, hårdvara och nätverk. 
# Scriptet körs direkt i terminalen. Med kommandot " ./sec2000.sh > log " sparas outputen till en fil.
#
# Version 0.2
# Upphovsman: 1337andreas
# Senaste uppdatering: 08-01-2026

echo "Välkommen till BASH SECRETARY 2000!
Detta skript kan användas för att kontrollera en Linux-miljö.
Tryck på valfri tangent för att visa information om ditt system."

read -s -n 1 #Väntar på användarens input (valfri tangent) innan informationen kommer upp så inte allt tar upp hela skärmen på en gång.

echo
echo "=== SYSTEMINFO ==="
uname -a
lscpu
lshw #Visar information om hårdvara såsom processor, hårddiskar, RAM-minne, USB-enheter.
free -h
echo "Tryck på valfri tangent för att visa information om aktuell användare."
read -s -n 1

echo
echo "=== AKTUELL ANVÄNDARE ==="
echo $USER
w
echo "Tryck på valfri tangent för att visa information om användare med shell."
read -s -n 1

echo
echo "=== ANVÄNDARE MED SHELL ==="
cat grep "sh$" /etc/passwd
echo "Tryck på valfri tangent för att visa nätverksinformation och kernelversion."
read -s -n 1

echo
echo "=== NÄTVERK ==="
echo uname -n
ip a | grep inet
curl https://ipapi.co/json/ #Hämtar publik IP och platsinformation.
ifconfig

echo
echo "=== KERNEL-VERSION ==="
uname -v
echo "Tryck på valfri tangent för att avsluta."
read -s -n 1
