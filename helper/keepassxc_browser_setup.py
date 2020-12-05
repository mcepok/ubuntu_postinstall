#!/usr/bin/python3

import os
import re

script_name = 'keepassxc-snap-helper.sh'

if not os.path.isfile(script_name):
    print('KeePassXC Browser Script not found!')
    exit(1)

with open(script_name, 'r') as fp:
    content = fp.read()

content = re.sub(r'BROWSER=\$\([^\)]+\)', 'BROWSER="1"', content)
content = re.sub(r'askBrowserSnap\w*[^\(\n]+', "", content)

with open(script_name, 'w') as fp:
    fp.write(content)
