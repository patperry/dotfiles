#!/bin/sh

pushd $HOME
rm -rf .bash         && ln -s .dotfiles/bash      .bash
rm -f  .bash_aliases && ln -s .bash/bash_aliases  .bash_aliases
rm -f  .bash_profile && ln -s .bash/bash_profile  .bash_profile
rm -f  .bashrc       && ln -s .bash/bashrc        .bashrc

rm -f  .gitconfig    && ln -s .dotfiles/gitconfig .gitconfig
rm -f  .gitignore    && ln -s .dotfiles/gitignore .gitignore
rm -rf .vim          && ln -s .dotfiles/vim       .vim
rm -f  .vimrc        && ln -s .vim/vimrc          .vimrc

rm -rf .cabal
rm -f  .profile
if [[ `expr "$OSTYPE" : 'darwin'` ]]; then
	ln -s .dotfiles/cabal.darwin     .cabal
	ln -s .dotfiles/profile.darwin   .profile
else
	ln -s .dotfiles/cabal.default     .cabal
	ln -s .dotfiles/profile.default   .profile
fi

popd

