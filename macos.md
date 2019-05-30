# Setting up a Macbook

This document is a little guide that can be used to setup a fresh MacBook.

# Clone this repo

I usually clone this repo into `~/Projects/mbrochh-dotfiles/src`

# Wipe the machine

If you start out with an existing machine, you can wipe it like so:

- Boot computer and hold CMD + R
- Select `Disk Util` > `Macintosh HD` > `Erase`
- Then select the option to install or repair the OS

# Install new OS and XCode

After installing the OS, you might want to `update to the latest OS` (i.e Mojave)
by searching for it on the App Store.

After installing the latest OS, you might want to install `XCode` via the
App Store.

After installing XCode, just open it and `accept the license agreement`, then
enter this into the terminal: `xcode-select --install`.

# Copy .ssh and .aws folders from backup

Surely you made a backup of your old `~/.ssh` and `~/.aws` folders? Copy them
back into your home folder now!

# Install Homebrew

Next you want to install Homebrew. See https://brew.sh/

Now you can install all the software:

`brew install git zsh zsh-completions autojump wget curl gettext imagemagick watchman tmux reattach-to-user-namespace git-crypt tree awscli`

and

`brew cask install alfred google-chrome firefox iterm2 caffeine skitch dropbox slack fantastical numi notion cryptomator postgres pgadmin4 skype standard-notes visual-studio-code`

# Install Dropbox & Cryptomator & Standard Notes

I use Dropbox, Cryptomator and Standard Notes and need it as early as possible when setting up a new machine.

Most people can probably just skip this step.

First you'd want to start Dropbox and login and select which folders shall be
synced.

Once that is done, you can launch Cryptomator and connect it to the Dropbox
vault.

Finally, you can launch and login to Standard Notes.

# Setup iTerm2 and zsh

Launch `iTerm2` and change the font size of the `default` profile to `22`.

Now install oh-my-zsh. See https://github.com/robbyrussell/oh-my-zsh

Activate these plugins in `~/.zshrc`:

```
plugins=(git virtualenv osx autojump python)
```

Create a `~/bash_profile`:

```
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
```

And add this line to `~/.zshrc`:

```
source ~/.bash_profile
```

Open a new terminal and make sure that there are no errors and that it launched
into zsh.

# Install Python and Node

We need to install Python 3.6:

`brew install --ignore-dependencies https://raw.githubusercontent.com/Homebrew/homebrew-core/f2a764ef944b1080be64bd88dca9a1d80130c558/Formula/python.rb`

Now we need to make sure that Python 3.6 is mapped to `python`. And when we
are at it, we can also make sure that `psql` is in the PATH.

Add this to `~/.bash_profile`:

```
export PATH=/usr/local/opt/python/libexec/bin:$PATH
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin
```

Now install Node:

```
brew install node
npm -g install yarn
```

# Install virtualenv and virtualenvwrapper

Make sure to `source ~/.zshrc` so that `python` is launching Python 3.6.
Now you can install virtualenv:

```
sudo pip install pip —upgrade
sudo pip install virtualenv
sudo pip install virtualenvwrapper
sudo pip install virtualenvwrapper
```

And update `~/.bash_profile`:

```
export VIRTUAL_ENV_DISABLE_PROMPT=
source /usr/local/bin/virtualenvwrapper.sh
```

Open a new terminal and make sure that it doesn't show any errors and that
you can execute `workon`.

# Setup VSCode

Launch VSCode and activate `JavaScript`, `Typescript` and `Python`.

Symlink `settings.json`:

```
cd ~/Library/Application\ Support/Code/User/
rm settings.json
ln -s ~/Projects/mbrochh-dotfiles/src/vscode/settings.json
```

# Start Postgres App

Use Alfred to start Postgres App and click at the `Initialize` button.

# Happy Coding

At this point, your machine should be ready to start working on Python and
React projects.
