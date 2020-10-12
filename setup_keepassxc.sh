#!/bin/bash

sudo snap install keepassxc
wget https://raw.githubusercontent.com/keepassxreboot/keepassxc/master/utils/keepassxc-snap-helper.sh
./helper/keepassxc_browser_setup.py
chmod +x keepassxc-snap-helper.sh
./keepassxc-snap-helper.sh
