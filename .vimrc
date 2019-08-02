set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'easymotion/vim-easymotion'
Plugin 'tpope/vim-dispatch'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
Plugin 'omnisharp/omnisharp-vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'StanAngeloff/php.vim'

call vundle#end()

set completeopt-=preview
set path=**
set tags=tags;/
filetype plugin indent on

:set nu
:set t_Co=16
:set tabstop=3
:set shiftwidth=3

autocmd InsertEnter * :set nornu

noremap ; :
nnoremap th :tabfirst<CR>
nnoremap tj :tabnext<CR>
nnoremap tk :tabprev<CR>
nnoremap tt :tablast<CR>

imap jj <esc>

" GUI
:set guifont=Tamsyn7x14:h9:cAnsi:qDRAFT
:set guioptions-=L
:set guioptions-=r
:set guioptions-=T
:set guioptions-=t
