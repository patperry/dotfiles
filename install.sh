#!/bin/sh

pushd $HOME >/dev/null

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
mkdir .cabal
if [[ `expr "$OSTYPE" : 'darwin'` ]]; then
    ln -s ../.dotfiles/cabal/config.darwin      .cabal/config
    ln -s .dotfiles/profile.darwin              .profile
else
	ln -s ../.dotfiles/cabal/config.default     .cabal/config
	ln -s .dotfiles/profile.default             .profile
fi

popd >/dev/null

