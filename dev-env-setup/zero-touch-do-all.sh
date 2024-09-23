#!/bin/bash

chmod +x *

./ohmyzsh-install.sh
./docker-install.sh
./node-install.sh
./git-clone.sh

echo "Finished installing packages. Please reboot Ubuntu server for changes to take effect."