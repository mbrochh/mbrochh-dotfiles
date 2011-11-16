#!/bin/bash
cd $HOME
mkdir bin
mkdir opt

# Essentials
sudo apt-get install git-core git-gui git-doc
sudo apt-get install mercurial
sudo apt-get install ruby1.9.1

# Databases
sudo apt-get install mysql-server
sudo apt-get install sqlite3 libsqlite3-dev

# Development Tools
sudo apt-get install xclip
sudo apt-get install meld
sudo apt-get install graphviz libgraphviz-dev
sudo apt-get install libxml2-dev libxslt-dev
sudo apt-get install libhaml-ruby1.8

# Get PIL working in virtualenvs
sudo apt-get build-dep python-imaging
sudo ln -s /usr/lib/i386-linux-gnu/libfreetype.so /usr/lib/
sudo ln -s /usr/lib/i386-linux-gnu/libz.so /usr/lib/
sudo ln -s /usr/lib/i386-linux-gnu/libjpeg.so /usr/lib/

# Python related
sudo apt-get install python-setuptools
sudo easy_install virtualenv
sudo apt-get install python-pip
sudo pip install virtualenvwrapper
export WORKON_HOME=~/Envs
mkdir -p $WORKON_HOME
source /usr/local/bin/virtualenvwrapper.sh
# The following is already in my .bashrc in mbrochh-dotfiles
# echo "export WORKON_HOME=~/Envs" >> .bashrc
# echo "source /usr/local/bin/virtualenvwrapper.sh" >> .bashrc

# Global Python modules
sudo apt-get build-dep python-mysqldb
sudo pip install mysql-python
sudo pip install sqlparse
sudo pip install configobj

# Crunchyfrog
cd $HOME/opt
hg clone http://crunchyfrog.googlecode.com/hg/ crunchyfrog
cd $HOME/bin
ln -s $HOME/opt/crunchyfrog/crunchyfrog
cd $HOME
# echo "export PATH=$PATH:/home/martin/bin" >> .bashrc
