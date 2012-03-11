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

rspec_config() {
  export CWD=`pwd`
  export RSPEC_CONFIG="$CWD/.rspec"

  [[ ! -f $RSPEC_CONFIG ]] && echo "--color" > $RSPEC_CONFIG
}

autotest_config() {
  export CWD=`pwd`
  export AUTOTEST_DIR="$CWD/autotest"
  export AUTOTEST_CONFIG="$AUTOTEST_DIR/discover.rb"

  [[ ! -d "$AUTOTEST_DIR" ]] && mkdir $AUTOTEST_DIR
  [[ ! -f "$AUTOTEST_CONFIG" ]] && echo "Autotest.add_discovery { \"rspec2\" }" > $AUTOTEST_CONFIG
}
