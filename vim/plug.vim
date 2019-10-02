call plug#begin()

" -------------
" UI Additions
" -------------
" Theme 
Plug 'nanotech/jellybeans.vim' 
" Approximate theme in console
Plug 'vim-scripts/CSApprox'

" Change font size with <leader><leader>+
Plug 'drmikehenry/vim-fontsize'
Plug 'vim-scripts/ZoomWin'

" Register preview
Plug 'junegunn/vim-peekaboo'

" Smooth scrolling 
Plug 'terryma/vim-smooth-scroll'

" Powerline bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'

" Color picker
Plug 'Rykka/colorv.vim'

" Hihgliht yanked text
Plug 'markonm/hlyank.vim'

" -----------------
" Syntax Highligt
" -----------------
Plug 'sudar/vim-arduino-syntax'
Plug 'leafgarland/typescript-vim'
Plug 'peterhoeg/vim-qml'

" ----------
" Extensions
" ----------

" Fuzzy file explorer and most recent used files 
Plug 'ctrlpvim/ctrlp.vim'

" Navigation bar
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

" Fuzzy finder and ripgrep explorer
Plug 'junegunn/fzf.vim'
" Provides :Rename command
Plug 'danro/rename.vim'

" Git integration
Plug 'tpope/vim-fugitive'
Plug 'idanarye/vim-merginal'

" ------------------
" Additional Motions
" ------------------
Plug 'easymotion/vim-easymotion'

" -------------------
" Additinal Operators
" -------------------

" gt : go title
Plug 'christoomey/vim-titlecase'

" go: go order
Plug 'christoomey/vim-sort-motion'

" m: move (cut), d: delete 
Plug 'svermeulen/vim-cutlass'

" gc : go comment
Plug 'tpope/vim-commentary'

" ds[',", ...]: delete surround
" cs[',", ...]: 
" ysiW[',"]: yank surround in Word '
Plug 'tpope/vim-surround'

" gr: go replace register
Plug 'vim-scripts/ReplaceWithRegister'

" Provides :S for smart substitution and coercion:
" cr[c (camel), <space>, -, s (snake_cas), m (mixed)]
Plug 'tpope/vim-abolish'

" gA & ga : go All, shows all the number representations of the number under cursor
" cr[h,b,d] : convert to binary decimal etc
Plug 'glts/vim-magnum' " Required by vim-radical
Plug 'glts/vim-radical' 

" s : substitute 
" sr: substitute range
Plug 'svermeulen/vim-subversive'

" -----------------------
" Additional Text Objects
" -----------------------

" i: indent
Plug 'michaeljsmith/vim-indent-object'
 
" Pair text objects:
" ( ) (work on parentheses)
" { } B (work on curly braces)
" [ ] (work on square brackets)
" < > (work on angle brackets)
" t (work on tags)

" Quote text objects:
" ' (work on single quotes)
" " (work on double quotes)
" ` (work on back ticks)

" Separator text objects:
" , . ; : + - = ~ _ * # / | \ & $

" b: Any block, wildcard for pair text objects
" q: Any quote, wildcard for any quote text object

" a: Argument text objects
" na, la: Next and last arguments text objects

Plug 'wellle/targets.vim'

" Template to create custom text objects
Plug 'kana/vim-textobj-user'
" e: entire document
Plug 'kana/vim-textobj-entire'

" Repeat plugin operations
Plug 'tpope/vim-repeat'

" Function object provided by neoclide/coc.nvim

" -----------------
" Automatic Helpers
" -----------------
" Syntatic checker
"Plug 'scrooloose/syntastic'
" Autocompletion with Language Server Processor
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Add header guards with :HeaderguardAdd
Plug 'drmikehenry/vim-headerguard'
" Autocomplete ''{}() pairs
Plug 'jiangmiao/auto-pairs'

"" Libraries
"Plug 'xolox/vim-misc'

Plug 'metakirby5/codi.vim'

"" Calculator and base converter
Plug 'arecarn/vim-crunch'
Plug 'arecarn/vim-selection' " arecarn/vim-crunch dependency

"" Python 
Plug 'sillybun/vim-repl'

call plug#end()
