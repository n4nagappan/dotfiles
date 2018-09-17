#!/usr/bin/env bash

sudo apt-get update
sudo apt-get install vim
sudo apt-get --assume-yes install cmake \
    build-essential \
    python-minimal \
    python-dev \
    python3 \
    mosh \
		# ngrok \
		# autojump


sudo apt-add-repository ppa:neovim-ppa/stable
sudo apt-get update
sudo apt-get install --assume-yes neovim
