#!/bin/bash

sudo apt install -y fish guake trash-cli

sudo chsh -s '/usr/bin/fish' "$USER"
dconf load '/org/gnome/terminal/' < dconf/gnome_terminal.dconf
dconf load '/apps/guake/' < dconf/guake.dconf

fish -c 'set -u fish_greeting ""'
fish -c 'alias rm trash-put; funcsave rm'

mkdir -p "$HOME/.config/autostart"
cp 'autostart/guake.desktop' "$HOME/.config/autostart"
