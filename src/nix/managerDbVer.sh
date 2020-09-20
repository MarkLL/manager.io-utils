#!/bin/bash
# we loop through all manager files to determine their version.
# Note: Php is used to convert the 6 byte Hex output from SQLite
#       to the equivalent decimal version.

for fileName in $1
do
  echo "$fileName"
  sqlite3 "$fileName" "select hex(Content) from Objects Where Key='a9a71e47-82b3-49db-8aec-898adb460a80';"|php -r "echo 'db schema v'. hexdec(substr(fgets(STDIN),2,2)).PHP_EOL;"
done
