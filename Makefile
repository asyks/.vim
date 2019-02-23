DIR := $(shell pwd)

.PHONY: install
install: update
	ln -snf $(DIR)/.vimrc $(HOME)/.vimrc
	sudo ln -snf "$(HOME)/.vim" /root/.vim
	sudo ln -snf "$(HOME)/.vimrc" /root/.vimrc
	git submodule init

.PHONY: update
update:
	git submodule update --init --recursive
	git submodule foreach git pull --recurse-submodules origin master
