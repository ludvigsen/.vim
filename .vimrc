"execute pathogen#infect()
syntax enable
filetype on                   " required!
filetype plugin indent on     " required!

set history=1000
set directory=$HOME/.vimswap//
set backupdir=$HOME/.vimbackup//
set viewdir=$HOME/.vimviews//
silent execute '!mkdir -p $HOME/.vimbackup'
silent execute '!mkdir -p $HOME/.vimswap'
silent execute '!mkdir -p $HOME/.vimviews'

 " Required:
set runtimepath^=~/.vim/bundle/neobundle.vim/

" Setup NeoNeoBundle  ----------------------------------------------------------
" If neobundle is not installed, do it first
  if (!isdirectory(expand("$HOME/.vim/bundle/neobundle.vim")))
     call system(expand("mkdir -p $HOME/.vim/bundle"))
     call system(expand("git clone https://github.com/Shougo/neobundle.vim $HOME/.vim/bundle/neobundle.vim"))
  endif
" Required:
call neobundle#begin(expand('~/.vim/bundle/'))
let pluginsExist = 0
" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" Brief help
" :NeoBundleList          - list configured bundles
" :NeoBundleInstall(!)    - install(update) bundles
" :NeoBundleSearch(!) foo - search(or refresh cache first) for foo
" :NeoBundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after NeoBundle command are not allowed..

" NeoBundles :

" syntax
NeoBundleLazy 'othree/yajs.vim',{'autoload':{'filetypes':['javascript']}}
NeoBundleLazy 'othree/es.next.syntax.vim',{'autoload':{'filetypes':['javascript']}}
NeoBundleLazy 'othree/jsdoc-syntax.vim', {'autoload':{'filetypes':['javascript','typescript']}}
NeoBundleLazy '1995eaton/vim-better-javascript-completion',{'autoload':{'filetypes':['javascript']}}
NeoBundleLazy 'kchmck/vim-coffee-script',{'autoload':{'filetypes':['coffee']}}
NeoBundleLazy 'hail2u/vim-css3-syntax',{'autoload':{'filetypes':['css','scss']}}
NeoBundleLazy 'elzr/vim-json', {'autoload':{'filetypes':['json']}}
NeoBundle 'bfredl/nvim-ipy'
NeoBundle 'tpope/vim-markdown'
NeoBundle 'dhruvasagar/vim-table-mode'
NeoBundle 'suan/vim-instant-markdown'
NeoBundle "othree/html5-syntax.vim"
NeoBundle "othree/html5.vim"
NeoBundle "mxw/vim-jsx"
NeoBundle 'nono/vim-handlebars'
NeoBundle "digitaltoad/vim-jade"

NeoBundle "scrooloose/nerdtree"
let g:NERDTreeDirArrows=0
nnoremap 99 :NERDTreeToggle<CR>

"
"NeoBundle "scrooloose/syntastic"
"let g:syntastic_javascript_checkers = ['eslint']
"let g:syntastic_ruby_checker = "rubocop"
"let g:syntastic_eruby_ruby_exec = "rubocop"
"let g:syntastic_scss_checkers = ['scss_lint']
"
NeoBundle 'benekastah/neomake'
let g:neomake_javascript_enabled_makers = ['eslint']
"function! neomake#makers#ft#javascript#eslint()
"  return {
"        \ 'args': ['-f', 'compact'],
"        \ 'errorformat': '%E%f: line %l\, col %c\, Error - %m,' .
"        \ '%W%f: line %l\, col %c\, Warning - %m'
""        \ }
"endfunction
"let g:neomake_javascript_enabled_makers = ['eslint']
"autocmd! BufWritePost * Neomake
"function! JscsFix()
"  let l:winview = winsaveview()
"  % ! jscs -x
"  call winrestview(l:winview)
"endfunction
"command JscsFix :call JscsFix()
"noremap <leader>j :JscsFix<CR>

