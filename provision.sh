#! /bin/bash

gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
sudo apt-get update

#pip
sudo apt-get install build-essential libssl-dev gettext unzip git python-pip  python-dev -y \
   apt-transport-https ca-certificates

#rvm
\curl -sSL https://get.rvm.io | bash -s stable --rails

#virtualenv
sudo pip install virtualenv virtualenvwrapper
sudo pip install --upgrade pip

printf '\n%s\n%s\n%s' '# virtualenv' 'export WORKON_HOME=~/virtualenvs' \
'source /usr/local/bin/virtualenvwrapper.sh' >> ~/.bashrc
source ~/.bashrc

#docker
sudo apt-key adv \
               --keyserver hkp://ha.pool.sks-keyservers.net:80 \
               --recv-keys 58118E89F3A912897C070ADBF76221572C52609D

echo "deb https://apt.dockerproject.org/repo ubuntu-trusty main" | sudo tee /etc/apt/sources.list.d/docker.list
sudo apt-get update
apt-cache policy docker-engine
sudo apt-get install docker-engine -y
sudo usermod -aG docker $USER

# configure for github
cp /vagrant/id_rsa ~/.ssh/id_rsa
cp /vagrant/id_rsa.pub ~/.ssh/id_rsa.pub

git config --global user.name "Jake Bladt"
git config --global user.email "jake@jakebladt.com"

# nodejs
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo apt-get install -y nodejs

# java
sudo apt-get install -y default-jdk 

# scala
wget http://www.scala-lang.org/files/archive/scala-2.11.6.deb
sudo dpkg -i scala-2.11.6.deb
sudo apt-get update
sudo apt-get install scala

# haskell
sudo apt-get install -y software-properties-common
sudo add-apt-repository -y ppa:hvr/ghc
sudo apt-get update
sudo apt-get install -y cabal-install-1.22 ghc-7.10.3
cat >> ~/.bashrc <<EOF
export PATH="\$HOME/.cabal/bin:/opt/cabal/1.22/bin:/opt/ghc/7.10.3/bin:\$PATH"
EOF
export PATH=~/.cabal/bin:/opt/cabal/1.22/bin:/opt/ghc/7.10.3/bin:$PATH

# For image-svc-agency
# aws-cli
sudo pip install --upgrade awscli

# aws-sdk (python, node)
pip install boto
npm install -g aws-sdk

# chalice, pillow, gulp

# configure with IAM key
mkdir ~/.aws
cp /vagrant/awssecrets.txt ~/.aws/credentials

# todo - fix guest extensions

# maybe - install clojure
# maybe - install go
# maybe - install swift
# maybe - install rust
