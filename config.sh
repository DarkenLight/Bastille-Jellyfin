#!/usr/bin/env bash

project_name="JellyFin"

clear
echo '~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~'
echo "       _   ______   _        _       __     __  ______   _____   _   _ "
echo "      | | |  ____| | |      | |      \ \   / / |  ____| |_   _| | \ | |"
echo "      | | | |__    | |      | |       \ \_/ /  | |__      | |   |  \| |"
echo "  _   | | |  __|   | |      | |        \   /   |  __|     | |   | . \` |"
echo " | |__| | | |____  | |____  | |____     | |    | |       _| |_  | |\  |"
echo "  \____/  |______| |______| |______|    |_|    |_|      |_____| |_| \_|"
echo "                                                                       "
echo "                                                                               "
echo '~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~'
echo "                    MANAGED $project_name SCRIPTED INSTALLER                     "
echo '~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~'
echo
read -p "Do you want to Mount the Media Folder now as well?" -n 1 -r
echo  # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
echo "Enter Remote Directory path: "
read -p ">>" target_dir
echo "Enter Local Directory path: "
read -p ">>" mount_dir
fi

echo '~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~'
echo "Entered Details are Below"
echo '~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~'
echo "TARGET DIRECTORY = $target_dir"
echo "MOUNTED LOCATION = $mount_dir"
echo '~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~'

echo "Setup complete"
