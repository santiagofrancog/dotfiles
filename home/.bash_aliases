alias ghelp='cat ~/.gitconfig | grep'
alias vimhelp='cat ~/.bash/.vimcheatsheet | grep'

# Work aliases
if [ -f ~/.bash/.work_aliases ]; then
    . ~/.bash/.work_aliases
fi

# Other
alias p='ps -efH | grep -v grep | grep'