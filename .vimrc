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

call vundle#end()

filetype plugin indent on

:set nu
:set t_Co=16
:set relativenumber

autocmd InsertEnter * :set nornu
autocmd InsertLeave * :set rnu

noremap ; :