" Haskell
NeoBundle "lukerandall/haskellmode-vim"
let g:haddock_browser="/usr/bin/chromium"

NeoBundle "raichoo/haskell-vim"
let g:haskell_enable_quantification = 1 "to enable highlighting of forall
let g:haskell_enable_recursivedo = 1 "to enable highlighting of mdo and rec
let g:haskell_enable_arrowsyntax = 1 "to enable highlighting of proc
let g:haskell_enable_pattern_synonyms = 1 "to enable highlighting of pattern
let g:haskell_enable_typeroles = 1 "to enable highlighting of type roles
let g:haskell_indent_if = 3
let g:haskell_indent_case = 5
let g:haskell_indent_let = 4
let g:haskell_indent_where = 6
let g:haskell_indent_do = 3
let g:haskell_indent_in = 1

"ELM
NeoBundle "lambdatoast/elm.vim"
nnoremap <leader>ll :ElmEvalLine<CR>
vnoremap <leader>ls :<C-u>ElmEvalSelection<CR>
nnoremap <leader>lm :ElmMakeCurrentFile<CR>

NeoBundle "tpope/vim-abolish"
NeoBundle "tpope/vim-projectionist"
NeoBundle "Shougo/vimproc.vim", {
        \ 'build' : {
        \     'windows' : 'tools\\update-dll-mingw',
        \     'cygwin' : 'make -f make_cygwin.mak',
        \     'mac' : 'make -f make_mac.mak',
        \     'linux' : 'make',
        \     'unix' : 'gmake',
        \    },
        \ }
NeoBundle "eagletmt/ghcmod-vim"


"Themes / gui
NeoBundle 'mhartington/oceanic-next'
NeoBundle "tomasr/molokai"
NeoBundle "altercation/vim-colors-solarized"
NeoBundle 'ryanoasis/vim-devicons'
NeoBundle 'gorodinskiy/vim-coloresque'


" stuff
NeoBundle "kingbin/vim-arduino"
NeoBundle "tpope/vim-fireplace"
NeoBundle "tpope/vim-classpath"
NeoBundle "tpope/vim-obsession"
NeoBundle "guns/vim-clojure-static"
"NeoBundle "scrooloose/nerdcommenter"
NeoBundle "Shougo/unite.vim"

NeoBundle "justinmk/vim-sneak"
let g:sneak#streak = 1

