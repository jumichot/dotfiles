
" ================ Plugins with Vundle ==============

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'rking/ag.vim'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-commentary'
Plugin 'plasticboy/vim-markdown'
Plugin 'vim-ruby/vim-ruby'
Plugin 'justinj/vim-react-snippets'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'pangloss/vim-javascript'
Plugin 'junegunn/vim-pseudocl'
Plugin 'junegunn/vim-oblique'
Plugin 'elixir-lang/vim-elixir'
Plugin 'jparise/vim-graphql'
" Plugin 'ngmy/vim-rubocop'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

Plugin 'kana/vim-textobj-user'
Plugin 'nelstrom/vim-textobj-rubyblock'

Plugin 'mxw/vim-jsx'
Plugin 'lambdatoast/elm.vim'
Plugin 'semanticart/vim-phoenix'

Plugin 'thoughtbot/vim-rspec'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'ap/vim-css-color'
Plugin 'mattn/emmet-vim'
Plugin 'mhinz/vim-startify'

Plugin 'haya14busa/vim-operator-flashy'
Plugin 'ecomba/vim-ruby-refactoring'
Plugin 'junegunn/vim-easy-align'
Plugin 'kana/vim-operator-user'

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
" set cursorline
set laststatus=2                " Always display the status line
set encoding=utf-8              " required by powerline for display special caracters
set ruler                       " Always show current position
set clipboard=unnamed           " clipboard system
set mouse=a                     " enable mouse
" set lazyredraw                  " redraw only when we need to
set showmatch                   " highlight matching [{()}]
" nnoremap j gj
" nnoremap k gk
set relativenumber

" =================== Theming =======================
" termguicolors
set t_Co=256                    " 256 colors
set background=dark
" colorscheme solarized

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
set list lcs=trail:·,tab:--
set nowrap       "Don't wrap lines
set linebreak    "Wrap lines at convenient points

" ================ Folds ============================
set foldenable          " enable folding
set foldlevelstart=10   " open most folds by default
set foldnestmax=10      " 10 nested fold max
" nnoremap <space> za   " space open/closes folds

