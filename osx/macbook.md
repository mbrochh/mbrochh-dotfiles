# How to setup my Macbook Pro

This document shall be a list of notes so that I remember all steps taken in order to get up to development speed with my Macbook Pro.

## In App Store:

* Install XCode (Important!)
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
* Install PyGTK http://macpkg.sourceforge.net/

## In terminal::

    # install homebrew
    /usr/bin/ruby -e "$(curl -fsSL https://raw.github.com/gist/323731)"

    # install useful tools
    brew install git
    brew install autojump
    brew install graphviz
    brew install curl
    brew install gettext
    sudo brew link gettext
    brew install imagemagick
    brew install ghostscript
    brew install meld
    brew install libyaml

    # Fixing copy and paste bug in tmux / vim
    brew install reattach-to-user-namespace

    # needed for twitter bootstrap
    brew install nodejs
    curl http://npmjs.org/install.sh | sh 
    npm install recess uglify-js jshint -g
    npm install less --global

    # install zsh
    brew install zsh
    wget --no-check-certificate https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | sh


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
    sudo pip install watchdog

## In terminal

Eventually the screen version that comes with OSX will not work with 265
colors. Therefore you might need to build it from scratch::

    git clone git://git.savannah.gnu.org/screen.git
    cd screen/src
    ./autogen.sh
    ./configure --enable-colors256 --with-sys-screenrc=/etc/screenrc
    make   # I got a lot of warnings here, but they don't seem to matter
    sudo make install

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
* Install PIL: http://devdetails.com/2011/09/20/install-pil-in-a-virtualenv-on-mac-osx-lion/
* Installing meld might be troublesome. You might need to change the owner
  of some locale folder, then run brew link xz
