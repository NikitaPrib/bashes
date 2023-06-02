#!/bin/bash
# Params contains paths to another files
if [ $# != 0 ]; then
  for param in "$@"; do
    if [[ -e $param ]]; then
      count=`cat $param | wc -l`
      echo "$count lines in file $param"
    else echo "File $param doesn't exists"
    fi
  done
  else echo "No parameters"
fi