NeoBundle "tpope/vim-fugitive"
NeoBundle "terryma/vim-expand-region"
NeoBundle "mileszs/ack.vim"
NeoBundle "vim-airline/vim-airline"
NeoBundle "rust-lang/rust.vim"
NeoBundle "vim-airline/vim-airline-themes"
let g:airline#extensions#tabline#enabled = 1
set hidden
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#show_tab_nr = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='oceanicnext'
" let g:airline_theme='base16_solarized'
cnoreabbrev <expr> x getcmdtype() == ":" && getcmdline() == 'x' ? 'Sayonara' : 'x'
tmap <leader>x <c-\><c-n>:bp! <BAR> bd! #<CR>
nmap <leader>t :term<cr>
nmap <leader>, :bnext<CR>
tmap <leader>, <C-\><C-n>:bnext<cr>
nmap <leader>. :bprevious<CR>
tmap <leader>. <C-\><C-n>:bprevious<CR>
let g:airline#extensions#tabline#buffer_idx_mode = 1
tmap <leader>1  <C-\><C-n><Plug>AirlineSelectTab1
tmap <leader>2  <C-\><C-n><Plug>AirlineSelectTab2
tmap <leader>3  <C-\><C-n><Plug>AirlineSelectTab3
tmap <leader>4  <C-\><C-n><Plug>AirlineSelectTab4
tmap <leader>5  <C-\><C-n><Plug>AirlineSelectTab5
tmap <leader>6  <C-\><C-n><Plug>AirlineSelectTab6
tmap <leader>7  <C-\><C-n><Plug>AirlineSelectTab7
tmap <leader>8  <C-\><C-n><Plug>AirlineSelectTab8
tmap <leader>9  <C-\><C-n><Plug>AirlineSelectTab9
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
"NeoBundle 'Valloric/YouCompleteMe'
"NeoBundle 'SirVer/ultisnips'
"NeoBundle 'honza/vim-snippets'
"NeoBundle "kien/ctrlp.vim"
NeoBundle 'junegunn/fzf', { 'dir': '~/.fzf', 'build': './install --all' }
NeoBundle 'junegunn/fzf.vim'
NeoBundle "chaquotay/ftl-vim-syntax"
NeoBundle "zeis/vim-kolor"
NeoBundle "junegunn/seoul256.vim"
NeoBundle "tpope/vim-surround"
NeoBundle "tpope/vim-commentary"
NeoBundle "tpope/vim-sensible"
NeoBundle "AndrewRadev/splitjoin.vim"
NeoBundle "pangloss/vim-javascript"
NeoBundle "moll/vim-node"
NeoBundle "othree/javascript-libraries-syntax.vim"
NeoBundle "claco/jasmine.vim"
NeoBundle "Twinside/vim-hoogle"
"NeoBundle "vim-scripts/LustyJuggler"
NeoBundle "eagletmt/neco-ghc"
NeoBundle "nanotech/jellybeans.vim"
NeoBundle "sjl/gundo.vim"
NeoBundle 'othree/jspc.vim'
NeoBundle 'marijnh/tern_for_vim', { 'do': 'npm install' }
NeoBundle 'Shougo/deoplete.nvim'
set runtimepath+=~/.vim/plugged/deoplete.nvim/
let g:neosnippet#enable_completed_snippet = 1
let g:deoplete#enable_at_startup = 1
let g:deoplete#auto_completion_start_length = 1
"imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
"    \ "\<Plug>(neosnippet_expand_or_jump)" : pumvisible() ? "\<C-n>" : "\<TAB>"
"inoremap <expr><C-h>
"      \ deolete#mappings#smart_close_popup()."\<C-h>"
"inoremap <expr><BS>
"      \ deoplete#mappings#smart_close_popup()."\<C-h>"
" "set completeopt+=noinsert
" inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
"let g:deoplete#deoplete_onmni_patterns = get(g:, 'deoplete#force_omni_input_patterns', {})
"let g:deoplete#deoplete_onmni_patterns.javascript = '[^. \t]\.\w*'
"inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
"if !exists('g:deoplete#omni#input_patterns')
"  let g:deoplete#omni#input_patterns = {}
"endif
" let g:deoplete#disable_auto_complete = 1
"autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
" omnifuncs
augroup omnifuncs
  autocmd!
  autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
  autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
  autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
  autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
  autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
augroup end

" tern
if exists('g:plugs["tern_for_vim"]')
  let g:tern_show_argument_hints = 'on_hold'
  let g:tern_show_signature_in_pum = 1

  autocmd FileType javascript setlocal omnifunc=tern#Complete
endif

" deoplete tab-complete
inoremap <silent><expr> <Tab> pumvisible() ? "\<C-n>" : deoplete#mappings#manual_complete()
" ,<Tab> for regular tab
inoremap <Leader><Tab> <Space><Space>

" tern
autocmd FileType javascript nnoremap <silent> <buffer> gb :TernDef<CR>

  NeoBundle 'Shougo/neosnippet.vim'
  NeoBundle 'Shougo/neosnippet-snippets'
set runtimepath+=~/.vim/neosnippet.vim/
" Enable snipMate compatibility feature.
let g:neosnippet#enable_snipmate_compatibility = 1
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)
" Tell Neosnippet about the other snippets
let g:neosnippet#snippets_directory='~/.vim/snippets'

" SuperTab like snippets behavior.
imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: "\<TAB>"

call neobundle#end()
NeoBundleCheck

