#!/bin/bash

echo "updating"
sudo apt update
sudo apt upgrade
echo "cleaning the trash"
sudo rm -rf /home/$USER/.local/share/Trash/files/*
echo ""
echo ""
echo "Cleaning the tmp folder"
sudo rm -rf /var/tmp/*
echo ""
echo ""
echo "Deletion of useless cache from the system. Copies of updates from the update manager"
sudo apt-get clean -y
echo ""
echo ""
echo "Exclusion of programs that are no longer being used by the system"
sudo apt-get autoremove -y
echo ""
echo ""
echo "Deleting duplicate files"
sudo apt-get autoclean -y
echo ""
echo ""
echo "Repairing broken packages during the upgrade"
sudo dpkg --configure -a
echo ""
echo ""
echo "cleaning the system ram"
sudo sync && sudo sysctl -w vm.drop_caches=3
echo ""
echo ""
clear
echo "Done cleaning"
sleep 1
exit
