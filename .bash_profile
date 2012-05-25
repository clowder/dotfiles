export PATH="/usr/local/share/python:/usr/local/bin:/usr/local/sbin/:$HOME/.rbenv/bin:$HOME/bin:$PATH"

if [[ -f `brew --prefix`/etc/bash_completion ]]; then
  source `brew --prefix`/etc/bash_completion
fi

eval "$(rbenv init -)"
eval "$(hub alias -s)"

export NODE_PATH="/usr/local/lib/node_modules:$NODE_PATH"

alias be="bundle exec "
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

function branch_cleanup_local {
  for branch in $(git branch --merged master | grep -v master | cut -f2 -d/); do
    git branch -d ${branch}
  done
}

source ~/.local_profile
