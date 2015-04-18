export EDITOR="vim"
export PATH="/usr/local/share/python:/usr/local/bin:/usr/local/sbin/:$HOME/.rbenv/bin:$HOME/bin:$PATH"

if [[ -f `brew --prefix`/bin/hub ]]; then
  alias git=hub
fi

if [[ -f `brew --prefix`/etc/bash_completion ]]; then
  source `brew --prefix`/etc/bash_completion
fi

eval "$(rbenv init -)"
eval "$(hub alias -s)"

export NODE_PATH="/usr/local/lib/node_modules:$NODE_PATH"

alias jsc="/System/Library/Frameworks/JavaScriptCore.framework/Versions/A/Resources/jsc"

pg_start() {
  pg_ctl -D "/usr/local/var/postgres" -l "/usr/local/var/postgres/server.log" start
}

pg_stop() {
  pg_ctl -D "/usr/local/var/postgres" stop -s -m fast
}

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
  for branch in $(git branch --merged | grep -v master | cut -f2 -d/); do
    git branch -D ${branch}
  done
}

function agressive_branch_cleanup_local {
  for branch in $(git branch --no-merged | grep -v master | cut -f2 -d/); do
    info=`git show --format="authored by %an %ar" $branch | head -n1`
    read -p "Delete '$branch' $info? (Y/N): " -n 1 -r

    echo ""

    if [[ ! $REPLY =~ ^[yY]$ ]]; then
      echo "Skipping..."
    else
      git branch -D ${branch}
    fi
  done
}

source ~/.local_profile
