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


curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash
source ~/.nvm/nvm.sh && nvm install stable && nvm alias defautl stable
