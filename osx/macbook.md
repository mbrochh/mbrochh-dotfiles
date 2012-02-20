# How to setup my Macbook Pro

This document shall be a list of notes so that I remember all steps taken in order to get up to development speed with my Macbook Pro.

## In App Store:

* Install XCode (Important!)
* Install Mou
* Install Dropbox
* Install Evernote
* Install Skype

## In Browser
* Install MacVim: http://code.google.com/p/macvim/
* Install MySQL: http://www.mysql.com/downloads/mysql/
  * Also install the PreferencePane, comes with the same package
  * Start MySQL Server
  * Change root password: http://dev.mysql.com/doc/refman/5.5/en/resetting-permissions.html
* Install PostgreSQL: http://www.postgresql.org/download/macosx/ (see notes
  about sysctl.conf in README before installing and reboot)
* Install pgadmin3: http://pgadmin.org/download/macosx.php
* Install Sequel Pro: http://www.sequelpro.com/download/
* Install Graphviz: http://www.graphviz.org/Download_macos.php
* Install DiffMerge http://sourcegear.com/diffmerge/downloads.php

## In terminal::

    # install homebrew
    /usr/bin/ruby -e "$(curl -fsSL https://raw.github.com/gist/323731)"

    # install useful tools
    brew install autojump
    brew install graphviz
    brew install curl

    # install fabric completion
    brew install bash-completion
    cd /usr/local/etc/bash_completion.d
    wget https://github.com/marcelor/fabric-bash-autocompletion/raw/master/fab

	# install pip
    sudo easy_install pip

	# install virtualenv
	sudo pip install virtualenv
	sudo pip install virtualenvwrapper
	export WORKON_HOME=~/Envs
	source /usr/local/bin/virtualenvwrapper.sh

## Create symlinks to files

    cd $HOME
    ln -s ~/mbrochh-dotfiles/osx/.bash_profile
    ln -s ~/mbrochh-dotfiles/osx/.bashrc
    ln -s ~/mbrochh-dotfiles/osx/.gitconfig

## In terminal::

	# install global packages used by all virtualenvs
	sudo pip install ipython
	sudo pip install ipdb
	sudo pip install mysql-python
	sudo pip install pillow

## Misc

* If you need graphviz in one of your venvs, try ``pip install pygraphviz``.
  It will fail but you will see a pygraphviz folder in your
  ``~/Envs/envname/build/`` folder. Open it's ``setup.py`` and uncomment
  the lines for OSX. Try ``pip install`` again.
* sudo nano /usr/local/bin/mvim and make sure that the line with the variable
  is commented out and we use the variable set in .bashrc
* You might need to change the ``default-storage-engine`` in your
  ``/etc/my.cnf`` to ``MyISAM``.
* Import solarized terminal colors from here:
  https://github.com/altercation/solarized/tree/master/osx-terminal.app-colors-solarized/xterm-256color
