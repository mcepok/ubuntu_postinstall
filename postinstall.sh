#!/bin/bash

./check_if_in_ubuntu_postinstall.sh || exit

sudo apt update; sudo apt dist-upgrade -y; sudo apt autoremove -y

./setup_terminal.sh
./setup_firefox.sh
./setup_keepassxc.sh
./setup_thunderbird.sh
./setup_flameshot.sh
./setup_shotwell.sh
./setup_codium.sh

dconf load '/org/gnome/desktop/wm/keybindings/' < dconf/keybindings.dconf
dconf load '/org/gnome/desktop/wm/preferences/' < dconf/workspaces.dconf
dconf load '/org/gnome/shell/' < dconf/gnome_shell.dconf
dconf load '/org/gnome/desktop/interface/' < dconf/gnome-interface.dconf

read -p 'Please press enter to reboot'
sudo reboot
