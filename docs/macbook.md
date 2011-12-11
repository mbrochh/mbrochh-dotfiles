# How to setup my Macbook Pro

This document shall be a list of notes so that I remember all steps taken in order to get up to development speed with my Macbook Pro.

## In App Store:

* Install XCode
* Install Mou
* Install Dropbox
* Install Evernote
* Install Skype

## In terminal::

    sudo easy_install pip
	sudo pip install virtualenv
	sudo pip install virtualenvwrapper
	export WORKON_HOME=~/Envs
	source /usr/local/bin/virtualenvwrapper.sh

## Create files

**~/.bashrc**::
    
    # git
    export GIT_SSL_NO_VERIFY=true 

    # virtualenvwrapper
    export WORKON_HOME=~/Envs
    source /usr/local/bin/virtualenvwrapper.sh

**~/.bash_profile**::

    # Get the aliases and functions
    if [ -f ~/.bashrc ]; then
        . ~/.bashrc
    fi

