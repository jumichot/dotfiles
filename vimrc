set nocompatible              " be iMproved, required
filetype off                  " required

" ================ Plugins with Vundle ==============

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'rking/ag.vim'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'
Plugin 'kchmck/vim-coffee-script'

call vundle#end()
filetype plugin indent on

" ================ General Config ====================

syntax on                       " Turn on syntax highlighting
set number                      " Line numbers are good
set backspace=indent,eol,start  " Allow backspace in insert mode
set history=1000                " Store lots of :cmdline history
set showcmd                     " Show incomplete cmds down the bottom
set showmode                    " Show current mode down the bottom
set visualbell                  " No sounds
set autoread                    " Reload files changed outside vim
set hidden                      " Better buffers
set laststatus=2                " Always display the status line
set encoding=utf-8              " required by powerline for display special caracters
set ruler                       " Always show current position
set clipboard=unnamed           " clipboard system
set mouse=a                     " enable mouse

" =================== Theming =======================

set t_Co=256                    " 256 colors
color mustang

" ================ Search Settings  =================

set incsearch        "Find the next match as we type the search
set hlsearch         "Hilight searches by default
set viminfo='100,f1  "Save up to 100 marks, enable capital marks
:set ignorecase
:set smartcase

" ================ Turn Off Swap Files ==============

set nobackup
set nowritebackup
set noswapfile

" ================ Persistent Undo ==================

" Keep undo history across sessions, by storing in file.
silent !mkdir ~/.vim/backups > /dev/null 2>&1
set undodir=~/.vim/backups
set undofile
set undolevels=1000         "maximum number of changes that can be undone
set undoreload=10000        "maximum number lines to save for undo on a buffer reload

" ================ Indentation ======================

set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab
set list listchars=tab:\ \ ,trail:·
set nowrap       "Don't wrap lines
set linebreak    "Wrap lines at convenient points

" ================ Folds ============================

set foldmethod=indent   "fold based on indent
set foldnestmax=3       "deepest fold is 3 levels
set nofoldenable        "dont fold by default

" ================ Completion =======================

set wildmenu
set wildmode=list:longest,full
set wildignore=*.o,*.obj,*~ "stuff to ignore when tab completing
set wildignore+=*vim/backups*
set wildignore+=*sass-cache*
set wildignore+=*DS_Store*
set wildignore+=vendor/rails/**
set wildignore+=vendor/cache/**
set wildignore+=*.gem
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=*.png,*.jpg,*.gif
set completeopt-=preview

" ================ Scrolling ========================

set scrolloff=8         "Start scrolling when we're 8 lines away from margins
set sidescrolloff=15
set sidescroll=1

" ===================================================
" ==================== mine =========================
" ===================================================

" ============= Leader key and escape key ===========

map <space> <leader>
map <space><space> <leader><leader>
:imap jk <esc>:w<cr>
inoremap jj <esc>

" =============== General mapings ===================

" Disable arrow keys (hardcore)
map  <up>    <nop>
imap <up>    <nop>
map  <down>  <nop>
imap <down>  <nop>
map  <left>  <nop>
imap <left>  <nop>
map  <right> <nop>
imap <right> <nop>

" toggle paste mode
:nmap \o :set paste!<CR>
" remove search hilighting
nmap <silent> // :nohlsearch<CR>

" =========== Tabs and window navigation ===========

map <C-J> <C-W>j<C-W>_
map <C-K> <C-W>k<C-W>_
map <C-L> <C-W>l<C-W>_
map <C-H> <C-W>h<C-W>_

" tabs navigation
nnoremap th  :tabfirst<CR>
nnoremap tk  :tabnext<CR>
nnoremap tj  :tabprev<CR>
nnoremap tl  :tablast<CR>
nnoremap tt  :tabedit<CR>
nnoremap tm  :tabm<Space>
nnoremap td  :tabclose<CR>

set splitright

" ===================================================
" ================= Plugins configs =================
" ===================================================

" ===================== Nerdtree ====================

let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let g:NERDTreeWinSize = 35
nmap <leader>n :NERDTreeToggle<CR>
" Open the project tree and expose current file in the nerdtree
nnoremap <silent> <leader>cf :NERDTreeFind<CR>:vertical res 30<CR>
let g:undotree_SetFocusWhenToggle=1 " if undotree is opened, it is likely one wants to interact with it.

" ================== CtrlP with Ag =================

if executable("ag")
  set grepprg=ag\ --nogroup\ --nocolor
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif

" ====================== TMUX  ====================

" Setup carret
"tmux will only forward escape sequences to the terminal if surrounded by a DCS sequence
if exists('$TMUX')
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

" =================== POWERLINE =================

source /usr/local/lib/python2.7/site-packages/powerline/bindings/vim/plugin/powerline.vim
