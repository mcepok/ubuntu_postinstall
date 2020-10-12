#!/bin/bash

sudo apt install -y flameshot
mkdir -p "$HOME/.config/autostart"
cp 'autostart/Flameshot.desktop' "$HOME/.config/autostart"
