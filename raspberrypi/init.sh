sudo apt-get update
sudo apt-get upgrade

# Install useful software
sudo apt-get install python-setuptools python-dev zsh tmux polipo tor irssi screen socat libevent-dev libssl-dev ncurses-dev

# Install pip & mercurial
sudo easy_install pip
sudo pip install mercurial

# Install oh-my-zsh
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh

# Copy symlinks
cd $HOME
ln -s mbrochh-dotfiles/.gitconfig .
ln -s mbrochh-dotfiles/.gitignore_global .
ln -s mbrochh-dotfiles/.screenrc .
ln -s mbrochh-dotfiles/raspberrypi/.tmux.conf .
ln -s mbrochh-dotfiles/.bash_aliases .

# install vim
mkdir -p ~/src
cd ~/src
hg clone https://vim.googlecode.com/hg vim
cd vim/src
./configure --enable-pythoninterp --with-features=huge --prefix=$HOME/opt/vim
make && mskr install
mkdir -p ~/bin
cd ~/bin
ln -s $HOME/opt/vim/bin/vim
