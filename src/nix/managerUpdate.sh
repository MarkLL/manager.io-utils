#!/bin/bash

# We get the latest (note, wget will be redirected to the actual version)...
if [ "" = "$1" ] ; then
  fileName=Manager.zip
  echo Wait... Downloading latest version. . .
  wget https://github.com/Manager-io/Manager.zip/releases/latest/download/Manager.zip -O ./zips/$fileName

# else you can specify a particular version to download
else
  fileName=Manager-$1.zip
  echo Wait... Downloading version "$fileName". . .
  wget https://github.com/Manager-io/Manager.zip/releases/download/$1/Manager.zip -O ./zips/$fileName
fi

# Extrack with over-write
if test -f "./zips/$fileName"; then
  unzip -o ./zips/$fileName -d ./Manager
  echo Done...
else
  echo File "./zips/$fileName" not found!
fi

