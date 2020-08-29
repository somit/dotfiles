# Pipe my public key to my clipboard.
alias pubkey="more ~/.ssh/id_rsa.pub | pbcopy | echo '=> Public key copied to pasteboard.'"

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


# Git
alias g="git"
alias gst="git status"
alias glgg="git log --graph --max-count=5"
alias gd="git diff"
alias gl="git pull"
alias gp="git push"
alias ga="git add"
alias gc="git commit -m $1"
alias gca="git add . && git commit -m  $1"
alias gam="git add . && git commit --amend --no-edit"
alias ggpush="git push origin $(current_branch)"
alias ggpull='f(){ git pull $1 ${current_branch}};f'
alias grh="git reset HEAD"
alias gitall='f(){git add . && git commit -m $1 && git push origin $(current_branch)};f'

# Shortcuts
alias reload="exec ${SHELL} -l"
alias shrug="echo '¯\_(ツ)_/¯' | pbcopy"
alias c="clear"
alias diskspace="df -P -kHl"


	# DNS
alias use_google_dns='networksetup -setdnsservers Wi-Fi 8.8.8.8 8.8.4.4'
alias use_cloudflare_dns='networksetup -setdnsservers Wi-Fi 1.1.1.1 1.0.0.1'
	# Flush Directory Service cache
alias reloaddns="dscacheutil -flushcache && sudo killall -HUP mDNSResponder"

#IPS
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ipconfig getifaddr en0"
alias ips="ifconfig -a | grep -o 'inet6\? \(addr:\)\?\s\?\(\(\([0-9]\+\.\)\{3\}[0-9]\+\)\|[a-fA-F0-9:]\+\)' | awk '{ sub(/inet6? (addr:)? ?/, \"\"); print }'"

	# Show active network interfaces
alias ifactive="ifconfig | pcregrep -M -o '^[^\t:]+:([^\n]|\n\t)*status: active'"

#Utility
alias urlencode='python -c "import sys, urllib as ul; print ul.quote_plus(sys.argv[1]);"'

# Pretty print the path
alias path='echo $PATH | tr -s ":" "\n"'


#find service on port
alias whatisrunning="netstat -vanp tcp | grep $1"


# Include custom aliases
if [[ -f ~/.aliases.local ]]; then
  source ~/.aliases.local
fi