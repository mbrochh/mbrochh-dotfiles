# Dynamically load virtualenvwrapper functions to reduce shell startup
# time.
#
# Copyright 2012 Aron Griffis <aron@arongriffis.com>
# Released under the GNU GPL v3
####################################################################### 

# Python virtualenvwrapper loads really slowly, so load it on demand.
if [[ $(type -t workon) != function ]]; then
  virtualenv_funcs=( workon deactivate mkvirtualenv )

  load_virtualenv() {
    # If these already exist, then virtualenvwrapper won't override them.
    unset -f "${virtualenv_funcs[@]}"

    # virtualenvwrapper doesn't load if PYTHONPATH is set, because the
    # virtualenv python doesn't have the right modules.
    declare _pp="$PYTHONPATH"
    unset PYTHONPATH

    # Attempt to load virtualenvwrapper from its many possible sources...
    _try_source() { [[ -f $1 ]] || return; source "$1"; return 0; }
    _try_source /usr/local/bin/virtualenvwrapper.sh || \
    _try_source /etc/bash_completion.d/virtualenvwrapper || \
    _try_source /usr/bin/virtualenvwrapper.sh 
    declare status=$?
    unset -f _try_source

    # Restore PYTHONPATH
    [[ -n $_pp ]] && export PYTHONPATH="$_pp"

    # Did loading work?
    if [[ $status != 0 || $(type -t "$1") != function ]]; then
      echo "Error loading virtualenvwrapper, sorry" >&2
      return $status
    fi

    # Chain-load the appropriate function
    "$@"
  }

  for v in "${virtualenv_funcs[@]}"; do
    eval "$v() { load_virtualenv $v \"\$@\"; }"
  done
fi
