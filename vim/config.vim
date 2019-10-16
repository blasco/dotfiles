" ---------------------------------------------
" Regular Vim Configuration (No Plugins Needed)
" ---------------------------------------------

" ---------------
" Theme
" ---------------
set t_Co=256
set guifont=Inconsolata\ Nerd\ Font\ Mono\ 15

" -----------------------------
" Backups, Tmp Files, and Undo
" -----------------------------
" Keep all this files in contained folders so the system's filesystem doesn't 
" get messy
set backup
set backupdir=~/.vim/.backup
" Persistent Undo
set undofile
set undodir=~/.vim/.undo
" swapfiles
set directory=~/.vim/.swap

" Change working directory to current directory
set autochdir

" Disable existing swap file warning message
set shortmess+=A

" ---------------
" UI
" ---------------
set ruler          " Ruler on
set number         " Line numbers on
set relativenumber " Line RelativeNumvers on
"set cmdheight=2   " Make the command area two lines high
set encoding=UTF-8
set previewheight=25

"Disable scroll bars
set guioptions-=m
set guioptions-=T
set guioptions-=r
set guioptions-=L

" ---------------
" Behaviors
" ---------------
syntax enable
set autoread           " Automatically reload changes if detected
set wildmenu           " Turn on WiLd menu
" Change buffer - without saving. This allows to open new files whithout having to save the file we are leaving every time, which is quite bothering
set hidden
set history=1000        " Number of things to remember in history.
set cf                 " Enable error files & error jumping.
set autowrite          " Writes on make/shell commands
set timeoutlen=1000    " Time to wait for a command (after leader for example).
set formatoptions=crql
set nostartofline      " Don't go to the start of the line after some commands
set scrolloff=3        " Keep three lines below the last line when scrolling
" Auto format lines while typing
set formatoptions+=wt
set tw=80

" Better complete options to speed it up
"set complete=.,w,b,u,U

" Disable auto comments
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Allow incrementing letters with <c-a> and <c-m>
set nrformats=alpha

set autoindent

" ---------------
" Text Format
" ---------------
" represent tabs with 4 white spaces
set tabstop=4
set shiftwidth=4
set softtabstop=4

" always uses spaces instead of tab characters
set expandtab

" ---------------
" C++
" ---------------
" C++ indentation
autocmd BufEnter *.cpp :setlocal cindent cino=j1,(0,ws,Ws

" ---------------
" Web development indentation
" ---------------
autocmd Filetype html,css,scss,typescript setlocal tabstop=2
autocmd Filetype html,css,scss,typescript setlocal shiftwidth=2
autocmd Filetype html,css,scss,typescript setlocal softtabstop=2

" ---------------
" Latex
" ---------------
let g:tex_flavor = "latex"
autocmd FileType latex,tex,md,markdown setlocal spell

" ---------------
" Searching
" ---------------
set ignorecase " Case insensitive search
set smartcase  " Non-case sensitive search
set incsearch
set nohlsearch " Disabl search highlight
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

" ---------------
" Auto record visual mode
" ---------------
" Allows executing operators with a different syntax.
" First we go to visual mode and we can select with the target-objects the text
" we wan to work on. Then we execute the operation. Finally we can repeat this
" with gv (goto visual, repeat visual)
" TODO: ideally it should be repeated with '.'.

nmap gv v@v

let s:last_mode = 'n'
augroup visual_enter_normal_enter
    au!
    au SafeState * call s:fire_visual_enter_normal_enter()
augroup END

fu! s:fire_visual_enter_normal_enter() abort
    let mode = mode()
    if s:last_mode is# 'n'
    \ && index(['v', 'V', "\<c-v>"], mode) != -1
    \ && exists('#User#VisualEnter')
        do <nomodeline> User VisualEnter
    elseif s:last_mode isnot# 'n'
    \ && mode() is# 'n'
    \ && exists('#User#NormalEnter')
        do <nomodeline> User NormalEnter
    endif
    let s:last_mode = mode
endfu

augroup record_keys_in_visual_mode
    au!
    au User VisualEnter call s:recording_start()
    au User NormalEnter call s:recording_stop()
augroup END

fu! s:recording_start() abort
    if reg_recording() is# ''
        call feedkeys('qv', 'int')
    endif
endfu

fu! s:recording_stop() abort
    if reg_recording() is# 'v' && mode() is# 'n'
        call feedkeys('q', 'int')
    endif
endfu
