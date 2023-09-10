# Afstuderen-SIEM
 Scripts voor het opzetten van Suricata met OWASP Juice Shop, Wazuh en Kali Linux.

Note:
Voor Suricata verander suricata.yaml  (nano /etc/suricata/suricata.yaml) in vars -> address-groups -> HOME_NET: "[192.168.2.44/32]" naar IP van server.

En na installatie verander in de ossec.conf (nano /var/ossec/etc/ossec.conf) 
het IP-adres (ossec_config -> client -> server -> address 192.168.2.25) naar het IP-adres van de Wazuh manager.

![image](https://github.com/Jensjee/Afstuderen-SIEM/assets/16975896/74a05d0f-5c9d-4c41-8310-cb67328ccdb0)

Documentatie Wazuh OVA: https://documentation.wazuh.com/current/deployment-options/virtual-machine/virtual-machine.html 

Operating system virtuele machines:
Kali Linux: Debian OS
Suricata: Ubuntu 22.04
Wazuh: Amazon Linux 2

Installatie Wazuh:

Stap 1: Download OVA van Wazuh: https://packages.wazuh.com/4.x/vm/wazuh-4.5.2.ova

Stap 2: Importeer de OVA in VirtualBox en zet netwerk interface op bridge mode.

Stap 3: Noteer het IP-adres van de server met het commando: ip a

Installatie Suricata:

Stap 1:
Download suricata-setup.sh en juice-shop.sh uit de map Suricata setup en chmod +x de scripts. (execute rechten)

Stap 2:
run ./suricata-setup.sh en vul IP-adres in van Wazuh-manager.

Stap 3:
run ./juice-shop.sh om de OWASP Juice Shop te installeren.
