export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin:/usr/local/opt/rabbitmq/sbin:/Users/martin/bin

alias gpull='git fetch && git log ..origin/"$(git branch --show-current)" | grep NOTE || true && git pull'

alias gn-master='git log master.."$(git branch --show-current)" | grep NOTE'
alias gn-develop='git log develop.."$(git branch --show-current)" | grep NOTE'


if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

export PYENV_VIRTUALENVWRAPPER_PREFER_PYVENV="true"
export WORKON_HOME=$HOME/.virtualenvs
pyenv virtualenvwrapper_lazy


