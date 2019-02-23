DIR := $(shell pwd)

.PHONY: install
install:
	ln -snf $(DIR)/.vimrc $(HOME)/.vimrc
	sudo ln -snf "$(HOME)/.vim" /root/.vim
	sudo ln -snf "$(HOME)/.vimrc" /root/.vimrc

.PHONY: update
update:
	git submodule update --init --recursive
	git submodule foreach git pull --recurse-submodules origin master
