"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" The Best vimrc Ever
" Tommy MacWilliam <tmacwilliam@cs.harvard.edu>
"
" Be sure to read the README!
"
" Shortcuts:
"   ; maps to :
"   ,a: ack from the current directory
"   ,b: browse tags
"   ,c: toggle comments
"   ,C: toggle block comments
"   ,e: open file in new tab
"   ,f: format file
"   ,g: ctags go to definition in new tab
"   ,G: ctags go to definition in new buffer
"   ,l: toggle NERDTree
"   ,h: open a shell in a new tab
"   ,k: syntax-check the current file
"   ,m: toggle mouse support
"   ,p: toggle paste mode
"   ,o: open file
"   ,s: split window
"   ,t: new tab
"   ,w: close tab
"   kj: enter normal mode and save
"   Ctrl+{h,j,k,l}: move among windows
"   ii: operate on all text at current indent level
"   ai: operate on all text plus one line up at current indent level
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
Plugin 'mileszs/ack.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'
Plugin 'tomtom/tcomment_vim'
Plugin 'vim-scripts/trailing-whitespace'
Plugin 'vim-scripts/taglist.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'michaeljsmith/vim-indent-object'
Plugin 'gregsexton/gitv'
" Plugin 'bling/vim-airline'
Plugin 'wincent/Command-T'

" syntax files
Plugin 'pangloss/vim-javascript'
Plugin 'tpope/vim-markdown'
Plugin 'voithos/vim-python-syntax'
Plugin 'kchmck/vim-coffee-script'
Plugin 'derekwyatt/vim-scala'
Plugin 'groenewege/vim-less'
Plugin 'leafgarland/typescript-vim'
Plugin 'rhysd/vim-clang-format'
Plugin 'chr4/nginx.vim'
Plugin 'fatih/vim-go'
Plugin 'mxw/vim-jsx'

call vundle#end()
filetype plugin indent on

" command-t config
let g:CommandTTraverseSCM = 'pwd'

" checksyntax config
let g:checksyntax#auto_mode = 0

" taglist config
let g:Tlist_Use_Right_Window = 1

" formatter config
let g:clang_format#style_options = {
    \"BasedOnStyle": "google",
    \"IndentWidth": 4,
    \"ContinuationIndentWidth": 4,
    \"ColumnLimit": 120,
    \"BreakBeforeBraces": "Custom",
    \"BraceWrapping": {"BeforeElse": "true", "BeforeCatch": "true", "SplitEmptyFunction": "true", "SplitEmptyRecord": "true"},
    \"AlignAfterOpenBracket": "AlwaysBreak",
    \"BinPackArguments": "false",
    \"BinPackParameters": "false",
    \"AllowShortFunctionsOnASingleLine": "None",
    \"AllowShortBlocksOnASingleLine": "false",
    \"AllowAllParametersOfDeclarationOnNextLine": "true",
    \"DanglingParenthesis": "true"
\}
let g:clang_format#command = 'clang-format-patched'
let g:clang_format#auto_format = 1
autocmd FileType proto ClangFormatAutoDisable
autocmd FileType javascript ClangFormatAutoDisable

" uncomment if you'd rather use airline than powerline
"" airline config
" let g:airline_powerline_fonts = 1
" let g:airline#extensions#tabline#enabled = 1
" let g:airline#extensions#tabline#fnamemod = ':t'

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

au BufRead,BufNewFile *.g4* set filetype=antlr
au BufRead,BufNewFile *.proto* set filetype=proto
au BufRead,BufNewFile Dockerfile* set filetype=dockerfile
au FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

" omg folding is the worst
set nofoldenable

" omg automatic comment insertion is the worst
au FileType * setlocal comments-=:// comments+=f://

" omg a limit to how many tabs can open is the worst
set tabpagemax=100

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
set wildignore+=*.pyc,__pycache__,node_modules,venv,build,*.class

" close buffer when tab is closed
set nohidden

" ctags
set tags=./tags,tags;

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
nnoremap <leader>e :tabnew<CR>:CommandT<CR>
nnoremap <leader>f :ClangFormat<CR>
nnoremap <leader>g <C-w><C-]><C-w>T
nnoremap <leader>G <C-]>
nnoremap <leader>h :tabnew<CR>:ConqueTerm bash<CR>
nnoremap <leader>l :NERDTreeTabsToggle<CR>
nnoremap <leader>k :CheckSyntax<CR>
nnoremap <leader>o :CommandT<CR>
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

python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup
