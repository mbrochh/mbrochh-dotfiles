# Manual steps:
# Remap Capslock
# Install XCode, Color Picker, Affinity, Freckle
# add .gitconfig

# Automates steps:
# Install Homebrew and other core tools
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install node python git zsh zsh-completions autojump wget curl gettext imagemagick watchman tmux reattach-to-user-namespace git-crypt tree awscli
pip2 install virtualenv virtualenvwrapper ipdb pillow pipenv
sudo gem install tmuxinator

# add stuff to .bash_profile:
echo 'export LANG=en_US.UTF-8' >> ~/.bash_profile
echo 'export LC_ALL=en_US.UTF-8' >> ~/.bash_profile
echo '' >> ~/.bash_profile
echo 'export PATH="/usr/local/opt/python/libexec/bin:$PATH"' >>~/.bash_profile
echo 'export PATH="/usr/local/opt/gettext/bin:$PATH"' >>~/.bash_profile
echo '' >> ~/.bash_profile
echo 'export VIRTUAL_ENV_DISABLE_PROMPT=' >>~/.bash_profile
echo 'export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python2' >>~/.bash_profile
echo 'export WORKON_HOME=$HOME/.virtualenvs' >>~/.bash_profile
echo 'export PIP_VIRTUALENV_BASE=$WORKON_HOME' >>~/.bash_profile
echo 'export PIP_RESPECT_VIRTUALENV=true' >>~/.bash_profile
echo 'source /usr/local/bin/virtualenvwrapper.sh' >>~/.bash_profile

# Install gui programs
brew cask install alfred google-chrome firefox atom iterm2 caffeine skitch dropbox evernote slack fantastical numi notion cryptomator postgres pgadmin4 skype

# Installing tools
pip install yapf
npm install -g yarn
npm install -g git-open

# Setting up atom
apm install intantions busy-signal linter linter-ui-default autocomplete-python jsx-comment prettier-atom python-yapf react sort-lines symbols-tree-view vim-mode-plus atom-beautify highlight-selected autocomplete-modules hyperclick js-hyperclick pigments relative-numbers

# Setup zsh
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh
chsh -s /usr/local/bin/zsh

# Manual:
# Edit ~/.zshrc
# Set ZSH_THEME="pygmalion"
# Set plugins=(autojump git colored-man colorize github vagrant virtualenv pip python osx zsh-syntax-highlighting)
# Add "source ~/.bash_profile"
# Add "source ~/.bash_aliases" (use file from osx/.bash_aliases)

# Manual:
# Configure Atom > python-yapf: Yapf Style: {based_on_style: google, column_limit: 79}
# Configure Atom > python-yapf: Format On Save: On 
# Configure Atom > prettier-atom: ESLint Integration: On 
# Configure Atom > prettier-atom: Format Files On Save: On 
# Configure Atom > prettier-atom: Single Quotes: On 
# Configure Atom > prettier-atom: Bracket Spacing: On 
# Configure Atom > prettier-atom: Semicolons: Off
# Configure Atom > prettier-atom: Trailing Comma: es5
# Copy .tmux.conf from github

# Manual:
# Add Keymap to Atom:
# 'atom-text-editor':
#   'cmd-r': 'sort-lines:sort'

# Add Snippets to Atom:
# '.source.python':
#  'Breakpoint':
#    'prefix': 'bp'
#    'body': 'import ipdb; ipdb.set_trace() # BREAKPOINT'

# Set KeyRepeat and logout/login
# defaults write NSGlobalDomain KeyRepeat -float 1
