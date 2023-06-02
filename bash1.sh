#!/bin/bash
# First param: filename  Second param: seconds
if [ "$1" != "" ]; then
  x=1
  if [ "$2" != "" ]; then
    x=$2
  fi
  echo "`date +%d.%m.%Y\ %H:%M` = `cat /proc/loadavg`" > "$1"
  for ((i=1; i<=$x; i++)); do
    sleep 1
    echo "`date +%d.%m.%Y\ %H:%M` = `cat /proc/loadavg`" >> "$1"
  done
fi