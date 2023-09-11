# Afstuderen-SIEM
 Scripts voor het opzetten van Suricata met OWASP Juice Shop, Wazuh en Kali Linux. Ook is er een script voor het nabootsen van een pentest voor het testen van de SIEM-oplossing. 

Note:
- Voor Suricata verander de suricata.yaml op de server met Suricata. Locatie: /etc/suricata/suricata.yaml op lijn 18 (vars -> address-groups -> HOME_NET: "[192.168.2.44/32]") naar IP van server.

- En na installatie verander de ossec.conf op de server met Suricata. Locatie: /var/ossec/etc/ossec.conf op lijn 10 (ossec_config -> client -> server -> address 192.168.2.25) naar het IP-adres van de Wazuh manager.

![image](https://github.com/Jensjee/Afstuderen-SIEM/assets/16975896/74a05d0f-5c9d-4c41-8310-cb67328ccdb0)

Documentatie Wazuh OVA: https://documentation.wazuh.com/current/deployment-options/virtual-machine/virtual-machine.html 

Operating system virtuele machines:
Kali Linux: Debian OS
Suricata: Ubuntu 22.04
Wazuh: Amazon Linux 2

### Installatie Wazuh:

Stap 1: Download OVA van Wazuh: https://packages.wazuh.com/4.x/vm/wazuh-4.5.2.ova

Stap 2: Importeer de OVA in VirtualBox en zet netwerk interface op bridge mode.

Stap 3: Noteer het IP-adres van de Wazuh server, het IP-adres kan opgehaald worden met het commando: ip a.

### Installatie Suricata:

Stap 1:
Download suricata-setup.sh en juice-shop.sh uit de map: Suricata setup en sudo chmod +x beide scripts. (execute rechten)

Stap 2:
run sudo ./suricata-setup.sh en vul IP-adres in van de Wazuh manager.

Stap 3:
Voer de commando's van juice-shop.sh in de terminal voor het installeren van OWASP Juice Shop, Node.js en nvm.

### Installatie Kali Linux:

Stap 1:
Download Kali Linux: https://www.kali.org/get-kali/#kali-installer-images (Installer)

Stap 2:
Installeer Kali Linux op Virtualbox.

Stap 3:
Download kali-setup.sh

Stap 4:
Geef execute rechten: sudo chmod +x kali-setup.sh

Stap 5:
run sudo ./kali-setup.sh
