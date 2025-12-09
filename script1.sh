#!/bin/bash
#
# Detta script samlar in systeminformation - BASH SECRETARY 2000
#
#
# Author: 1337andreas
# Last Update: 2025-12-08

echo "Välkommen till BASH SECRETARY 2000!
Detta skript kan användas för att kontrollera en Linux-miljö."

echo
echo "=== SYSTEMINFO ==="
uname -a
lscpu

echo
echo "=== AKTUELL ANVÄNDARE ==="
echo $USER

echo
echo "=== ANVÄNDARE MED SHELL ==="
cat grep "sh$" /etc/passwd

echo
echo "=== NÄTVERK ==="
ip a | grep inet
curl https://ipapi.co/json/

echo
echo "=== LÄGG TILL FLERA TESTER ==="

#
# skriv in dina kommandon för tester
#
