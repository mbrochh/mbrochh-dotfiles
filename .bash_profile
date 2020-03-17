export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin:/usr/local/opt/rabbitmq/sbin

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

export PYENV_VIRTUALENVWRAPPER_PREFER_PYVENV="true"
export WORKON_HOME=$HOME/.virtualenvs
pyenv virtualenvwrapper_lazy


