#!/bin/bash

# Deactiveer nvm
nvm deactivate

# Verwijder Node.js version 18.16.0
nvm uninstall v18.16.0

# Verwijder de Juice Shop map
rm -r juice-shop
