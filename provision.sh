#! /bin/bash

gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
sudo apt-get update
sudo apt-get install build-essential libssl-dev gettext unzip git python-pip  python-dev -y
\curl -sSL https://get.rvm.io | bash -s stable --rails
sudo pip install virtualenv virtualenvwrapper
sudo pip install --upgrade pip

printf '\n%s\n%s\n%s' '# virtualenv' 'export WORKON_HOME=~/virtualenvs' \
'source /usr/local/bin/virtualenvwrapper.sh' >> ~/.bashrc
source ~/.bashrc
