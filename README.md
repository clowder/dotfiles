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
    $ ln -sf $PWD/.agignore ~/
    $ ln -sf $PWD/.zshrc ~/
    $ ln -sf $PWD/.gemrc ~/
    $ ln -sf $PWD/.gitconfig ~/
    $ ln -sf $PWD/.gitignore_global ~/
    $ ln -sf $PWD/.hammerspoon ~/
    $ ln -sf $PWD/.hushlogin ~/
    $ ln -sf $PWD/.inputrc ~/
    $ ln -sf $PWD/.vimrc ~/
    ```
4. Create some local cruft:
    ```shell
    $ touch ~/.zshrc_local
    $ mkdir -p ~/.vim/{tmp,backup}
    ```
5. Install Vim plugins
    ```vim
    :call minpac#update()
    ```
