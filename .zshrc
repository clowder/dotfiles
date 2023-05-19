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

# Turn OFF Homebrew auto-updating
export HOMEBREW_NO_AUTO_UPDATE=1
eval "$(/opt/homebrew/bin/brew shellenv)"

# Use arrow keys with a partially completed command to search history
bindkey '^[[A' history-beginning-search-backward
bindkey '^[[B' history-beginning-search-forward

# Use rbenv for managing Ruby versions
eval "$(rbenv init - zsh)"

# Postgres tools on our path
export PATH="/Applications/Postgres.app/Contents/Versions/latest/bin:$PATH"

# Enable autocompletion
autoload -Uz compinit
compinit -C

export N_PREFIX="$HOME/.n"
export PATH="$N_PREFIX/bin:$PATH"

# ruby-build installs a non-Homebrew OpenSSL for each Ruby version installed
# and these are never upgraded.
#
# To link Rubies to Homebrew's OpenSSL 1.1 (which is upgraded) add the following
# to your ~/.zshrc:
#
# Note: this may interfere with building old versions of Ruby (e.g <2.4) that use
# OpenSSL <1.1.
export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)"

# https://bugs.ruby-lang.org/issues/14009
# https://github.com/rails/rails/issues/38560
# https://github.com/rbenv/ruby-build/issues/1385
export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES

# Optional local config
source ~/.zshrc_local
