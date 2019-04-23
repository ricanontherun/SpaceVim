"=============================================================================
" vimrc --- Entry file for vim
" Copyright (c) 2016-2017 Shidong Wang & Contributors
" Author: Shidong Wang < wsdjeg at 163.com >
" URL: https://spacevim.org
" License: GPLv3
"=============================================================================

" Note: Skip initialization for vim-tiny or vim-small.
if 1
    execute 'source' fnamemodify(expand('<sfile>'), ':h').'/config/main.vim'
endif
set tabstop=2
set shiftwidth=2
set expandtab
set wrap!

" Remapping the movement keys so I can stay on home row as much as possible.
noremap ; l
noremap l k
noremap k j
noremap j h

"==================================================
" Splits
"==================================================
:map f; <C-w>l
:map fl <C-w>k
:map fk <C-w>j
:map fj <C-w>h
