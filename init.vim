syntax enable

set nowrap

set encoding=utf-8

" Line numbers
set number
set cursorline
hi clear CursorLine

" Tabs
set tabstop=4
set shiftwidth=4
set expandtab

call plug#begin()

Plug 'ayu-theme/ayu-vim'
Plug 'itchyny/lightline.vim'

Plug 'lervag/vimtex'
    let g:tex_flavor='latex'
    let g:vimtex_view_method='zathura'
    let g:vimtex_quickfix_mode=0
    set conceallevel=2
    let g:tex_conceal='abdmg'

Plug 'sirver/ultisnips'
    let g:UltiSnipsExpandTrigger = '<tab>'
    let g:UltiSnipsJumpForwardTrigger = '<tab>'
    let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'

call plug#end()

let g:python3_host_prog = '/usr/bin/python3'

set termguicolors
let ayucolor="dark"
colorscheme ayu

set foldmethod=expr
set foldexpr=vimtex#fold#level(v:lnum)
set foldtext=vimtex#fold#text()

hi Conceal ctermfg=8 guifg=#95E6CB
set noshowmode
