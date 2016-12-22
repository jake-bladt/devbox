#! /bin/bash

gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
sudo apt-get update
sudo apt-get install build-essential libssl-dev gettext unzip git -y
\curl -sSL https://get.rvm.io | bash -s stable --rails
