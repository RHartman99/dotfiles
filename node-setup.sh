#!/bin/bash

echo "";
echo "Installing NVM...";
echo "";

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash;

echo 'export NVM_DIR="$HOME/.nvm"' >> ~/.zshrc;
echo '[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm' >> ~/.zshrc;

export NVM_DIR="$HOME/.nvm";
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh";
nvm install --lts;
nvm use --lts;