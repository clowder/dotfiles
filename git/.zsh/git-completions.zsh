# Homebrew's git ships a bash-wrapper _git that overrides zsh's built-in completion,
# breaking user-commands and _git-* dispatch. Disable it.
# https://github.com/wincent/wincent/blob/main/aspects/dotfiles/files/.zshrc#L38-L42
if [ -e /opt/homebrew/share/zsh/site-functions/_git ]; then
  mv -f /opt/homebrew/share/zsh/site-functions/{,disabled.}_git
fi

fpath=(~/.zsh/completions $fpath)
zstyle ':completion:*:*:git:*' user-commands \
  aside:'Switch to a branch in a temporary worktree' \
  curate:'Interactively review and delete branches' \
  hooks:'Install or remove managed hook symlinks'
