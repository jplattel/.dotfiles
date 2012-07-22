"Start Pathogen
call pathogen#infect()

"Append all bundles
call pathogen#runtime_append_all_bundles()

"Generate helptags
call pathogen#helptags()

"Turn on syntax
syntax on
filetype plugin indent on

"Powerline plugin
set nocompatible   " Disable vi-compatibility
set laststatus=2   " Always show the statusline
set encoding=utf-8 " Necessary to show unicode glyphs

"Solarized theme for vim
set background=dark
let g:solarized_termtrans=1
let g:solarized_termcolors=256
let g:solarized_contrast="high"
let g:solarized_visibility="high"
colorscheme solarized

