set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..

" Bundles :
Bundle "scrooloose/nerdtree"
Bundle "scrooloose/syntastic"
let g:syntastic_javascript_checkers = ['jslint']
Bundle "lukerandall/haskellmode-vim"
let g:haddock_browser="/usr/bin/chromium"

Bundle "Shougo/vimproc.vim"
Bundle "eagletmt/ghcmod-vim"
Bundle "tomasr/molokai"
Bundle "altercation/vim-colors-solarized"
Bundle 'nono/vim-handlebars'
au BufRead,BufNewFile *.handlebars,*.hbs set ft=html syntax=handlebars

set encoding=utf8
filetype plugin indent on     " required!

syntax on

set number

nmap <silent> 99 :NERDTreeToggle<CR>  
let mapleader = ","

" No tabs
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

" HIGHLIGHT REDUNDANT WHITESPACE
highlight RedundantWhitespace ctermbg=red guibg=red
match RedundantWhitespace /\s\+$\|\t/

"COLORS
"hi Normal ctermbg=White ctermfg=Black guifg=Black guibg=White
set background=dark
let g:solarized_termcolors=256
colo solarized

""
"" Joining
""
" Delete comment character when joining commented lines
if v:version > 703 || v:version == 703 && has("patch541")
    set formatoptions+=j     
endif
" Use only 1 space after "." when joining lines instead of 2
set nojoinspaces

" =============================================================================
" " Registers
" "
" =============================================================================
" Use the OS clipboard by default
set clipboard=unnamed
" Copy to X11 primary clipboard
map <leader>y "*y
" Paste from unnamed register and fix indentation
nmap <leader>p pV`]=

