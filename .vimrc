"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" The Best vimrc Ever
" Tommy MacWilliam <tmacwilliam@cs.harvard.edu>
"
" Be sure to read the README!
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" long live vim
set encoding=utf-8
set nocompatible

" vundle
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'

" color schemes
Plugin 'nanotech/jellybeans.vim'
Plugin 'tomasr/molokai'
Plugin 'vim-scripts/Skittles-Dark'
Plugin 'sickill/vim-monokai'
Plugin 'hukl/Smyck-Color-Scheme'
Plugin 'vim-scripts/wombat256.vim'

" plugins
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'
Plugin 'tomtom/tcomment_vim'
Plugin 'vim-scripts/trailing-whitespace'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'michaeljsmith/vim-indent-object'
Plugin 'gregsexton/gitv'
Plugin 'bling/vim-airline'
Plugin 'wincent/Command-T'
Plugin 'Chiel92/vim-autoformat'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'

" syntax files
Plugin 'pangloss/vim-javascript'
Plugin 'tpope/vim-markdown'
Plugin 'voithos/vim-python-syntax'
Plugin 'kchmck/vim-coffee-script'
Plugin 'derekwyatt/vim-scala'
Plugin 'groenewege/vim-less'
Plugin 'leafgarland/typescript-vim'
Plugin 'chr4/nginx.vim'
Plugin 'fatih/vim-go'
Plugin 'mxw/vim-jsx'
Plugin 'keith/swift.vim'

call vundle#end()

filetype plugin indent on

" command-t config
let g:CommandTTraverseSCM = 'pwd'

" checksyntax config
let g:checksyntax#auto_mode = 0

" airline config
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'

" coffeescript config
hi link coffeeSpaceError NONE

" syntax highlighting and auto-indentation
syntax on
filetype indent on
filetype plugin on
inoremap # X<C-H>#
set ai
set si
set nu

" fix some filetype detection
au BufRead,BufNewFile *.g4* set filetype=antlr
au BufRead,BufNewFile *.yaml* set filetype=yaml
au BufRead,BufNewFile *.proto* set filetype=proto
au BufRead,BufNewFile Dockerfile* set filetype=dockerfile
au BufRead,BufNewFile *.tsx set filetype=typescript

let g:formatdef_custom_cpp = '"clang-format -style=Google"'
let g:formatdef_custom_html = '"prettier --print-width=100 --parser=html"'
let g:formatdef_custom_java = '"prettier --print-width=100 --parser=java"'
let g:formatdef_custom_javascript = '"prettier --print-width=100 --parser=typescript"'
let g:formatdef_custom_json = '"prettier --print-width=100 --parser=json"'
let g:formatdef_custom_python = '"black -q --fast -"'
let g:formatdef_custom_ruby = '"prettier --print-width=100 --parser=ruby"'
let g:formatters_c = ['custom_cpp']
let g:formatters_cpp = ['custom_cpp']
let g:formatters_html = ['custom_html']
let g:formatters_java = ['custom_java']
let g:formatters_javascript = ['custom_javascript']
let g:formatters_json = ['custom_json']
let g:formatters_markdown = []
let g:formatters_objcpp = ['custom_cpp']
let g:formatters_proto = []
let g:formatters_python = ['custom_python']
let g:formatters_ruby = ['custom_ruby']
let g:formatters_typescript = ['custom_javascript']
let g:autoformat_autoindent = 0
let g:autoformat_retab = 0
au BufWrite * :Autoformat

" expand tabs to 4 spaces
set shiftwidth=4
set tabstop=4
set smarttab
set expandtab

" except 2 spaces for some formats
autocmd Filetype css setlocal expandtab tabstop=2 shiftwidth=2
autocmd Filetype html setlocal expandtab tabstop=2 shiftwidth=2
autocmd Filetype java setlocal expandtab tabstop=2 shiftwidth=2
autocmd Filetype javascript setlocal expandtab tabstop=2 shiftwidth=2
autocmd Filetype scss setlocal expandtab tabstop=2 shiftwidth=2
autocmd Filetype typescript setlocal expandtab tabstop=2 shiftwidth=2
autocmd Filetype xml setlocal expandtab tabstop=2 shiftwidth=2
autocmd Filetype yaml setlocal expandtab tabstop=2 shiftwidth=2

" omg folding is the worst
set nofoldenable

" omg automatic comment insertion is the worst
au FileType * setlocal comments-=:// comments+=f://

" omg a limit to how many tabs can open is the worst
set tabpagemax=100

" omg the crazy SQL autocomplete thing is the worst
let g:omni_sql_no_default_maps = 1

" faster tab navigation
nnoremap <S-tab> :tabprevious<CR>
nnoremap <tab> :tabnext<CR>

" always show tab line to avoid annoying resize
set showtabline=2

" searching options
set incsearch
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

" keep at least 5 lines below the cursor
set scrolloff=5

" window options
set showmode
set showcmd
set ruler
set ttyfast
set backspace=indent,eol,start
set laststatus=2

" cursor
if exists('$TMUX')
    let &t_SI = "\<Esc>[5 q"
    let &t_EI = "\<Esc>[0 q"
else
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

" enable mouse support
set mouse=a

" word wrapping
set wrap
set linebreak
set nolist

" better tab completion on commands
set wildmenu
set wildmode=list:longest
set wildignore+=*.pyc,__pycache__,node_modules,venv,build,*.class,bin/main,bin/test,target,dist

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
nnoremap <leader>b :TlistToggle<CR>
nnoremap <leader>c :TComment<CR>
nnoremap <leader>C :TCommentBlock<CR>
vnoremap <leader>c :TComment<CR>
vnoremap <leader>C :TCommentBlock<CR>
nnoremap <expr> <leader>e (len(system('git rev-parse')) ? ':tabnew<cr>:Files' : ':tabnew<cr>:GFiles --exclude-standard --others --cached')."\<cr>"
nnoremap <leader>g <C-w><C-]><C-w>T
nnoremap <leader>G <C-]>
nnoremap <leader>h :tabnew<CR>:ConqueTerm bash<CR>
nnoremap <leader>l :NERDTreeTabsToggle<CR>
nnoremap <leader>k :CheckSyntax<CR>
nnoremap <expr> <leader>o (len(system('git rev-parse')) ? ':Files' : ':GFiles --exclude-standard --others --cached')."\<cr>"
nnoremap <leader>p :set invpaste<CR>
nnoremap <leader>t :tabnew<CR>
nnoremap <leader>s :vsplit<CR>
nnoremap <leader>w :tabclose<CR>

" ; is better than :, and kj is better than ctrl-c
nnoremap ; :
inoremap kj <Esc>

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
