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

# Use the_siver_searcher to generate file lists for fzf
export FZF_DEFAULT_COMMAND='ag -g ""'

# Use arrow keys with a partially completed command to search history
bindkey '^[[A' history-beginning-search-backward
bindkey '^[[B' history-beginning-search-forward

# Use rbenv for managing Ruby versions
eval "$(rbenv init - zsh)"

# Enable autocompletion
autoload -Uz compinit
compinit -C

# Optional local config
source ~/.zshrc_local

# ruby-build installs a non-Homebrew OpenSSL for each Ruby version installed
# and these are never upgraded.
#
# To link Rubies to Homebrew's OpenSSL 1.1 (which is upgraded) add the following
# to your ~/.zshrc:
#
# Note: this may interfere with building old versions of Ruby (e.g <2.4) that use
# OpenSSL <1.1.
export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)"
