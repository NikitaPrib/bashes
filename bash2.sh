#!/bin/bash
# First param: path
if [ -e $1 ]; then
  echo > $1/catalogs
  for folder in `find $1 -maxdepth 1 -type d -not -name ".*"`; do
    echo "$folder  --> contains --> `ls -l $folder | wc -l`" >> $1/catalogs
  done
else echo "Path doesn't exists"
fi