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
echo -e '\e[33mNama Project =\e[55m' HUMANS IA1
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
echo -e "\e[1m\e[32m1. Install Bahan Guys... \e[0m" && sleep 1
wget https://github.com/humansdotai/humans/releases/download/latest/humans_latest_linux_amd64.tar.gz
tar -xvf humans_latest_linux_amd64.tar.gz
export PATH=<path-to-humansd>:$PATH
sudo cp humansd /usr/local/bin/humansd
echo -e "\e[1m\e[32m1. Update  packages Dulu Ya... \e[0m" && sleep 1
sudo apt-get update
sudo apt-get upgrade
sudo apt install git build-essential ufw curl jq snapd --yes
echo -e "\e[1m\e[32m1. Install Goo Dulu... \e[0m" && sleep 1
wget https://golang.org/dl/go1.18.2.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf go1.18.2.linux-amd64.tar.gz
export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export GO111MODULE=on
export PATH=$PATH:/usr/local/go/bin:$HOME/go/bin
echo -e "\e[1m\e[32m1. Dikit Lagi Say... \e[0m" && sleep 1
cd $HOME
git clone https://github.com/humansdotai/humans
cd humans
git checkout v1.0.0
go build -o humansd cmd/humansd/main.go
sudo cp humansd /usr/local/bin/humansd
echo '--------------DONO----------------'
