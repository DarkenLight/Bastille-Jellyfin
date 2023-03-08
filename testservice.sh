#!/bin/sh
project_name="jellyfinserver"
echo "Installation is complete"

echo '~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~'
echo "       _   ______   _        _       __     __  ______   _____   _   _ "
echo "      | | |  ____| | |      | |      \ \   / / |  ____| |_   _| | \ | |"
echo "      | | | |__    | |      | |       \ \_/ /  | |__      | |   |  \| |"
echo "  _   | | |  __|   | |      | |        \   /   |  __|     | |   | . \` |"
echo " | |__| | | |____  | |____  | |____     | |    | |       _| |_  | |\  |"
echo "  \____/  |______| |______| |______|    |_|    |_|      |_____| |_| \_|"
echo "                                                                       "
echo '~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~'
if service ${project_name} status | grep -q "is running"; then echo "${project_name} is Running at Jail IP:8096"; else echo "${project_name} is not running.."; fi
echo '~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~'
