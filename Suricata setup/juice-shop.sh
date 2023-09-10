#!/bin/bash

# APT update
sudo apt -y update

# Installeren van nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash

# Bron .bashrc om nvm beschikbaar te maken
source ~/.bashrc

# Installeren van Node.js versie 18.16.0
nvm install v18.16.0

# Controleren van Node.js versie
node -v

# Installeren van npm
sudo apt -y install npm

# Klonen van het Juice Shop-repository
git clone https://github.com/juice-shop/juice-shop.git --depth 1

# Veranderen naar de Juice Shop-directory
cd juice-shop

# Installeren van afhankelijkheden
yes | npm install

# Start de Juice Shop
npm start
