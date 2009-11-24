#!/bin/sh

pushd $HOME
rm -f  .Rprofile     && ln -s .dotfiles/Rprofile  .Rprofile
rm -rf .bash         && ln -s .dotfiles/bash      .bash
rm -f  .bash_profile && ln -s .bash/bash_profile  .bash_profile
rm -rf .cabal        && ln -s .dotfiles/cabal     .cabal
rm -f  .gitconfig    && ln -s .dotfiles/gitconfig .gitconfig
rm -f  .gitignore    && ln -s .dotfiles/gitignore .gitignore
rm -rf .mutt         && ln -s .dotfiles/mutt      .mutt
rm -f  .muttrc       && ln -s .mutt/muttrc        .muttrc
rm -f  .profile      && ln -s .dotfiles/profile   .profile
rm -rf .vim          && ln -s .dotfiles/vim       .vim
rm -f  .vimrc        && ln -s .vim/vimrc          .vimrc
popd

