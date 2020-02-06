export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin
export VIRTUAL_ENV_DISABLE_PROMPT=
export VIRTUALENVWRAPPER_PYTHON=/Users/martin/.pyenv/shims/python
source /usr/local/bin/virtualenvwrapper.sh
alias count="find . -type f | wc -l"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
