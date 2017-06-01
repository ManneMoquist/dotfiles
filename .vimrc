set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'

call vundle#end()

filetype plugin indent on

:set nu
:set t_Co=16
:set relativenumber

autocmd InsertEnter * :set nornu
autocmd InsertLeave * :set rnu
