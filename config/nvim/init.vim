filetype plugin indent on

" ========================== PLUGINS ================
call plug#begin()
  Plug 'justinmk/vim-sneak'
  Plug 'tweekmonster/startuptime.vim', {'on': 'StartupTime'}
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  Plug 'scrooloose/nerdtree', {'on': ['NERDTree', 'NERDTreeToggle', 'NERDTreeFind']}
  Plug 'ryanoasis/vim-devicons', {'on': ['NERDTree', 'NERDTreeToggle', 'NERDTreeFind']} " 'https://github.com/ryanoasis/vim-devicons
  " Plug 'tiagofumo/vim-nerdtree-syntax-highlight', {'on': ['NERDTree', 'NERDTreeToggle', 'NERDTreeFind']} " https://github.com/tiagofumo/vim-nerdtree-syntax-highlight
  Plug 'junegunn/vim-easy-align'
  " Plug 'airblade/vim-gitgutter'
  Plug 'lifepillar/vim-solarized8' " color theme
  Plug 'dense-analysis/ale' " linters & formaters
  Plug 'sheerun/vim-polyglot' " syntaxt highlighting
  Plug 'mhinz/vim-grepper'
  Plug 'SirVer/ultisnips' " snippets
  Plug 'honza/vim-snippets' " snippets
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'tpope/vim-rails'
  Plug 'tpope/vim-endwise'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-repeat'
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-unimpaired'
  Plug 'tpope/vim-commentary'
  Plug 'bling/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'kana/vim-textobj-user'
  Plug 'vim-scripts/ruby-matchit'
  Plug 'editorconfig/editorconfig-vim'
  " Plug 'ap/vim-css-color'
  " Plug 'mhinz/vim-startify'
  Plug 'ecomba/vim-ruby-refactoring'
  Plug 'janko-m/vim-test'
  Plug 'kassio/neoterm'
  Plug 'croaker/mustang-vim'
  Plug 'junegunn/goyo.vim'
  Plug 'nelstrom/vim-visual-star-search'
  Plug 'pbogut/fzf-mru.vim'
  Plug 'ludovicchabant/vim-gutentags'
  " Plug 'majutsushi/tagbar'
  Plug 'pechorin/any-jump.vim'
  Plug 'terryma/vim-multiple-cursors'
  Plug 'dracula/vim', { 'as': 'dracula' }
  Plug 'nelstrom/vim-textobj-rubyblock'
  Plug 'kana/vim-operator-user'
  Plug 'haya14busa/vim-operator-flashy'
  " Plug 'powerman/vim-plugin-AnsiEsc'
  Plug 'mattn/emmet-vim'
  Plug 'ripxorip/aerojump.nvim', { 'do': ':UpdateRemotePlugins' }
  Plug 'AndrewRadev/splitjoin.vim'
  Plug 'wellle/targets.vim'
call plug#end()

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
" set cursorline                  " Display current line bg
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
set termguicolors
colorscheme dracula
" colorscheme solarized
" colorscheme mustang
" colorscheme OceanicNext
" colorscheme base16-default-dark
"
"k

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
set foldlevelstart=1   " open most folds by default
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
set colorcolumn=100

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
nmap <leader>ba :Gblame<CR>
nmap <leader>Q :qa!<CR>
nmap <leader>a :AV<CR>
nmap <leader>s <Plug>(AerojumpSpace)
nmap <leader>k :AnyJump<CR>
nnoremap K :GrepperAg <C-R><C-W><CR>
vnoremap K y:GrepperAg "<C-R>=escape(@",'/\[]')<CR>"<CR>

nmap <leader>l :BLines!<CR>
nmap <leader>L :BCommits!<CR>
" nnoremap K :Rg! <C-R><C-W><CR>

" =========== Tabs and window navigation ===========

map <C-J> <C-W>j
map <C-K> <C-W>k
map <C-L> <C-W>l
map <C-H> <C-W>h

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
nmap <leader>b :bd<CR>
nmap <leader>x :bd<CR>
nnoremap ta  :%bd<cr>
set splitright

