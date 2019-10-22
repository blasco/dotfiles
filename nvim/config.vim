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
" Keep all this files in contained folders so the system's filesystem
set backup
set backupdir=~/.config/nvim/.backup
" Persistent Undo
set undofile
set undodir=~/.config/nvim/.undo
" swapfiles
set directory=~/.config/nvim/.swap

" Change working directory to current directory
set autochdir

" Disable existing swap file warning message
set shortmess+=A
" Disable Intro Message
set shortmess+=I

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
set wildmenu           " Turn on WiLd menu. Allows completing :commands with tab
set hidden             " Change buffer - without saving. This allows to open new files whithout having 
                       " to save the file we are leaving every time, which is quite bothering
set history=1000       " Number of things to remember in history.
set timeoutlen=1000    " Time to wait for a command (after leader for example).
set formatoptions=crql
set nostartofline      " Don't go to the start of the line after some commands
"set formatoptions+=wt  " Auto format lines while typing
set textwidth=60

" Add {count}[j|k] to the jump list
nnoremap <expr> k (v:count > 1 ? "m`" . v:count : "") . "gk"
nnoremap <expr> j (v:count > 1 ? "m`" . v:count : "") . "gj"

" Disable auto comments
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Allow incrementing letters with <c-a> and <c-m>
set nrformats=alpha

set autoindent
set foldmethod=marker

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
set hlsearch " Highlight search, dissable it with ESC
hi Search ctermbg=NONE ctermfg=126 cterm=bold
hi IncSearch ctermbg=126 ctermfg=15 cterm=bold
hi Search guibg=NONE guifg=MediumVioletRed gui=bold
hi IncSearch guibg=MediumVioletRed guifg=White gui=bold

nnoremap <silent> <esc> :noh<return><esc>
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
" TODO: SafeState not wokring in neovim
"nmap gv v@v
"
"let s:last_mode = 'n'
"augroup visual_enter_normal_enter
"    au!
"    au SafeState * call s:fire_visual_enter_normal_enter()
"augroup END
"
"fu! s:fire_visual_enter_normal_enter() abort
"    let mode = mode()
"    if s:last_mode is# 'n'
"    \ && index(['v', 'V', "\<c-v>"], mode) != -1
"    \ && exists('#User#VisualEnter')
"        do <nomodeline> User VisualEnter
"    elseif s:last_mode isnot# 'n'
"    \ && mode() is# 'n'
"    \ && exists('#User#NormalEnter')
"        do <nomodeline> User NormalEnter
"    endif
"    let s:last_mode = mode
"endfu
"
"augroup record_keys_in_visual_mode
"    au!
"    au User VisualEnter call s:recording_start()
"    au User NormalEnter call s:recording_stop()
"augroup END
"
"fu! s:recording_start() abort
"    if reg_recording() is# ''
"        call feedkeys('qv', 'int')
"    endif
"endfu
"
"fu! s:recording_stop() abort
"    if reg_recording() is# 'v' && mode() is# 'n'
"        call feedkeys('q', 'int')
"    endif
"endfu
