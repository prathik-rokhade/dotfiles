#!/usr/bin/env bash

db="~/Documents/Dropbox/dotfiles"

function remove_existing {
  cd ~
  rm .bashrc
  rm .profile
  rm .bash_profile
  rm .gitconfig
  rm .gitignore;
  rm .vimrc
  rm .aliases
  #rm .tmux.conf  ; rm .tmux-osx.conf
  rm .bashrc
  rm .bash_profile
  ln -s ~/dev/dotfiles/bash/bashrc .bashrc
  ln -s ~/dev/dotfiles/bash/profile .profile
  ln -s ~/dev/dotfiles/git/gitconfig .gitconfig
  ln -s ~/dev/dotfiles/git/gitignore .gitignore
  ln -s ~/dev/dotfiles/bash/aliases .aliases
  mkdir .vim
  ln -s ~/dev/dotfiles/vim/vimrc .vimrc
  ln -s ~/dev/dotfiles/vim/plugins.vim .vim/plugins.vim
  ln -s ~/dev/dotfiles/vim/plugin_settings.vim .vim/plugin_settings.vim
  ln -s ~/dev/dotfiles/vim/settings.vim .vim/settings.vim
  ln -s ~/dev/dotfiles/vim/keybindings.vim .vim/keybindings.vim
  ln -s ~/dev/dotfiles/vim/functions.vim .vim/functions.vim
}

function bash {
  ln -s $db/bash/bashrc ~/.bashrc
  ln -s $db/bash/profile ~/.profile
  ln -s $db/bash/aliases ~/.aliases
}

function git {
  ln -s $db/git/gitconfig ~/.gitconfig
  ln -s $db/git/gitignore ~/.gitignore
}

function vim {
  ln -s $db/vim/vimrc ~/.vimrc
  mkdir ~/.vim
  ln -s $db/vim/plugins.vim ~/.vim/plugins.vim
  ln -s $db/vim/plugin_settings.vim ~/.vim/plugin_settings.vim
  ln -s $db/vim/settings.vim ~/.vim/settings.vim
  ln -s $db/vim/keybindings.vim ~/.vim/keybindings.vim
  ln -s $db/vim/functions.vim ~/.vim/functions.vim
}

function lein {
  ln -s $db/lein ~/.lein
}

function tmux {
  ln -s $db/tmux/tmux.conf ~/.tmux.conf
  ln -s $db/tmux/tmux.conf ~/.tmux-osx.conf
  ln -s $db/tmux/osx.tmux ~/.tmux/osx.tmux
  ln -s $db/tmux/keybindings.tmux keybindings.tmux
  ln -s $db/tmux/settings.tmux settings.tmux
  ln -s $db/tmux/theme.tmux theme.tmux
  ln -s $db/tmux/plugins.tmux plugins.tmux
}

function sublime_text {
  echo "/Users/john.skilbeck/Library/Application Support/Sublime Text 3/Packages/User"
}


remove_existing
bash
git
vim
lein
tmux

exit


