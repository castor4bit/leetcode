#!/bin/bash
i=0
while read line; do
  i=$((i + 1))
  if [ $i == 10 ]; then
    echo $line
  fi
done < file.txt
