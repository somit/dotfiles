

# Easier navigation: .., ..., ~ and -
alias ..="cd .."
alias cd..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

# mv, rm, cp
alias mv='mv -v'
alias rm='rm -i -v'
alias cp='cp -v'

alias l='ls -1'
alias la='ls -al'
alias lf='ls -lF'
alias ll='ls -l'
alias lt='ls -altr'


# Directories
alias dotfiles="cd $DOTFILES"
alias library="cd $HOME/Library"
alias work="cd $HOME/apps"


# Shortcuts
alias copyssh="pbcopy < $HOME/.ssh/"
alias reloadshell="source $HOME/.zshrc"
alias reloaddns="dscacheutil -flushcache && sudo killall -HUP mDNSResponder"
alias shrug="echo '¯\_(ツ)_/¯' | pbcopy"
alias c="clear"
alias diskspace="df -P -kHl"


# Git
alias gs="git status"
alias gd="git diff"
alias pull="git pull"
alias push="git push"
alias add="git add"
alias commit="git commit -m"
alias commitall="git add . && git commit -m"
alias amend="git add . && git commit --amend --no-edit"



# Pretty print the path
alias path='echo $PATH | tr -s ":" "\n"'


# Include custom aliases
if [[ -f ~/.aliases.local ]]; then
  source ~/.aliases.local
fi


