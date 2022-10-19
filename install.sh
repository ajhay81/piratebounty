#!/usr/bin/env bash
# aryeloji

GREEN='\033[0;32m'
NC='\033[0m'

echo -e "${GREEN}[*] Bug and Penetration Toolkit Installer${NC}"
echo -e "${GREEN}[*] Setting Up Directories${NC}"

echo -e "${GREEN}[*] Installing Essentials${NC}"
sudo apt-get update
sudo apt-get install -y build-essential
sudo apt-get install -y gcc 
sudo apt-get install -y git
sudo apt-get install -y vim 
sudo apt-get install -y wget 
sudo apt-get install -y curl
sudo apt-get install -y awscli
sudo apt-get install -y inetutils-ping 
sudo apt-get install -y make 
sudo apt-get install -y whois 
sudo apt-get install -y python3
sudo apt-get install -y python-pip 
sudo apt-get install -y perl 
sudo apt-get install -y nikto
sudo apt-get install -y dnsutils 
sudo apt-get install -y net-tools
sudo apt-get install -y zsh
sudo apt-get install -y nano
sudo apt-get install -y tmux
echo -e "${GREEN}[*] Essentials installed${NC}"

echo -e "${GREEN}[*] Installing Tools${NC}"
sudo apt install -y nmap
sudo apt install -y recon-ng
sudo apt install -y dnsenum
sudo apt install -y hydra
sudo apt install -y dirb 
sudo apt install -y sqlmap
sudo apt install -y dnsmap
sudo apt install -y wfuzz
sudo apt install -y wpscan
sudo apt install -y joomscan
sudo apt install -y commix
sudo apt install -y theharvester
sudo apt install -y gobuster 
sudo apt install -y subfinder
sudo apt install -y whatweb
sudo apt install -y fierce
sudo apt install -y aircrack-ng
sudo apt install -y john
sudo apt install -y nikto
sudo apt install -y openssh-client

echo -e "${GREEN}[*] Tools installed${NC}"


# Sublist3r
echo -e "${GREEN}[*] Installing Sublist3r${NC}"
cd ~/toolkit 
git clone https://github.com/aboul3la/Sublist3r.git
cd Sublist3r/
pip install -r requirements.txt
ln -s ~/toolkit/Sublist3r/sublist3r.py /usr/local/bin/sublist3r

# knock
echo -e "${GREEN}[*] Installing Knockpy${NC}"
apt-get install -y python-dnspython 
cd ~/toolkit
git clone https://github.com/guelfoweb/knock.git
cd knock
chmod +x setup.py
python setup.py install

# XSStrike
echo -e "${GREEN}[*] Installing XSStrike${NC}"
cd ~/toolkit
git clone https://github.com/s0md3v/XSStrike.git 
cd XSStrike 
apt-get install -y python3-pip 
pip3 install -r requirements.txt 
chmod +x xsstrike.py
ln -sf ~/toolkit/XSStrike/xsstrike.py /usr/local/bin/xsstrike

# SecLists
read -p "Do you want to download SecLists? y/n " -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
    echo -e "${GREEN}[*] Downloading SecLists${NC}"
    cd ~/toolkit/wordlists
    git clone --depth 1 https://github.com/danielmiessler/SecLists.git
fi

# Cleanup
echo -e "${GREEN}[*] Tidying up${NC}"
sudo apt-get clean
