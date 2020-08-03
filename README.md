📜 

# Dot files

## Configuring Neovim

```sh
touch ~/.config/nvim/init.vim
# paste content of vim/init.vim
```

### Install VimPlug

```sh
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

```sh
nvim ~/.config/nvim/init.vim
```

### Plugins

:PlugInstall to install plugins and :PlugClean to clean Plugins.


## Neovim Commands

### Vim Commentary

gc + ➡️ ⬅️ ⬆️ ⬇️

## Git usefull commands

Join staged files with the last commit

```
git add .
git commit --amend --no-edit
```
