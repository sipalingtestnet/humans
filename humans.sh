#!/bin/bash
clear
echo -e "\033[0;33m"
echo "================================"
echo " ███████ ██████  ████████     ";
echo " ██      ██   ██    ██        ";
echo " ███████ ██████     ██        ";
echo "      ██ ██         ██        ";
echo " ███████ ██         ██    	 ";
echo "================================"
echo -e "\e[0m"
echo -e '\e[33mNama Project =\e[55m' HUMANS
echo -e '\e[33mKomunitas Kami =\e[55m' Sipaling Testnet
echo -e '\e[33mChannel Telegram =\e[55m' https://t.me/ssipalingtestnet
echo -e '\e[33mGroup Telegram =\e[55m' https://t.me/diskusisipalingairdrop
echo -e "\e[0m"

sleep 2

echo -e "\e[1m\e[32m1. Install packages... \e[0m" && sleep 1
# update
cd $HOME
sudo apt update && sudo apt upgrade -y
sudo apt install curl tar wget clang pkg-config libssl-dev jq build-essential bsdmainutils git make ncdu gcc git jq chrony liblz4-tool -y
echo -e "\e[1m\e[32m4. InstallGo  \e[0m" && sleep 1
ver="1.19" && \
wget "https://golang.org/dl/go$ver.linux-amd64.tar.gz" && \
sudo rm -rf /usr/local/go && \
sudo tar -C /usr/local -xzf "go$ver.linux-amd64.tar.gz" && \
rm "go$ver.linux-amd64.tar.gz" && \
echo "export PATH=$PATH:/usr/local/go/bin:$HOME/go/bin" >> $HOME/.bash_profile && \
source $HOME/.bash_profile && \
go version
echo -e "\e[1m\e[32m4. Download bahan... \e[0m" && sleep 1
git clone https://github.com/humansdotai/humans
cd humans
git checkout v1
go build -o humansd cmd/humansd/main.go
mv humansd /root/go/bin/humansd
wget -O snapshot.sh https://raw.githubusercontent.com/vinjan23/Testnet.Guide/main/HumanAI/snapshot.sh && chmod +x snapshot.sh && ./snapshot.sh
echo '--------------DONO----------------'
