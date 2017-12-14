" ---------------------------------------------
" Regular Vim Configuration (No Plugins Needed)
" ---------------------------------------------

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
set background=dark
colorscheme jellybeans

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
" Disable auto comments
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
" ---------------
" Text Format
" ---------------
" size of a hard tabstop
set tabstop=4
" size of an indent
set shiftwidth=4
" a combination of spaces and tabs are used to simulate tab stops at a width
" other than the (hard)tabstop
set softtabstop=4
" make tab insert indents instead of tabs at the beginning of a line
set smarttab
" always uses spaces instead of tab characters
set expandtab

set autoindent
set cindent

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
" Show invisible characters
set nolist

" Show trailing spaces as dots and carrots for extended lines.
" From Janus, http://git.io/PLbAlw

" Reset the listchars
"set listchars=""
" a tab should display as "  ", trailing whitespace as "."
"set listchars=tab:\ \  " Indentended trailing whitespace
" show trailing spaces as dots
"set listchars+=trail:.
" The character to show in the last column when wrap is off and the line
" continues beyond the right of the screen
"set listchars+=extends:>
" The character to show in the last column when wrap is off and the line
" continues beyond the right of the screen
"set listchars+=precedes:<

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
