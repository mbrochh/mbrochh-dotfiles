# Added after MacBook installation
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
export PATH="/usr/local/bin:$PATH"
eval "$(pyenv init -)"
export PYENV_VIRTUALENVWRAPPER_PREFER_PYVENV="true"

export WORKON_HOME=/Users/martin/.virtualenvs
pyenv virtualenvwrapper_lazy

# Additional things
export PATH="Applications/Postgres.app/Contents/Versions/latest/bin:/usr/local/opt/rabbitmq/sbin:/Users/martin/bin:$PATH"
alias gpull='git fetch && git log ..origin/"$(git branch --show-current)" | grep NOTE || true && git pull'
alias gn-master='git log master.."$(git branch --show-current)" | grep NOTE'
alias gn-develop='git log develop.."$(git branch --show-current)" | grep NOTE'