" fix multi paste
xnoremap p pgvy
" Don't use Ex mode, use Q for formatting
map Q gq
" No Help, please
nmap <F1> <Esc>
nnoremap <leader>json :%!jq .<CR>
map <Leader>re :source /Users/ju/.config/nvim/init.vim<CR>
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
nmap <Leader>cd :let @*=expand("%")<CR>
" Best debugging snippet in ruby
nnoremap <leader>wtf oputs "-" * 90<c-m>p <c-m>puts "-" * 90<esc>bb
nnoremap <leader>wtb omy_logger = Logger.new("#{Rails.root}/log/my.log")<c-m>my_logger.info("#" * 90) <c-m>my_logger.info()<c-m>my_logger.info("#" * 90)<esc>

cmap w!! w !sudo tee % >/dev/null
autocmd FileType gitcommit setlocal spell
" autocmd BufRead,BufNewFile *.md setlocal spell
" autocmd BufRead,BufNewFile *.markdown setlocal spell

" AutoCorrect typos in Insert Mode
iabbrev lenght length
iabbrev heigth height
iabbrev widht width
iabbrev adress address
iabbrev fucntion function
iabbrev funciton function

" ========================================== NEW =============
" ========================================== NEW =============
" ========================================== NEW =============
"
" =========== LINTERS & FORMATTERS ===========

au FileType javascript setlocal formatprg=prettier
au FileType javascript.jsx setlocal formatprg=prettier
au FileType typescript setlocal formatprg=prettier\ --parser\ typescript
au FileType html setlocal formatprg=js-beautify\ --type\ html
au FileType scss setlocal formatprg=prettier\ --parser\ css
au FileType css setlocal formatprg=prettier\ --parser\ css

let g:ale_elixir_elixir_ls_release='/Users/ju/CODE/elixir-ls/release/'
let g:ale_linters = {
\   'javascript': ['eslint'],
\   'ruby': ['standardrb', 'rubocop'],
\   'elixir': ['elixir-ls'],
\}

let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'ruby': ['standardrb', 'rubocop'],
\   'javascript': ['prettier'],
\   'scss': ['prettier'],
\   'html': ['prettier'],
\   'css': ['prettier'],
\   'elixir': ['mix_format'],
\}
let g:ale_fix_on_save = 1

function! LinterStatus() abort
  let l:counts = ale#statusline#Count(bufnr(''))

  let l:all_errors = l:counts.error + l:counts.style_error
  let l:all_non_errors = l:counts.total - l:all_errors

  return l:counts.total == 0 ? '✨ all good ✨' : printf(
        \   '😞 %dW %dE',
        \   all_non_errors,
        \   all_errors
        \)
endfunction

set statusline=
set statusline+=%m
set statusline+=\ %f
set statusline+=%=
set statusline+=\ %{LinterStatus()}

" deoplete autocompletion
let g:deoplete#enable_at_startup = 1
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ deoplete#mappings#manual_complete()
function! s:check_back_space() abort "{{{
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction"}}}

" =========== FZF ===========
" file search, alternative to ctrlp
map <c-p> :GFiles<cr>
nmap <Leader>p :Files<CR>
map <leader>B :Buffers<cr>
map <leader>d :Buffers<cr>
map <leader>H :History<cr>
map <leader>f :Rg!<cr>'
map <leader>F :Rg<cr>
nmap <leader>g :GrepperAg '
" nmap <Leader>F :Rg!<space>
" nmap <leader>f :Ag
" nmap <leader>fu :Ag -Q "
nmap <Leader>m :Rg<CR>
nnoremap <silent> <Leader>m :FZFMru<CR>
if has("nvim")
    " Escape inside a FZF terminal window should exit the terminal window
    " rather than going into the terminal's normal mode.
    autocmd FileType fzf tnoremap <buffer> <Esc> <Esc>
endif


