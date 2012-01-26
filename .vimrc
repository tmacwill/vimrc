"""""""""""""""""""""""""""""""""
" The Best vimrc Ever
" Tommy MacWilliam
" tmacwilliam@cs.harvard.edu
"
" Shortcuts:
" 	; maps to :
" 	,c<space>: Toggle comments
" 	,a: ack
" 	,e: edit in new tab
" 	,l: Toggle NERDTree
" 	,o: command-t open
" 	,s: split window
" 	,t: new tab
" 	,w: close tab
"   kj: enter normal mode
"""""""""""""""""""""""""""""""""

" long live vim
set nocompatible

" syntax highlighting and auto-indentation
syntax on
filetype indent on
filetype plugin on
set ai
set si

" omg folding is the worst
set nofoldenable

" expand tabs to 4 spaces
set shiftwidth=4
set tabstop=4
set smarttab
set expandtab

" highlight characters longer than 120 lines
match ErrorMsg '\%>120v.\+'

" faster tab navigation
nnoremap <S-tab> :tabprevious<CR>
nnoremap <tab> :tabnext<CR>

" use system clipboard by default
set clipboard=unnamed

" searching options
set incsearch
set showcmd
set ignorecase
set smartcase

" disable backups
set nobackup
set nowritebackup
set noswapfile

" disable annoying beep on errors
set noerrorbells
if has('autocmd')
  autocmd GUIEnter * set vb t_vb=
endif

" font options
set background=dark
colorscheme jellybeans
set gfn=Inconsolata:h14

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

" supertab config
set ofu=syntaxcomplete#Complete
let g:SuperTabDefaultCompletionType = "<C-X><C-O>"
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

" line numbers
set number

" shortcuts to common commands
let mapleader = ","
nnoremap <leader>a :Ack 
nnoremap <leader>e :tabnew<CR>:CommandT<CR>
nnoremap <leader>l :NERDTreeToggle<CR>
nnoremap <leader>o :CommandT<CR>
nnoremap <leader>t :tabnew<CR>
nnoremap <leader>s :vsplit<CR>
nnoremap <leader>w :tabclose<CR>

" ; is better than :, and kj is better than ctrl-c
nnoremap ; :
" also autosave when going to insert mode
inoremap kj <Esc>:w<CR>
