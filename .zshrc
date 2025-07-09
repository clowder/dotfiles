# Use zsh's vcs_info to show git branches in the prompt
autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:git*' formats "%b"
zstyle ':vcs_info:git*' actionformats "%b|%a"

autoload add-zsh-hook
add-zsh-hook precmd vcs_info

setopt prompt_subst
PROMPT="%{%F{yellow}%}%~%{%f%}> "
RPROMPT='%{%F{red}%}${vcs_info_msg_0_}%{%f%}'

export CLICOLOR="Yes" EDITOR="vim"

# Use ripgrep to generate file lists for fzf
export FZF_DEFAULT_COMMAND='rg --files --hidden --no-ignore-vcs --vimgrep'

eval "$(/opt/homebrew/bin/brew shellenv)"

# Use arrow keys with a partially completed command to search history
bindkey '^[[A' history-beginning-search-backward
bindkey '^[[B' history-beginning-search-forward

# Language version managers
eval "$(rbenv init - zsh)"
eval "$(nodenv init -)"
. /opt/homebrew/opt/asdf/libexec/asdf.sh

export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# Postgres tools on our path
export PATH="/Applications/Postgres.app/Contents/Versions/latest/bin:$PATH"

# Enable autocompletion
autoload -Uz compinit
compinit -C

# https://bugs.ruby-lang.org/issues/14009
# https://github.com/rails/rails/issues/38560
# https://github.com/rbenv/ruby-build/issues/1385
export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES

# Optional local config
source ~/.zshrc_local
