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
" 	,t: new tab
" 	,w: close tab
"   jj: enter normal mode
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

" font options
set background=dark
colorscheme solarized
set gfn=Inconsolata:h14

" word wrapping
set wm=2
set tw=120
set wrap

" keep at least 5 lines below the cursor
set scrolloff=5

" window options
set showmode
set showcmd
set ruler
set ttyfast
set backspace=indent,eol,start
set laststatus=2

" always show tab line to avoid annoying resize
set showtabline=2

" enable mouse support
set mouse=a

" better tab completion on commands
set wildmenu
set wildmode=list:longest

" close buffer when tab is closed
set nohidden

" better moving between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" line numbers relative to current line rather than absolute
set relativenumber

" shortcuts to common commands
let mapleader = ","
nnoremap <leader>l :NERDTreeToggle<CR>
nnoremap <leader>a :Ack 
nnoremap <leader>t :tabnew<CR>
nnoremap <leader>w :tabclose<CR>

" ; is better than :, and jj is better than ctrl-c
nnoremap ; :
inoremap jj <Esc>

" since autochdir rarely works
autocmd BufEnter * silent! lcd %:p:h
