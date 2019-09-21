" ---------------------------------------------
" Regular Vim Configuration (No Plugins Needed)
" ---------------------------------------------

" C++ indentation 
autocmd BufEnter *.cpp :setlocal cindent cino=j1,(0,ws,Ws

" Disable existing swap file warning message
set shortmess+=A

"Disable scroll bars
set guioptions-=m
set guioptions-=T
set guioptions-=r
set guioptions-=L

" ---------------
" Color
" ---------------
set t_Co=256
colorscheme jellybeans
set guifont=Inconsolata\ 13

" -----------------------------
" Backups, Tmp Files, and Undo
" -----------------------------
set backup
set backupdir=~/.vim/.backup
" Persistent Undo
set undofile
set undodir=~/.vim/.undo
" swapfiles
set directory=~/.vim/.swap

" Change working directory to current directory
set autochdir    

" ---------------
" UI
" ---------------
set ruler          " Ruler on
set number         " Line numbers on
set relativenumber " Line RelativeNumvers on
"set cmdheight=2   " Make the command area two lines high
set encoding=utf-8
set noshowmode     " Don't show the mode since Powerline shows it
"set title          " Set the title of the window in the terminal to the file
set previewheight=25

" ---------------
" Behaviors
" ---------------
syntax enable
set autoread           " Automatically reload changes if detected
set wildmenu           " Turn on WiLd menu
set hidden             " Change buffer - without saving
set history=768        " Number of things to remember in history.
set cf                 " Enable error files & error jumping.
set clipboard=unnamedplus  " Yanks go on clipboard instead.
set go+=a              " Visual selection to clipboard.
set autowrite          " Writes on make/shell commands
set timeoutlen=450     " Time to wait for a command (after leader for example).
set formatoptions=crql
"set2 iskeyword+=\$,-    " Add extra characters that are valid parts of variables
set nostartofline      " Don't go to the start of the line after some commands
set scrolloff=3        " Keep three lines below the last line when scrolling
" Auto format lines while typing
set formatoptions+=wt
set tw=80
" Disable auto comments
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
" ---------------
" Text Format
" ---------------
set tabstop=4
set shiftwidth=4
set softtabstop=4
" always uses spaces instead of tab characters
set expandtab

set autoindent
"set cindent

" ---------------
" Searching
" ---------------
set ignorecase " Case insensitive search
set smartcase  " Non-case sensitive search
set incsearch
set nohlsearch      " Disabl search highlight
set wildignore+=*.o,*.obj,*.exe,*.so,*.dll,*.pyc,.svn,.hg,.bzr,.git,
  \.sass-cache,*.class,*.scssc,*.cssc,sprockets%*,*.lessc

" ---------------
" Visual
" ---------------
set showmatch   " Show matching brackets.
set matchtime=2 " How many tenths of a second to blink
" Hide invisible characters
set nolist
set listchars=tab:▸\ ,eol:¬

" ---------------
" Sounds
" ---------------
set noerrorbells
set novisualbell

" ---------------
" Mouse
" ---------------
set mousehide  " Hide mouse after chars typed
set mouse=a    " Mouse in all modes

" Better complete options to speed it up
set complete=.,w,b,u,U

" Tex flavor
let g:tex_flavor = "latex"
autocmd FileType latex,tex,md,markdown setlocal spell

" ---------------
" Additional Text Objects
" ---------------
" l clashes with target.vim, we use c for current line
" Line text object (in _c_urrent line) (arround _c_current line)
 xnoremap ic g_o^
 onoremap ic :normal vic<CR>
 xnoremap ac $o^
 onoremap ac :normal vac<CR>
" Whole buffer text object (in document)
xnoremap id GoggV
onoremap id :normal vid<CR>
