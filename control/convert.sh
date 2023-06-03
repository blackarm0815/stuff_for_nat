#!/bin/bash
# keeps the spaces
IFS=''
# the file to convert
file="index.html"
# clear the target file
echo "" > website.c
# loop through the lines in the file
while read -r line
do
  # surround the file with c code
  echo "printf(\"$line\");" >> website.c
done <$file
# the <$file pushes the file into the while loop
