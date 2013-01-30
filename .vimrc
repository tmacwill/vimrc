"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" The Best vimrc Ever
" Tommy MacWilliam <tmacwilliam@cs.harvard.edu>
"
" Be sure to read the README!
"
" Shortcuts:
"   ; maps to :
"   ,a: ack from the current directory
"   ,c<space>: toggle comments
"   ,e: open file in new tab
"   ,l: toggle NERDTree
"   ,h: open a shell in a new tab
"   ,ig: toggle indentation guide
"   ,k: syntax-check the current file
"   ,m: toggle mouse support
"   ,p: toggle paste mode
"   ,o: open file
"   ,s: split window
"   ,t: new tab
"   ,w: close tab
"   kj: enter normal mode and save
"   Ctrl+{h,j,k,l}: move among windows
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" long live vim
set encoding=utf-8
set nocompatible

" vundle
filetype off
set rtp+=~/.vim/bundle/vundle
call vundle#rc()
Bundle 'gmarik/vundle'

" plugins
Bundle 'tomtom/checksyntax_vim'

" color schemes
Bundle 'nanotech/jellybeans.vim'
Bundle 'tomasr/molokai'
Bundle 'vim-scripts/Skittles-Dark'
Bundle 'hukl/Smyck-Color-Scheme'
Bundle 'vim-scripts/wombat256.vim'

" plugins
Bundle 'mileszs/ack.vim'
Bundle 'kien/ctrlp.vim'
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/nerdtree'
Bundle 'tpope/vim-fugitive'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-surround'
Bundle 'vim-scripts/trailing-whitespace'

" syntax files
Bundle 'pangloss/vim-javascript'
Bundle 'tpope/vim-markdown'

" checksyntax config
let g:checksyntax#auto_mode = 0

" indent-guide config
let g:indent_guides_guide_size = 1

" ctrlp config
let g:ctrlp_working_path_mode = 'c'

" syntax highlighting and auto-indentation
syntax on
filetype indent on
filetype plugin on
:inoremap # X<C-H>#
set ai
set si
set nu

" omg folding is the worst
set nofoldenable

" expand tabs to 4 spaces
set shiftwidth=4
set tabstop=4
set smarttab
set expandtab

" faster tab navigation
nnoremap <S-tab> :tabprevious<CR>
nnoremap <tab> :tabnext<CR>

" always show tab line to avoid annoying resize
set showtabline=2

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
set t_Co=256
colorscheme smyck
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

" shortcuts to common commands
let mapleader = ","
nnoremap <leader>a :Ack
nnoremap <leader>e :tabnew<CR>:CtrlP<CR>
nnoremap <leader>h :tabnew<CR>:ConqueTerm bash<CR>
nnoremap <leader>l :NERDTreeToggle<CR>
nnoremap <leader>k :CheckSyntax<CR>
nnoremap <leader>o :CtrlP<CR>
nnoremap <leader>p :set invpaste<CR>
nnoremap <leader>t :tabnew<CR>
nnoremap <leader>s :vsplit<CR>
nnoremap <leader>w :tabclose<CR>

" ; is better than :, and kj is better than ctrl-c
nnoremap ; :

" also autosave when going to insert mode
inoremap kj <Esc>:w<CR>

" more logical vertical navigation
nnoremap <silent> k gk
nnoremap <silent> j gj

" make copy/pasting nice
function! ToggleMouse()
    if &mouse == 'a'
        set mouse=r
        set nonu
    else
        set mouse=a
        set nu
    endif
endfunction
nnoremap <leader>m :call ToggleMouse()<CR>

set laststatus=2
set statusline=%m\ %t\ %h%r%y\ %{fugitive#statusline()}\ %#error#%{&paste?'[paste]':''}%*%=%{strlen(&fenc)?&fenc:'none'}\ %{&ff}\ %P\ \L%l:\C%c
