
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
Plugin 'tpope/vim-haml'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-unimpaired'
Plugin 'kchmck/vim-coffee-script'
Plugin 'plasticboy/vim-markdown'
Plugin 'vim-ruby/vim-ruby'
" nelstrom's plugin depends on kana's
Plugin 'kana/vim-textobj-user'
Plugin 'nelstrom/vim-textobj-rubyblock'
Plugin 'tpope/vim-commentary'
Plugin 'thoughtbot/vim-rspec'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'ngmy/vim-rubocop'
" Plugin 'mxw/vim-jsx'
Plugin 'bling/vim-airline'
Plugin 'moll/vim-node'
Plugin 'myhere/vim-nodejs-complete'
Plugin 'pangloss/vim-javascript'
" Plugin 'wookiehangover/jshint.vim'
Plugin 'marijnh/tern_for_vim'
Plugin 'Shougo/unite.vim'
Plugin 'kshenoy/vim-signature'
Plugin 'Shougo/vimproc.vim'
Plugin 'Shougo/vimshell.vim'
Plugin 'rizzatti/dash.vim'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'digitaltoad/vim-jade'
Plugin 'burnettk/vim-angular'
Plugin 'rstacruz/sparkup'
Plugin 'parkr/vim-jekyll'
" Plugin 'Townk/vim-autoclose'
Plugin 'fatih/vim-go'

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
set cursorline
set laststatus=2                " Always display the status line
set encoding=utf-8              " required by powerline for display special caracters
set ruler                       " Always show current position
set clipboard=unnamed           " clipboard system
set mouse=a                     " enable mouse
" set lazyredraw                  " redraw only when we need to
set showmatch                   " highlight matching [{()}]
" nnoremap j gj
" nnoremap k gk
" =================== Theming =======================

set t_Co=256                    " 256 colors
set background=dark
colorscheme solarized

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
set completeopt-=preview

" ================ Scrolling ========================

set scrolloff=8         "Start scrolling when we're 8 lines away from margins
set sidescrolloff=15
set sidescroll=1

" ===================================================
" ==================== MINE =========================
" ===================================================

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
nmap <leader>fs :Ag 
nmap <leader>fu :Ag -Q "
nmap <leader>ba :Gblame<CR>
nmap <leader>Q :qa!<CR>

" =========== Tabs and window navigation ===========

map <C-J> <C-W>j<C-W>_
map <C-K> <C-W>k<C-W>_
map <C-L> <C-W>l<C-W>_
map <C-H> <C-W>h<C-W>_

nnoremap th  :bfirst<CR>
nnoremap tk  :bn<CR>
nnoremap tj  :bp<CR>
nnoremap tl  :blast<CR>
nnoremap tt  :enew<CR>
nnoremap td  :bd<CR>
nmap <leader>q :bd<CR>
nnoremap ta  :1,1000bd<CR>

set splitright

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

" fix multi paste
xnoremap p pgvy
" Enable built-in matchit plugin
runtime macros/matchit.vim

let g:UltiSnipsExpandTrigger="<c-l>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:syntastic_scss_checkers = ['scss_lint']

" Don't use Ex mode, use Q for formatting
map Q gq
" No Help, please
nmap <F1> <Esc>
" nnoremap <leader>json :%!jq .<CR>
" RSpec.vim mappings
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>
let g:rspec_runner = "os_x_iterm"
let g:rspec_command  = "!bundle exec rspec --tag ~@js {spec}"
" let g:rspec_command  = "!zeus rspec --tag ~@js {spec}"
" syntax highlting for jsx on .js files
" let g:jsx_ext_required = 0

map <Leader>re :source ~/.vimrc<CR>
map <Leader>= ggVG=
map <Leader>r :e!<CR>
" add semi colon at the end of the line
nnoremap <leader>; m`A;<Esc>``

set colorcolumn=120
autocmd FileType gitcommit setlocal spell
autocmd BufRead,BufNewFile *.md setlocal spell
autocmd BufRead,BufNewFile *.markdown setlocal spell
let g:vim_markdown_folding_disabled=1
let g:vim_markdown_frontmatter=1
" nnoremap <leader>gv `[v`] " highlight last inserted text

au FileType go inoremap jk <esc>:GoImports<cr>:w<cr>
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)
map <Leader>, :CtrlPBuffer<cr>
