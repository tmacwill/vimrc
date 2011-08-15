"""""""""""""""""""""""""""""""""
" The Best vimrc Ever
" Tommy MacWilliam
" tmacwilliam@cs.harvard.edu
"
" Shortcuts:
" 	; maps to :
" 	,c<space>: Toggle comments
" 	,l: Toggle NERDTree
" 	,a: ack
"""""""""""""""""""""""""""""""""

" long live vim
set nocompatible

" syntax highlighting and auto-indentation
syntax on
filetype indent on
filetype plugin on
set ai
set si

" tab width (tabs, not spaces!)
set shiftwidth=4
set tabstop=4
set smarttab

" faster tab navigation
nnoremap <S-tab> :tabprevious<CR>
nnoremap <tab> :tabnext<CR>

" use system clipboard by default
set clipboard=unnamed

" searching options
set incsearch
set showcmd

" default to extended regexes
nnoremap / /\v
nnoremap ? ?\v

" disable backups
set nobackup
set nowritebackup
set noswapfile
" save file whenever focus is lost
au FocusLost * :wa

" disable annoying beep on errors
set noerrorbells
if has('autocmd')
  autocmd GUIEnter * set vb t_vb=
endif

" text options
colorscheme desert
set ruler
set gfn=Inconsolata:h14
set wm=2
set tw=120
set wrap

" window options
set showmode
set showcmd
set scrolloff=3
set hidden
set wildmenu
set wildmode=list:longest
set ttyfast
set backspace=indent,eol,start
set laststatus=2
set showtabline=2

" better moving between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" line numbers relative to current line rather than absolute
set relativenumber

" shortcuts to common commands
let mapleader = ","
nnoremap <leader>w <C-w>v<C-w>l
nnoremap <leader>l :NERDTreeToggle<CR>
nnoremap <leader>a :Ack 
nnoremap ; :

" since autochdir rarely works
autocmd BufEnter * silent! lcd %:p:h
