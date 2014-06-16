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
let g:NERDTreeDirArrows=0
nnoremap 99 :NERDTreeToggle<CR>
Bundle "scrooloose/syntastic"
let g:syntastic_javascript_checkers = ['jslint']
Bundle "lukerandall/haskellmode-vim"
let g:haddock_browser="/usr/bin/chromium"

Bundle "Shougo/vimproc.vim"
Bundle "eagletmt/ghcmod-vim"
Bundle "tomasr/molokai"
Bundle "altercation/vim-colors-solarized"
Bundle 'nono/vim-handlebars'
Bundle "kingbin/vim-arduino"
Bundle "tpope/vim-fireplace"
Bundle "tpope/vim-classpath"
Bundle "guns/vim-clojure-static"
Bundle "scrooloose/nerdcommenter"
Bundle "digitaltoad/vim-jade"
Bundle "Shougo/unite.vim"
Bundle "justinmk/vim-sneak"
Bundle "tpope/vim-fugitive"
Bundle "terryma/vim-expand-region"
Bundle "mileszs/ack.vim"
Bundle "bling/vim-airline"
Bundle "Valloric/YouCompleteMe"
Bundle "SirVer/ultisnips"
Bundle 'honza/vim-snippets'
Bundle "kien/ctrlp.vim"
Bundle "chaquotay/ftl-vim-syntax"
Bundle "zeis/vim-kolor"
"Bundle "vim-scripts/LustyJuggler"

let g:sneak#streak = 1

au BufRead,BufNewFile *.handlebars,*.hbs set ft=html syntax=handlebars

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c-e>"
let g:UltiSnipsListSnippets ="<Leader>l<Leader>s"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

set encoding=utf8
filetype plugin indent on     " required!

syntax on

set number

nmap <silent> e9 :NERDTreeToggle<CR>  
"let mapleader = ","
let mapleader = "\<Space>"


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
set background=light
let g:solarized_termcolors=256
colo molokai

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
map <leader>y "+y
" Paste from unnamed register and fix indentation
nmap <leader>p pV`]=


" Unite
"let g:unite_source_history_yank_enable = 1
"call unite#filters#matcher_default#use(['matcher_fuzzy'])
"nnoremap <leader>t :<C-u>Unite -no-split -buffer-name=files   -start-insert file<cr>**/
"nnoremap <leader>f :<C-u>Unite -no-split -buffer-name=files   -start-insert file<cr>
"nnoremap <leader>r :<C-u>Unite -no-split -buffer-name=mru     -start-insert file_mru<cr>
"nnoremap <leader>o :<C-u>Unite -no-split -buffer-name=outline -start-insert outline<cr>
"nnoremap <leader>y :<C-u>Unite -no-split -buffer-name=yank    history/yank<cr>
"nnoremap <leader>e :<C-u>Unite -no-split -buffer-name=buffer  buffer<cr>
"nnoremap <leader>g :<C-u>Unite -no-split grep:.<cr>
"unmap <C-p>
nmap <C-n> :bnext<cr>
nnoremap <C-p> :bprevious<cr>


"CtrlP
let g:ctrlp_map = '<Leader>o'
let g:ctrlp_cmd = 'CtrlP'
nnorema <Leader>e :CtrlPBuffer<CR>
nnorema <Leader>m :CtrlPMixed<CR>
let g:ctrlp_regexp = 1
nnoremap <Leader>w :w<CR>
nmap <Leader><Leader> V
let g:ctrlp_working_path_mode = 0
let g:ctrlp_regexp = 1
let g:ctrlp_custom_ignore = 'node_modules\|target\|git'

vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)

vnoremap <silent> s //e<C-r>=&selection=='exclusive'?'+1':''<CR><CR>
    \:<C-u>call histdel('search',-1)<Bar>let @/=histget('search',-1)<CR>gv
omap s :normal vs<CR>

let g:airline_theme='powerlineish'
let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline_section_z=''
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''

let g:EclimCompletionMethod = 'omnifunc'
