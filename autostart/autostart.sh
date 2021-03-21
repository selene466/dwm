#!/bin/sh

pgrep sxhkd | xargs kill
xst &
sleep 2 &
sxhkd &
# while true
# do
# MPC=`~/.scripts/mpc6 --format="%file%" | sed -n '1,1p' | sed 's/\.//g'| cut -d\/ -f2- | cut -c -30`
# CPU=$(top -bn1 | sed -n '/Cpu/p' | awk '{printf "CPU: " $2 "%"}' | sed 's/..,//')
# DATE=`date "+%a, %d %b %Y %I:%M"`
# VOLM=$(amixer sget Master | grep -e 'Mono: ' | sed 's/[^\[]*\[\([0-9]\{1,3\}%\).*\(on\|off\).*/\2 \1/' | sed 's/off/M/' | sed 's/on //')
# VOLH=$(amixer sget Headphone | grep -e 'Front Left: ' | sed 's/[^\[]*\[\([0-9]\{1,3\}%\).*\(on\|off\).*/\2 \1/' | sed 's/off/M/' | sed 's/on //')
# xsetroot -name "[${MPC}] | [${CPU}] [${VOLM} - ${VOLH}] | ${DATE}"
# sleep 5
# done &
xsetroot -name " " &
