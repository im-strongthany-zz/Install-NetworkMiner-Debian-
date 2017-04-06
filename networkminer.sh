#!/bin/bash

sudo apt-get install libmono-system-windows-forms4.0-cil
sudo apt-get install libmono-system-web4.0-cil
wget www.netresec.com/?download=NetworkMiner -O /tmp/nm.zip
sudo unzip /tmp/nm.zip -d /opt/
cd /opt/NetworkMiner*
sudo chmod +x NetworkMiner.exe
sudo chmod -R go+w AssembledFiles/
sudo chmod -R go+w Captures/

cat > /usr/bin/networkminer <<EOF
#!/bin/bash
mono /opt/NetworkMiner_2-1-1/NetworkMiner.exe
EOF

chmod +x /usr/bin/networkminer


#Credit to Parker Seaman & Tyler Gross(Tyler tought me how to put it in bin)
