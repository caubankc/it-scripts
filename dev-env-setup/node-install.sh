#!/bin/bash

cd $HOME

sudo apt update
# Install NVM
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash

# register to this script
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# register to .zshrc
echo "" >> .zshrc
echo "#nvm" >> .zshrc
echo 'export NVM_DIR="$HOME/.nvm"' >> .zshrc
echo '[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm' >> .zshrc
echo '[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion' >> .zshrc

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

