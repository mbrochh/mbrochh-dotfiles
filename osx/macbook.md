# How to setup my Macbook Pro

This document shall be a list of notes so that I remember all steps taken in order to get up to development speed with my Macbook Pro.

## After installing Mountain Lion::

* Login, download and install latest Command Line Tools: http://adcdownload.apple.com/ios/ios_simulator__resigned/cltools_mountainliondp2_march12.dmg
* Download latest version of Parallels: http://www.parallels.com/download/build/desktop/

Then reinstall a bunch of things:

    brew update
    brew uninstall zsh
    brew install zsh
    brew uninstall python
    brew install python
    sudo easy_install-2.7 pip
    sudo easy_install mercurial
    sudo pip install virtualenv
    sduo pip install virtualenvwrapper
    sudo touch /System/Library/Frameworks/Python.framework/Versions/2.7/lib/python2.7/distutils/__init__.py
    sudo pip install psycopg2
    sudo pip install mysql-python
    sudo pip install PIL

Set PATH to this:

    export PATH=/usr/local/bin:/usr/local/sbin:/usr/local/share/python:$PATH
    # Include user's bin folder.
    if [ -d "$HOME/bin" ] ; then
        export PATH="$HOME/bin:$PATH"
    fi

## In App Store:

* Install XCode (Important!)
* Install Postgres.app (https://postgresapp.com)
* Install Dropbox
* Install Evernote
* Install Skype

## In Browser
* Install iTerm2: http://www.iterm2.com/
* Download Solarized Dark Theme: https://code.google.com/p/iterm2/wiki/ColorGallery
* Install MySQL: http://www.mysql.com/downloads/mysql/
  * Also install the PreferencePane, comes with the same package
  * Start MySQL Server
  * Change root password: http://dev.mysql.com/doc/refman/5.5/en/resetting-permissions.html
* Install pgadmin3: http://pgadmin.org/download/macosx.php
* Install Sequel Pro: http://www.sequelpro.com/download/
* Install Graphviz: http://www.graphviz.org/Download_macos.php
* Install DiffMerge http://sourcegear.com/diffmerge/downloads.php
* Install PyGTK http://macpkg.sourceforge.net/
* Install PCKeyboardHack http://pqrs.org/macosx/keyremap4macbook/extra.html
* Remap CAPS LOCK to ESC: http://stackoverflow.com/questions/127591/using-caps-lock-as-esc-in-mac-os-x

## In terminal::

    # install homebrew
    /usr/bin/ruby -e "$(curl -fsSL https://raw.github.com/gist/323731)"

    # install useful tools
    brew update
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
    brew install stunnel

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

    # I use the virtualenvwrapper plugin that comes with oh-my-zsh
    # It depends on readlink which is different on OSX than on Ubuntu but
    # coreutils contains greadlink which has the expected functionality
    # so I replace the OSX readlink with greadlink via a symlink.
    brew install coreutils
    mkdir -p ~/bin && cd ~/bin && ln -s `which greadlink` readlink

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

    # install ipython notebook prerequisites
    sudo easy_install readline pyzmq pygments tornado
    sudo easy_install https://github.com/ipython/ipython/tarball/master

## Create symlinks to files

    cd $HOME
    ln -s ~/mbrochh-dotfiles/osx/.bash_profile
    ln -s ~/mbrochh-dotfiles/osx/.bashrc
    ln -s ~/mbrochh-dotfiles/osx/.gitconfig

## In terminal::

	# install global packages used by all virtualenvs
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