" =========== ULTISNIPS ===========
let g:UltiSnipsExpandTrigger="<c-l>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" ===================== Nerdtree ====================
"
" {{{
  let g:NERDTreeMinimalUI = 1
  let g:NERDTreeHijackNetrw = 0
  let g:NERDTreeWinSize = 40
  let g:NERDTreeChDirMode = 2
  let g:NERDTreeAutoDeleteBuffer = 1
  let g:NERDTreeShowLineNumbers = 1
  let g:NERDTreeShowHidden=0
  let g:NERDTreeDirArrows = 1

  " let g:NERDTreeShowBookmarks = 1
  let g:NERDTreeCascadeOpenSingleChildDir = 1

  " Check if NERDTree is open or active
  function! IsNERDTreeOpen()
    return exists("t:NERDTreeBufName") && (bufwinnr(t:NERDTreeBufName) != -1)
  endfunction

  " Call NERDTreeFind iff NERDTree is active, current window contains a modifiable
  " file, and we're not in vimdiff
  function! SyncTree()
    if &modifiable && IsNERDTreeOpen() && strlen(expand('%')) > 0 && !&diff
      NERDTreeFind
      wincmd p
    endif
  endfunction

  " Highlight currently open buffer in NERDTree
  autocmd BufRead * call SyncTree()

  function! NERDTreeToggleAndFind()
    if (exists('t:NERDTreeBufName') && bufwinnr(t:NERDTreeBufName) != -1)
      execute ':NERDTreeClose'
    else
      execute ':NERDTreeFind'
    endif
  endfunction
" }}}

nmap <leader>n :NERDTreeToggle<cr><c-w>l:call SyncTree()<cr><c-w>h
" Open the project tree and expose current file in the nerdtree
nnoremap <silent> <leader>cf :call NERDTreeToggleAndFind()<CR>:vertical res 40<CR>

" =================== AIRLINE =================
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline_highlighting_cache=1 " better for ruby files

" =================== text object =================
" Enable built-in matchit plugin
runtime macros/matchit.vim
"
" Comment
nmap <Leader>c gcc
vmap <Leader>c gc

" ========================== Search ==================
" set grepprg=ag\ --nogroup\ --nocolor
" nnoremap K :Rg! <C-R><C-W><CR>

map y <Plug>(operator-flashy)
nmap Y <Plug>(operator-flashy)$

xmap ga <Plug>(EasyAlign) " Start interactive EasyAlign in visual mode (e.g. vipga)
nmap ga <Plug>(EasyAlign) " Start interactive EasyAlign for a motion/text object (e.g. gaip)


" vnoremap J :m '>+1<CR>gv=gv
" vnoremap K :m '<-2<CR>gv=gv
" set re=1
" set t_ut=
"
" vim-test maps
map <silent> <leader>t :TestNearest<CR>
map <silent> <leader>T :TagbarToggle<CR>

" neovim config
if has("nvim")
  " change cursor to bar in insert mode
  let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1

  " run tests with :T
  let test#strategy = "neoterm"

  " vertical split instead of the default horizontal
  let g:neoterm_default_mod = "vertical"

  " pretty much essential: by default in terminal mode, you have to press ctrl-\-n to get into normal mode
  " ain't nobody got time for that
  tnoremap <Esc> <C-\><C-n>

  " optional: make it easier to switch between terminal splits
  " ctrl doesn't work for some reason so I use alt
  " I think the terminal is capturing ctrl and not bubbling to vim or something
  tnoremap <A-h> <C-\><C-n><C-w>h
  tnoremap <A-j> <C-\><C-n><C-w>j
  tnoremap <A-k> <C-\><C-n><C-w>k
  tnoremap <A-l> <C-\><C-n><C-w>l

  " totally optional: mirror the alt split switching in non-terminal splits
  nnoremap <A-h> <C-w>h
  nnoremap <A-j> <C-w>j
  nnoremap <A-k> <C-w>k
  nnoremap <A-l> <C-w>l
endif


set guicursor+=a:blinkon1 " blink cursor for videos?

let g:python3_host_prog = expand('/usr/local/Cellar/python@3.8/3.8.2/bin/python3')
let g:operator#flashy#group='Visual'
let g:user_emmet_leader_key='<C-Y>'

" diff merge
set diffopt+=vertical
nnoremap <leader>gd :Gdiffsplit!<CR>
nnoremap gdh :diffget //2<CR>
nnoremap gdl :diffget //3<CR>
