" Config door Adriaan
" November 2021 na herinstall desktop

" No compatibility with vi
set nocompatible

" Syntax highlighting
syntax on
colorscheme jellybeans

" Lijnnummerkes zijn handig voor te navigeren
set number

" The encoding within vim itself
set encoding=utf-8
" Encode when writing a file
set fileencoding=utf-8

" tabstop: number of spaces a tab counts for, so it'll show as 4 spaces.
set ts=4
" softtabstop
set sts=4
" shiftwidth: Number of spaces to use when shifting (>> and << for indentation)
set sw=4

" Highlight all matched searches
set hlsearch

" My own key remaps
" Executes whatever docker command is in the .dockercmd file when you press <F6> in vim.
nnoremap <F6> :!find_dockercmd<CR>
