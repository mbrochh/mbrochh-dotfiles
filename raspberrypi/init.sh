sudo apt-get update
sudo apt-get upgrade

# Install useful software
sudo apt-get install zsh tmux

# Install oh-my-zsh
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh

# Copy symlinks
cd $HOME
ln -s mbrochh-dotfiles/.gitconfig .
ln -s mbrochh-dotfiles/.gitignore_global .
ln -s mbrochh-dotfiles/.screenrc .
ln -s mbrochh-dotfiles/raspberrypi/.tmux.conf .
ln -s mbrochh-dotfiles/.bash_aliases .
