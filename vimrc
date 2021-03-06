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
set dir=~/.vimswap//,/var/tmp//,/tmp//,.
set tabstop=2
set shiftwidth=2
set expandtab
set wrap!
set backspace=indent,eol,start
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8
set tabstop=2
set shiftwidth=2
set expandtab
set wrap!
set t_Co=256
set exrc
set secure
set autoread
highlight Normal ctermbg=NONE
highlight NonText ctermbg=NONE
set number
set showmatch
set dir=~/.vimswap//,/var/tmp//,/tmp//,.
set clipboard=unnamed
set previewheight=100
set conceallevel=0
set spell spelllang=en_us
set hlsearch
set ignorecase

let NERDTreeShowHidden=1
let NERDTreeChDirMode=0
let g:startify_change_to_dir=0


" Remapping the movement keys so I can stay on home row as much as possible.
noremap ; l
noremap l k
noremap k j
noremap j h


"==================================================
" Splits
"==================================================
:map <leader>sv	:vsplit<Enter>
:map <leader>sh	:split<Enter>

:map f; <C-w>l
:map fl <C-w>k
:map fk <C-w>j
:map fj <C-w>h

"==================================================
" Buffers
"==================================================
noremap q :q<Enter>
:map <leader>qa :qa<Enter>
:map <leader>qaf :!qa<Enter>
:map <leader>h :Startify<Enter>

"==================================================
" Tabs
"==================================================
:map <leader>t :tabe<Enter>

:map gj :tabprevious<Enter>
:map g; :tabnext<Enter>

command! -bang -nargs=* Ag
  \ call fzf#vim#ag(<q-args>,
  \                 <bang>0 ? fzf#vim#with_preview('up:60%')
  \                         : fzf#vim#with_preview('right:50%'),
\ <bang>0)
