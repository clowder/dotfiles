# Installation

1. Install Homebrew'd packages
    ```shell
    $ brew bundle
    ```
2. Install minpac
    ```shell
    $ mkdir -p ~/.vim/pack/minpac/opt
    $ git clone https://github.com/k-takata/minpac.git ~/.vim/pack/minpac/opt/minpac
    ```
3. Symlink
    ```shell
    stow -vv --target=$HOME zsh git vim mise misc agents
    stow -vv --target=$HOME --no-folding llm-wiki
    ```
4. Create some local cruft:
    ```shell
    $ touch ~/.zshrc_local
    $ mkdir -p ~/.vim/{tmp,backup,undo}
    ```
5. Install Vim plugins
    ```vim
    :call minpac#update()
    ```
6. Bootstrap llm-wiki
    ```shell
    $ ~/llm-wiki/setup
    ```
