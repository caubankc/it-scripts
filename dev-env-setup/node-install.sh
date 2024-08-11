#!/bin/bash

sudo apt update
# Install NVM
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

nvm --version

# Install nodejs
nvm install v20.1
# nvm install --lts
node -v

# Install NPM
sudo apt install npm

# Install yarn
sudo npm install -g yarn

# Verify install
echo "Installation complete!"
nvm --version
node -v
npm -v
yarn --version

