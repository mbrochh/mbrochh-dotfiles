# Get the aliases and functions
if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

if [ -f `brew --prefix`/etc/autojump ]; then
    . `brew --prefix`/etc/autojump
fi

if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi
