# Afstuderen-SIEM
 Scripts voor het opzetten van Suricata met OWASP Juice Shop, Wazuh en Kali Linux.

Note:
Voor Suricata verander suricata.yaml  (nano /etc/suricata/suricata.yaml) in vars -> address-groups -> HOME_NET: "[192.168.2.44/32]" naar IP van server.

Voor de Wazuh server maak gebruik van de OVA: https://documentation.wazuh.com/current/deployment-options/virtual-machine/virtual-machine.html
Download link -> https://packages.wazuh.com/4.x/vm/wazuh-4.5.2.ova
En importeer deze in VirtualBox. Zet daarna het netwerk interface op bridge modus.