nnoremap 88 :GundoToggle<CR>
set undodir=~/.vim/undodir
set undofile
set undolevels=10000 "maximum number of changes that can be undone
set undoreload=100000 "maximum number lines to save for undo on a buffer reload

autocmd BufRead,BufNewFile   *.hs setlocal omnifunc=necoghc#omnifunc

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


set number
set mouse=a


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
set background=dark
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
"let g:solarized_termcolors=256
"colo seoul256
"colo jellybeans
colorscheme OceanicNext

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

" ============================================================================
" FZF {{{
" ============================================================================

if has('nvim')
  let $FZF_DEFAULT_OPTS .= ' --inline-info'
endif

 nnoremap <silent> <Leader><Leader> :Files<CR>
"nnoremap <silent> <expr> <Leader><Leader> (expand('%') =~ 'NERD_tree' ? "\<c-w>\<c-w>" : '').":Files\<cr>"
nnoremap <silent> <Leader>C        :Colors<CR>
nnoremap <silent> <Leader><Enter>  :Buffers<CR>
nnoremap <silent> <Leader>ag       :Ag <C-R><C-W><CR>
nnoremap <silent> <Leader>`        :Marks<CR>

inoremap <expr> <c-x><c-t> fzf#complete('tmuxwords.rb --all-but-current --scroll 500 --min 5')
imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-j> <plug>(fzf-complete-file-ag)
imap <c-x><c-l> <plug>(fzf-complete-line)

nmap <leader><tab> <plug>(fzf-maps-n)
xmap <leader><tab> <plug>(fzf-maps-x)
omap <leader><tab> <plug>(fzf-maps-o)

vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)

vnoremap <silent> s //e<C-r>=&selection=='exclusive'?'+1':''<CR><CR>
    \:<C-u>call histdel('search',-1)<Bar>let @/=histget('search',-1)<CR>gv
omap s :normal vs<CR>

let g:airline_theme='oceanicnext'
"let g:airline_theme='powerlineish'
let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline_section_z=''
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''

let g:EclimCompletionMethod = 'omnifunc'

" Disable Background Color Erase (BCE) so that color scheme work
" properly when Vim is used inside tmux and GNU screen.
set t_ut=

"" TabLength
set ts=2 sw=2

let g:ycm_semantic_triggers = {'haskell' : ['.']}

"ECLIM
nnoremap <leader>g :JavaSearch -x declaration<CR>
nnoremap <leader>ch :JavaCallHierarchy<CR>
let g:EclimJavaSearchSingleResult = 'edit'

"let g:UltiSnipsExpandTrigger = "C-e"
"let g:ulti_expand_or_jump_res = 0
"function ExpandSnippetOrCarriageReturn()
"    let snippet = UltiSnips#ExpandSnippetOrJump()
"    if g:ulti_expand_or_jump_res > 0
"        return snippet
"    else
"        return "\<CR>"
"    endif
"endfunction
"inoremap <expr> <CR> pumvisible() ? "<C-R>=ExpandSnippetOrCarriageReturn()<CR>" : "\<CR>"
"nnoremap <leader>jt :! "find . -type f -iregex '.*\.js$' -not -path './node_modules/*' -exec jsctags {} -f \; | sed '/^$/d' | sort > tags"<CR>

"noremap  <buffer> <silent> k gk
"noremap  <buffer> <silent> j gj
"noremap  <buffer> <silent> 0 g0
"noremap  <buffer> <silent> $ g$
"onoremap <silent> j gj
"onoremap <silent> k gk
if has("nvim")
  " Open terminal and run lein figwheel
  nmap <Leader>term <C-w>v:terminal<CR>lein figwheel<CR><C-\><C-n><C-w>p
  " Evaluate anything from the visual mode in the next window
  vmap <buffer> ,e y<C-w>wpi<CR><C-\><C-n><C-w>p
  " Evaluate outer most form
  nmap <buffer> ,e ^v%,e
  " Evaluate buffer"
  nmap <buffer> ,b ggVG,e
endif
