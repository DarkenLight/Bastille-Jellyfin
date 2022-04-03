#!/usr/bin/env bash

project_name="Jellyfinserver"

clear
echo '~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~'
echo "       _   ______   _        _       __     __  ______   _____   _   _ "
echo "      | | |  ____| | |      | |      \ \   / / |  ____| |_   _| | \ | |"
echo "      | | | |__    | |      | |       \ \_/ /  | |__      | |   |  \| |"
echo "  _   | | |  __|   | |      | |        \   /   |  __|     | |   | . \` |"
echo " | |__| | | |____  | |____  | |____     | |    | |       _| |_  | |\  |"
echo "  \____/  |______| |______| |______|    |_|    |_|      |_____| |_| \_|"
echo "                                                                       "
echo '~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~'
echo "                    MANAGED $project_name SCRIPTED INSTALLER                     "
echo '~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~'
echo
read -p "Do you want to Mount the Media Folder now as well?" -n 1 -r
echo  # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
echo "Enter Remote Directory path: "
read -p ">>" media_dir
echo "Enter Local Directory path: "
read -p ">>" mount_dir

echo '~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~'
echo "Entered Details are Below"
echo '~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~'
echo "MEDIA DIRECTORY = ${media_dir}"
echo "MOUNTED LOCATION = ${mount_dir}"
echo '~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~'

sysrc ${project_name}_media_dir="${media_dir}"
sysrc ${project_name}_mount_dir="${mount_dir}"
fi

echo "Setup complete"
echo "${project_name} Running at $HOSTNAME:8069"
