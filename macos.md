# Setting up a Macbook

This document is a little guide that can be used to setup a fresh MacBook.

# Clone this repo

I usually clone this repo into `~/Projects/mbrochh-dotfiles/src`

# Wipe the machine

Before you wipe your MacBook, you might want to back up the following folders:

```
~/.ssh 
~/.aws 
~/Downloads
~/Documents
```

You might also have a ton of files in `~/Projects`, you can delete all `node_modules` folders like so:

```
find . -name 'node_modules' -type d -prune -print -exec rm -rf '{}' \;
```

Afterwards, compressing the `~/Projects` should not take as much time.

You can count the number of tiles via `find . -type f | wc -l`.

You might want to install things like Standard Notes or Cryptomator on the new machine, first, and make sure that you are still able to login.

Now you can wipe the machine:

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

# Install software via Homebrew

Now that Python 3.6 is in place, you can install all kinds of other software:

`brew install git zsh zsh-completions autojump wget curl gettext imagemagick watchman tmux reattach-to-user-namespace git-crypt tree findutils libyaml readline openssl git-open postgresql`

I got a warning here that Python is already installed, but it seems like it
did indeed install all the above.

and

`brew install --cask alfred google-chrome firefox iterm2 caffeine skitch dropbox slack fantastical numi cryptomator pgadmin4 skype standard-notes visual-studio-code signal telegram`

# Install Dropbox & Cryptomator & Standard Notes

NOTE: I use Dropbox, Cryptomator and Standard Notes and need it as early as
possible when setting up a new machine.

Most people can probably just skip this step.

First you'd want to start Dropbox and login and select which folders shall be
synced. Make sure to sync the Standard Notes folder and the Vault folder and set those to "Local". Wait for it to be fully downloaded.

Once that is done, you can launch Cryptomator and connect it to the Dropbox
Vault.

Finally, you can launch and login to Standard Notes and Cryptomator.

# Install Python and Node

We need to install Python 3.6:

See https://github.com/mbrochh/installing-python/blob/master/README.md

Now install Node:

```
brew install node
npm -g install yarn
```

# Install awscli

I ran into issues when installing awscli via Homebrew, so let's install it via
pip instead:

`sudo pip install awscli`

# Install Elasticsearch

```
brew install --cask homebrew/cask-versions/adoptopenjdk8
brew install elasticsearch@6 kibana@6
npm -g install elasticdump
```

Add this to `~/.bash_profile`:

```
export PATH="/usr/local/opt/elasticsearch@6/bin:$PATH"
```

Troubleshooting:

* If you had a wrong version of elasticsearch installed, first, make sure to uninstall it and then delete all traces:

```
rm -rf /usr/local/etc/elasticsearch
rm -rf /usr/local/var/elasticsearch
rm -rf /usr/local/var/lib/elasticsearch
```

Then re-isntall.

* If you are getting this warning when staring the service: `Cannot open file logs/gc.log due to No such file or directory`, see this issue: https://github.com/elastic/windows-installers/issues/249#issuecomment-523078332

# Setup iTerm2 and zsh

Launch `iTerm2` and change the font size of the `default` profile to `22`.

Now install oh-my-zsh. See https://github.com/robbyrussell/oh-my-zsh

Activate these plugins in `~/.zshrc`:

```
plugins=(git osx autojump python)
```

Add this at the top of `~/bash_profile`:

```
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
```

Open a new terminal and make sure that there are no errors and that it launched
into zsh.

# Tmuxinator

This little bastard is so useful, but the version on homebrow is usually outdated and therefore not compatible with the version of tmux that is on homebrew. Try this instead:

```
sudo gem install tmuxinator
```

# Setup VSCode

Launch VSCode and activate `JavaScript`, `Typescript` and `Python`.

Symlink `settings.json` and `keybindings.json`:

```
cd ~/Library/Application\ Support/Code/User/
rm settings.json
rm keybindings.json
ln -s ~/Projects/mbrochh-dotfiles/src/vscode/settings.json .
ln -s ~/Projects/mbrochh-dotfiles/src/vscode/keybindings.json .
```

The above assumes that you cloned this repo into `~/Projects/mbrochh-dotfiles/src/`.

# Start Postgres App

Use Alfred to start Postgres App and click at the `Initialize` button.

# Enable word-jumping in iTerm

See https://medium.com/@jonnyhaynes/jump-forwards-backwards-and-delete-a-word-in-iterm2-on-mac-os-43821511f0a

# Happy Coding

At this point, your machine should be ready to start working on Python and
React projects.
