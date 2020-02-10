" syntax highlighting
syntax on

" dark background
set background=dark

" indentation rules and plugins
filetype plugin indent on

" use 256 colors
set t_Co=256

" visual formatting
set number
set nowrap
colorscheme asyks
hi Search term=standout ctermfg=0 ctermbg=11

" set default tab behavior
set tabstop=2
set shiftwidth=2
set expandtab

" set filetype specific tab behavior
au FileType html setl sw=2 sts=2 et
au FileType css setl sw=2 sts=2 et
au FileType javascript setl sw=2 sts=2 et
au FileType json setl sw=2 sts=2 et
au FileType python setl sw=4 sts=4 et
au FileType yaml setl sw=2 sts=2 et

" search highlighting settings
set hlsearch

" split pane settings
set splitbelow
set splitright

" don't put a line under the cursor
set nocursorline

" vim pathogen (https://github.com/tpope/vim-pathogen#pathogenvim)
execute pathogen#infect()
execute pathogen#helptags()

" explorer mode settings
let g:netrw_liststyle=3
let g:netrw_banner=0
let g:netrw_browse_split=2
let g:netrw_altv = 1
let g:netrw_winsize = 25

" custom shortcuts
map <F8> :tabp<CR>
map <F9> :tabn<CR>

map <F5> :! pylint %<Enter>
map <F6> :! mypy --py2 %<Enter>
