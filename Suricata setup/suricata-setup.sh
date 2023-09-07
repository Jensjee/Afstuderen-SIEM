#!/bin/bash

# Update de pakketlijst om ervoor te zorgen dat je de nieuwste informatie hebt
sudo apt update

# Installeer Suricata
sudo apt install -y suricata

# Download suricata.yaml van de opgegeven URL
wget https://raw.githubusercontent.com/Jensjee/Afstuderen-SIEM/main/Suricata%20setup/suricata.yaml

# Overschrijf suricata.yaml naar /etc/suricata/
sudo cp suricata.yaml /etc/suricata/suricata.yaml

# Emergingthreat rules toevoegen
wget https://rules.emergingthreats.net/open/suricata-6.0.3/emerging.rules.tar.gz

# Uitpakken
sudo tar zxvf emerging.rules.tar.gz

# Oude regels verwijderen
sudo rm /etc/suricata/rules/* -f

# Regels verplaatsen
sudo mv rules/*.rules /etc/suricata/rules/

# Suricata updaten voor toepassen regels
sudo suricata-update

# Start Suricata als een systeemservice
sudo systemctl start suricata

# Voeg Suricata toe aan opstarten
sudo systemctl enable suricata

# Controleer de status van Suricata om te verifiëren dat het correct is geïnstalleerd en wordt uitgevoerd
sudo systemctl status suricata