" set nofoldenable        "dont fold by default
" set foldmethod=manual   "fold based on indent
" set foldnestmax=3       "deepest fold is 3 levels

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
set wildignore+=*/node_modules/*
set wildignore+=*/bower_components/*
set completeopt-=preview

" ================ Scrolling ========================

set scrolloff=8         "Start scrolling when we're 8 lines away from margins
set sidescrolloff=15
set sidescroll=1

" ===================================================
" ==================== MINE =========================
" ===================================================
set colorcolumn=120

" ============= Leader key and escape key ===========

map <space> <leader>
map <space><space> <leader><leader>
inoremap jk <esc>:w<cr>
inoremap jj <esc>

" =============== General mapings ===================

" Disable arrow keys, no need (hardcore mode)
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
nmap <leader>ru :RuboCop<CR>
nmap <leader>f :Ag
nmap <leader>fu :Ag -Q "
nmap <leader>ba :Gblame<CR>
nmap <leader>Q :qa!<CR>
nmap <leader>r :rt<CR>

" =========== Tabs and window navigation ===========

map <C-J> <C-W>j<C-W>_
map <C-K> <C-W>k<C-W>_
map <C-L> <C-W>l<C-W>_
map <C-H> <C-W>h<C-W>_

nnoremap th  :tabfirst<CR>
nnoremap tl  :tablast<CR>
nnoremap tk  :tabnext<CR>
nnoremap tj  :tabprev<CR>
nnoremap tt  :tabedit<CR>
nnoremap tm  :tabm<Space>
nnoremap td  :bd!<Space>

" nnoremap th  :bfirst<CR>
" nnoremap tl  :blast<CR>
" nnoremap tk  :bn<CR>
" nnoremap tj  :bp<CR>
" nnoremap td  :bd<CR>

nmap <leader>q :q!<CR>
nnoremap ta  :%bd<cr>
set splitright

" fix multi paste
xnoremap p pgvy
" Don't use Ex mode, use Q for formatting
map Q gq
" No Help, please
nmap <F1> <Esc>
nnoremap <leader>json :%!jq .<CR>
map <Leader>re :source ~/.vimrc<CR>
" reindent whole file
map <Leader>= ggVG=
map <Leader>r :e!<CR>
" add comma / semicolon at the end of the line
nnoremap <leader>; m`A;<Esc>``
nnoremap <Leader>, m`A,<Esc>``
" Useful
nnoremap <Leader>o o<Esc>k
nnoremap <Leader>O O<Esc>j
" Rails shortcut
nmap <leader>rr :e config/routes.rb<CR>
nmap <leader>sc :e db/schema.rb<CR>
" get current file path
nmap <Leader>cl :let @*=expand("%:p")<CR>
" Best debugging snippet in ruby
nnoremap <leader>wtf oputs "-" * 90<c-m>p <c-m>puts "-" * 90<esc>

cmap w!! w !sudo tee % >/dev/null
autocmd FileType gitcommit setlocal spell
autocmd BufRead,BufNewFile *.md setlocal spell
autocmd BufRead,BufNewFile *.markdown setlocal spell

" AutoCorrect typos in Insert Mode
iabbrev lenght length
iabbrev heigth height
iabbrev widht width
iabbrev adress address
iabbrev fucntion function
iabbrev funciton function

" ===================================================
" ================= Plugins configs =================
" ===================================================

" ===================== Nerdtree ====================

let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let g:NERDTreeWinSize = 35
nmap <leader>n :NERDTreeToggle<CR>
map <Leader>m :NERDTree<CR>
" Open the project tree and expose current file in the nerdtree
nnoremap <silent> <leader>cf :NERDTreeFind<CR>:vertical res 30<CR>
let g:undotree_SetFocusWhenToggle=1 " if undotree is opened, it is likely one wants to interact with it.

" ================== CtrlP with Ag =================

if executable("ag")
  " set grepprg=ag\ --nogroup\ --nocolor
  " let g:ctrlp_match_window = 'bottom,order:ttb'
  let g:ctrlp_switch_buffer = 0
  let g:ctrlp_working_path_mode = 0
  let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'
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

" =================== AIRLINE =================
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'

" Enable built-in matchit plugin
runtime macros/matchit.vim

" ULTISNIPS
let g:UltiSnipsExpandTrigger="<c-l>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" let g:syntastic_scss_checkers = ['scss_lint']

" RSpec.vim mappings
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>
let g:rspec_runner = "os_x_iterm"
let g:rspec_command  = "!bundle exec rspec --tag ~@js {spec}"
" let g:rspec_command  = "!zeus rspec --tag ~@js {spec}"

let g:vim_markdown_folding_disabled=1
let g:vim_markdown_frontmatter=1
" nnoremap <leader>gv `[v`] " highlight last inserted text

map <Leader>p :CtrlPBuffer<cr>

let g:oblique#incsearch_highlight_all=1
" ========================== Search ==================
set grepprg=ag\ --nogroup\ --nocolor
nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>

" ========================= Misc ===================
" Comment
nmap <Leader>c gcc
vmap <Leader>c gc
let g:syntastic_javascript_checkers = ['eslint']
set timeout           " for mappings
set timeoutlen=1000   " default value
set ttimeout          " for key codes
set ttimeoutlen=10    " unnoticeable small value
" set shellcmdflag=-ic
map y <Plug>(operator-flashy)
nmap Y <Plug>(operator-flashy)$
let g:elm_format_autosave = 1
set re=1

xmap ga <Plug>(EasyAlign) " Start interactive EasyAlign in visual mode (e.g. vipga)
nmap ga <Plug>(EasyAlign) " Start interactive EasyAlign for a motion/text object (e.g. gaip)
" vnoremap J :m '>+1<CR>gv=gv
" vnoremap K :m '<-2<CR>gv=gv

hi htmlArg gui=italic
hi Comment gui=italic
hi Type    gui=italic
hi htmlArg cterm=italic
hi Comment cterm=italic
hi Type    cterm=italic
set t_ut=
let g:airline_highlighting_cache=1 " better for ruby files
