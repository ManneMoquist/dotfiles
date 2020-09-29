set nocompatible
filetype on
syntax on

call plug#begin('~/.vim/plugged')

Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-dispatch'

Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'StanAngeloff/php.vim'

" ok lets try Coc as a new autocomplete
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

" needed for coc apparently
	set nobackup
	set nowritebackup

	set updatetime=300
	set shortmess+=c

	let g:coc_disable_startup_warning=1
" end coc

set completeopt-=preview
set path=**
set tags=tags;/
filetype plugin indent on

:set nu
:set t_Co=16
:set tabstop=2
:set shiftwidth=3

set path=$PWD/**

autocmd InsertEnter * :set nornu

noremap ; :
nnoremap th :tabfirst<CR>
nnoremap tj :tabnext<CR>
nnoremap tk :tabprev<CR>
nnoremap tt :tablast<CR>

imap jj <esc>

" GUI
"set guifont=Tamsyn7x14:h9:cAnsi:qDRAFT
":colo evening
"set guioptions-=L
"set guioptions-=r
"set guioptions-=T
"set guioptions-=t
