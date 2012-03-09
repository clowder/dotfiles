[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

export PATH="/usr/local/share/python:/usr/local/bin:/usr/local/sbin/:$HOME/.rbenv/bin:$HOME/bin:$PATH"
eval "$(rbenv init -)"

export NODE_PATH="/usr/local/lib/node_modules:$NODE_PATH"

export SSHUTLE_PATH="~/oss/sshuttle/"
export PATH="$PATH:$SSHUTLE_PATH"
vpn () {
  sshuttle -r $1 0/0 -v --dns
}

source ~/.local_aliases

alias be="bundle exec "
alias git="hub"
alias mate="mvim"
alias jsc="/System/Library/Frameworks/JavaScriptCore.framework/Versions/A/Resources/jsc"

