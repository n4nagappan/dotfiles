#!/usr/bin/env bash

cd "$(dirname "${BASH_SOURCE}")";

git pull origin master;

function doIt() {
	rsync --exclude ".git/" \
		--exclude "README.md" \
		--exclude "install-vundle.sh" \
		--exclude "bootstrap.sh" \
		--exclude "LICENSE-MIT.txt" \
		--exclude "**.swp" \
		-avh --no-perms . ~;
  git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
  vim +PluginInstall +qall

  # make sure python is installed
  # https://gist.github.com/n4nagappan/e99856bcb6d670ac2ea0f066113074bc
  # ycmd setup
  cd ~/.vim/bundle/YouCompleteMe/
  ./install.py

	source ~/.bashrc;
}

if [ "$1" == "--force" -o "$1" == "-f" ]; then
	doIt;
else
	read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1;
	echo "";
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		doIt;
	fi;
fi;
unset doIt;
