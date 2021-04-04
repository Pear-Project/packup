#!/bin/bash

RED='\033[0;31m'
NC='\033[0m' # No Color

d="$(date +"%d-%m-%Y")" #creates variable with todays date in the format dd-mm-yyyy
w="/tmp/${d}"
echo -e "${RED}Packing up...${NC}"

mkdir -p ${w}/
mkdir -p "$w"/debs/ #creates folder for the installed applications
mkdir -p "$w"/"$USER"/ #creates folder for the Users home directory with the name of the current user

#rsync -av --progress "$HOME"/* "$w"/"$USER"/ #copies the homefolder into the folder for the home directory

dpkg --get-selections > "$w"/debs/packages.list
cp -R /etc/apt/sources.list* "$w"/debs/
apt-key exportall > "$w"/debs/Repo.keys

cd "$w" && tar -czvf ~/Desktop/"$d".tar.gz ./*
mv ~/Desktop/"$d".tar.gz ~/Desktop/"d".packup
