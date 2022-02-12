#!/bin/bash

themesFolder=~/Library/Developer/Xcode/UserData/FontAndColorThemes

# Creating the folder in case you haven't customised Xcode ever before.
mkdir -p $themesFolder;

# Checking if any of the files have been copied.
files=`ls *.xccolortheme`;
echo "Found these files available to install\n\n$files\n\n"

list=$(echo $files | tr -d "\n")
for item in $list
do
  if [ ! -f $themesFolder/$item ]
  then
    echo "Copying file '$item' to FontAndColorThemes folder."
    cp ./$item $themesFolder
  else
    echo "Skipping file '$item'.";
  fi
done

# listing the installed files.
ls -ls $themesFolder;