#!/usr/bin/env bash

# Setup centralized vim backups
mkdir -p ~/.vim/undo
mkdir -p ~/.vim/backups
mkdir -p ~/.vim/swaps

# Setup vim bundles
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

(
cd ~/.vim/bundle
  if [ -e vim-fugitive ]
  then 
    pushd vim-fugitive && git pull --quiet && popd
  else
    git clone http://github.com/tpope/vim-fugitive.git
  fi
	vim -u NONE -c "helptags vim-fugitive/doc" -c q
)
