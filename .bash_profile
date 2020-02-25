export EDITOR="vim"
export FZF_DEFAULT_COMMAND='ag -g ""'
export NODE_PATH="/usr/local/lib/node_modules:$NODE_PATH"
export PATH="/usr/local/bin:/usr/local/sbin:$HOME/.rbenv/bin:$HOME/bin:$PATH"

if [[ -f `brew --prefix`/bin/hub ]]; then
  alias git=hub
fi

eval "$(rbenv init -)"
eval "$(hub alias -s)"

alias jsc="/System/Library/Frameworks/JavaScriptCore.framework/Versions/A/Resources/jsc"

function branch_cleanup {
  for branch in $(git branch --merged | grep -v master | cut -f2 -d/); do
    git branch -D ${branch}
  done
}

function interactive_branch_cleanup {
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
