#!/usr/bin/env bash
# aryeloji

GREEN='\033[0;32m'
NC='\033[0m'

echo -e "${GREEN}[*] Bug Bounty Toolkit Installer${NC}"
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
sudo apt-get install -y nmap 
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
