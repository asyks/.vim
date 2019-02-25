DIR := $(shell pwd)
UNAME := $(shell uname -s)

.PHONY: install
install:
	ln -snf $(DIR)/.vimrc $(HOME)/.vimrc
ifeq ($(UNAME),Linux)
	sudo ln -snf "$(HOME)/.vim" /root/.vim
	sudo ln -snf "$(HOME)/.vimrc" /root/.vimrc
endif
ifeq ($(UNAME),Darwin)
	sudo ln -snf "$(HOME)/.vim" /var/root/.vim
	sudo ln -snf "$(HOME)/.vimrc" /var/root/.vimrc
endif

.PHONY: update
update:
	git submodule update --init --recursive
	git submodule foreach git pull --recurse-submodules origin master
