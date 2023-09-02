# docker compose detached 
alias dcu='docker compose up -d'

# easier opening of files with default app
alias open='xdg-open'

# git aliases
alias gs='git status'
alias ga='git add'
alias gaa='git add --all'
alias gc='git commit -m'
alias gl='git log -n 5'
alias gp='git push'

# movement lul (roba2 de por ahi)
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

# aliases 2 always use nvim
alias vi='nvim'
alias vim='nvim'

# tengo que explicarlo?
alias apt='sudo apt'

# crear directorio y subdirectorios
alias mkdir='mkdir -pv'

# do not delete / or prompt if deleting more than 3 files at a time #
alias rm='rm -I --preserve-root'

# Parenting changing perms on / #
alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'
alias chgrp='chgrp --preserve-root'

# become root
alias root='sudo -i'

# olis
alias df='df -H'
alias du='du -ch'
