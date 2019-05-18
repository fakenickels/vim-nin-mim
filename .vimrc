" Set indentation
set ts=2 sw=2

" Write and close quickly
nmap <Leader>wq :wq<Cr>

" Clean up search highlights
nmap <C-n> :noh<Cr>

" Send all yanking/deleting ops to clipboard
set clipboard=unnamedplus

" Show line numbers
set number

" Enable JSX for all js
let g:jsx_ext_required = 0
let mapleader = ","
let g:mapleader = ","

" Fast saving
nmap <leader>w :w!<cr>

""""""""""""""""""""""""""""""
" => CTRL-P
""""""""""""""""""""""""""""""
let g:ctrlp_working_path_mode = 0
let g:ctrlp_custom_ignore = 'node_modules\|^\.DS_Store\|^\.git\|^\.coffee'

let g:ctrlp_map = '<c-f>'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Nerd Tree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let NERDTreeShowHidden=0
let NERDTreeIgnore = ['\.pyc$', '__pycache__']
let g:NERDTreeWinSize=35
map <leader>nn :NERDTreeToggle<cr>
map <leader>nb :NERDTreeFromBookmark<Space>
map <leader>nf :NERDTreeFind<cr>

" Enable filetype plugins
filetype plugin on
filetype indent on

" Enable highlighiting

" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile
syntax enable 


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=2
set tabstop=2

" Linebreak on 500 characters
set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines


""""""""""""""""""""""""""""""
" => Visual mode related
""""""""""""""""""""""""""""""
" Visual mode pressing * or # searches for the current selection
" Super useful! From an idea by Michael Naumann
vnoremap <silent> * :<C-u>call VisualSelection('', '')<CR>/<C-R>=@/<CR><CR>
vnoremap <silent> # :<C-u>call VisualSelection('', '')<CR>?<C-R>=@/<CR><CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Moving around, tabs, windows and buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Map <Space> to / (search) and Ctrl-<Space> to ? (backwards search)
map <space> /
map <c-space> ?

" Disable highlight when <leader><cr> is pressed
map <silent> <leader><cr> :noh<cr>

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Useful mappings for managing tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove 
map <leader>t<leader> :tabnext 

" Let 'tl' toggle between this and the last accessed tab
let g:lasttab = 1
nmap <Leader>tl :exe "tabn ".g:lasttab<CR>
au TabLeave * let g:lasttab = tabpagenr()


" Opens a new tab with the current buffer's path
" Super useful when editing files in the same directory
map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/

nmap <D-j> <M-j>
nmap <D-k> <M-k>
vmap <D-j> <M-j>
vmap <D-k> <M-k>

" Don't redraw while executing macros (good performance config)
set lazyredraw 

let g:ale_fixers = {
\   'javascript': ['eslint'],
\   'reason': ['merlin']
\}

nnoremap <silent> K :call LanguageClient_textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient_textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient_textDocument_rename()<CR>

set noshowmode
set cmdheight=2

"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/Users/gabrielr.abreu/.vim/bundles/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/Users/gabrielr.abreu/.vim/bundles')
  call dein#begin('/Users/gabrielr.abreu/.vim/bundles')

  " Let dein manage dein
  " Required:
  call dein#add('/Users/gabrielr.abreu/.vim/bundles/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('grsabreu/neosnippet-snippets')

  " You can specify revision/branch/tag.
  call dein#add('Shougo/deol.nvim', { 'rev': 'a1b5108fd' })

  call dein#add('autozimu/LanguageClient-neovim', { 'rev': 'next', 'build': './install.sh' })
  call dein#add('reasonml-editor/vim-reason-plus')

  call dein#add('Shougo/deoplete.nvim')

  call dein#add('tyrannicaltoucan/vim-deep-space')

  call dein#add('jparise/vim-graphql')

  call dein#add('mbbill/undotree')

  call dein#add('ap/vim-css-color')

  call dein#add('prettier/vim-prettier', { 'build': 'yarn install' })

  call dein#add('leafgarland/typescript-vim')

  call dein#add('Xuyuanp/nerdtree-git-plugin')

  call dein#add('rrethy/vim-illuminate')

  call dein#add('mhinz/vim-startify')

  call dein#add('junegunn/fzf')
  call dein#add('junegunn/fzf.vim')

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

let g:deoplete#enable_at_startup = 1
let g:deoplete#file#enable_buffer_path = 1

" Deep space
set background=dark
set termguicolors

let g:dein#enable_notification = 1

"End dein Scripts-------------------------

" Language server

set hidden
let g:LanguageClient_serverCommands = {
    \ 'reason': ['~/projects/astrocoders/reason-language-server/reason-language-server/reason-language-server.exe'],
    \ 'ocaml': ['ocaml-language-server', '--stdio'],
    \ 'javascript': ['javascript-typescript-stdio'],
    \ 'typescript': ['javascript-typescript-stdio'],
    \ }

nnoremap <silent> K :call LanguageClient_textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient_textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient_textDocument_rename()<CR>
nnoremap <silent> <C-k> :call LanguageClient_textDocument_formatting()<CR>

" neosnippeet
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
imap <C-l>     <Plug>(neosnippet_expand_or_jump)
smap <C-l>     <Plug>(neosnippet_expand_or_jump)
xmap <C-l>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
"imap <expr><TAB>
" \ pumvisible() ? "\<C-n>" :
" \ neosnippet#expandable_or_jumpable() ?
" \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

let NERDTreeIgnore = ['\.bs.js$']

" Linting/errors
nmap <tab> :ALENext<Cr>

" Prettier
let g:prettier#config#semi = 'false'
let g:prettier#config#single_quote = 'true'


" FZF
map <leader>j :CtrlP<cr>
