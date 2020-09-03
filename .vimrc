set nocompatible
filetype on
syntax on

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'easymotion/vim-easymotion'
Plugin 'tpope/vim-dispatch'

" Autocomplete things
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
Plugin 'omnisharp/omnisharp-vim'
Plugin 'davidhalter/jedi-vim'

Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'StanAngeloff/php.vim'

call vundle#end()

set completeopt-=preview
filetype plugin indent on

:set nu
:set t_Co=16
:set tabstop=3
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
