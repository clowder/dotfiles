# Installation

1. Install minpac
  ```
  mkdir -p ~/.vim/pack/minpac/opt
  git clone https://github.com/k-takata/minpac.git ~/.vim/pack/minpac/opt/minpac
  ```

2. Symlink
  ```
  ln -sf ~/code/clowder/dotfiles/.agignore ~/
  ln -sf ~/code/clowder/dotfiles/.bash_profile ~/
  ln -sf ~/code/clowder/dotfiles/.gemrc ~/
  ln -sf ~/code/clowder/dotfiles/.gitconfig ~/
  ln -sf ~/code/clowder/dotfiles/.gitignore_global ~/
  ln -sf ~/code/clowder/dotfiles/.hammerspoon ~/
  ln -sf ~/code/clowder/dotfiles/.hushlogin ~/
  ln -sf ~/code/clowder/dotfiles/.inputrc ~/
  ln -sf ~/code/clowder/dotfiles/.vimrc ~/
  ```

3. Install Vim plugins
  ```
  :call minpack#update()
  ```
