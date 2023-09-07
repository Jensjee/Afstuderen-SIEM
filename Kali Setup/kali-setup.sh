#!/bin/bash

# Specificeer de URL van de GitHub-repository
REPO_URL="https://github.com/Jensjee/Afstuderen-SIEM.git"

# Specificeer de directory waarin je de repository wilt klonen
DOEL_MAP="setup"

# Controleer of de doelmap bestaat, zo niet, maak deze aan
if [ ! -d "$DOEL_MAP" ]; then
    mkdir -p "$DOEL_MAP"
fi

# Ga naar de doelmap
cd "$DOEL_MAP" || exit

# Kloon de repository
git clone "$REPO_URL"

# Controleer of de kloon succesvol was
if [ $? -eq 0 ]; then
    echo "Repository succesvol gekloond naar $DOEL_MAP"
else
    echo "Fout: Klonen van de repository mislukt"
fi

# Cd naar files
cd Afstuderen-SIEM/

# Chmod execute rechten pentest.sh
chmod +x pentest.sh

# Voer testscript uit
./pentest.sh
