#!/bin/bash

# Stop de Wazuh agent service
sudo systemctl stop wazuh-agent

# Verwijder het Wazuh agent pakket
sudo apt-get remove --purge wazuh-agent

# Stop de Wazuh agent service
sudo systemctl disable wazuh-agent

# Reload systemd daemon
sudo systemctl daemon-reload
