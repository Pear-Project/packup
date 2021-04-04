#!/bin/bash

RED='\033[0;31m'
NC='\033[0m' # No Color

d="$(date +"%d-%m-%Y")" #creates variable with todays date in the format dd-mm-yyyy
w="/tmp/${d}"
echo -e "${RED}Resroring packup${NC}"
mv ~/


sudo apt-key add ~/Repo.keys
sudo cp -R ~/sources.list* /etc/apt/
sudo apt-get update
sudo apt-get install dselect
sudo dselect update
sudo dpkg --set-selections < ~/Package.list
sudo apt-get dselect-upgrade -y
