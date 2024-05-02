# Added after MacBook installation
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# Aliases
## Git stuff
alias gpull='git fetch && git log ..origin/"$(git branch --show-current)" | grep NOTE || true && git pull'
alias gn-master='git log master.."$(git branch --show-current)" | grep NOTE'
alias gn-develop='git log develop.."$(git branch --show-current)" | grep NOTE'

# Lazy stuff
alias ld=lazydocker
alias lg=lazygit

# Work stuff
alias cda='code --folder-uri "vscode-remote://attached-container+$(printf "django_art" | xxd -p)/usr/src/theartling-docker/theartling-django"'
alias cremix="code ~/Projects/theartling/theartling-docker/theartling-remix/"
alias crazzle="code ~/Projects/theartling/theartling-docker/theartling-react/"