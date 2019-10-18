call plug#begin()

" -------------
" UI Additions
" -------------

" Theme
Plug 'nanotech/jellybeans.vim'
Plug 'arzg/vim-corvine'

" Approximate theme in console
Plug 'vim-scripts/CSApprox'

" Change font size with <leader><leader>+
Plug 'drmikehenry/vim-fontsize'
Plug 'vim-scripts/ZoomWin'

" Register preview
Plug 'junegunn/vim-peekaboo'

" Smooth scrolling
"Plug 'terryma/vim-smooth-scroll'
Plug 'yuttie/comfortable-motion.vim'

" Powerline bar
Plug 'vim-airline/vim-airline'
Plug 'blasco/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'

" Color picker
Plug 'Rykka/colorv.vim'

" Hihgliht yanked text
Plug 'haya14busa/vim-operator-flashy'

" -----------------
" Syntax Highligt
" -----------------

Plug 'sudar/vim-arduino-syntax'
Plug 'leafgarland/typescript-vim'
Plug 'peterhoeg/vim-qml'

" ----------
" Extensions
" ----------

Plug 'tpope/vim-scriptease'

" Fuzzy file explorer and most recent used files
Plug 'ctrlpvim/ctrlp.vim'

" An ack/ag/pt/rg powered code search and view tool, takes advantage of Vim 8's
" power to support asynchronous searching, and lets you edit file in-place with
" Edit Mode.
Plug 'dyng/ctrlsf.vim'

" Multi cursor
Plug 'terryma/vim-multiple-cursors'

" Navigation bar
Plug 'scrooloose/nerdtree'

" Fzf. Usefull to explore lines and buffers
Plug 'junegunn/fzf.vim'

" Provides :Rename command
Plug 'danro/rename.vim'

" Git integration
Plug 'tpope/vim-fugitive'

" :Merginal to show all branches and to swich to them
Plug 'idanarye/vim-merginal'

" Yankring management
Plug 'svermeulen/vim-yoink'

" Undo history tree
Plug 'mbbill/undotree'

" Snippet engine is handled by coc-snippets. Needs to be installed with:
" :CocInstall coc-snippets
" Default snippets are separated from the engine.
Plug 'honza/vim-snippets'

" ------------------
" Additional Motions
" ------------------

Plug 'easymotion/vim-easymotion'
" Improved * and # motions.
Plug 'haya14busa/vim-asterisk'

" -------------------
" Additinal Operators
" -------------------

" user defined operators boiler plate.
Plug 'kana/vim-operator-user'

" ga: go append
Plug 'mwgkgk/vim-operator-append'

" gt : go title
Plug 'christoomey/vim-titlecase'

" go: go order
Plug 'christoomey/vim-sort-motion'

" m: move (cut), d: delete
Plug 'svermeulen/vim-cutlass'

" gc  := go comment
Plug 'tpope/vim-commentary'

" ds[',", ...] := delete surround
" cs[',", ...] :=
" ysiW[',"] := yank surround in Word '
Plug 'machakann/vim-sandwich'

" Provides :S for smart substitution and coercion:
" cr[
"     s:= snake_case,
"     m:= mixedCase,
"     c:= camelCase,
"     u:= UPPER_CASE ,
"     -:= dash-case,
"     .:= dot.case,
"     <space>:=space case,a
"     t:= Title Case
Plug 'tpope/vim-abolish'

" gA & ga  := go All, shows all the number representations of the number under
" cursor
" TODO: instead of gA, crA convert all, it is more consistent with the rest of
" the operations
" cr[x,b,d,o]  := convert to hexadecimal, binary, decimal, octal
" glts/vim-magnum required by vim-radical
Plug 'glts/vim-magnum'
"Plug 'glts/vim-radical'
Plug 'blasco/vim-radical'

" s  := substitute
" gr := replace in range TODO: 'griwiw' not working, it takes the whole line
Plug 'svermeulen/vim-subversive'

" gwww := search in google
Plug 'kana/vim-wwwsearch'

" g[>,<] := go [>,<]
" g[>,<]p := go [>,<] partial
Plug 'machakann/vim-operator-jerk'

" gfh := go format here
" gfnc := go format n characters
Plug 'lambdalisue/vim-operator-breakline'

" xc := exchange
Plug 'tommcdo/vim-exchange'

" gf[l,r] := go format [left,right]
Plug 'tommcdo/vim-lion'

Plug 'inside/vim-grep-operator'

" g+shift+/ == g? := git search with fugitive-vim's Ggrep
Plug 'rgrinberg/vim-operator-gsearch'

" g= := replace with expression
" g: := subsitute regex
Plug 'tommcdo/vim-express'

" <leader>[h,j,k,l] send to window (useful with repl or terimal)
Plug 'KKPMW/vim-sendtowindow'

" gi: go insert
Plug 'deris/vim-operator-insert'

" TODO: remaps for ge gb go end go begin
" TODO: visual mode is missing!
"Plug 'rjayatilleka/vim-operator-goto'

Plug 'thinca/vim-visualstar'
Plug 'tyru/operator-star.vim'

" TODO: test
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-speeddating'

" gs: go spell check & grammar
Plug 'rhysd/vim-grammarous'

" d<space> delete trailing spaces in line. Also shows them
Plug 'blasco/vim-better-whitespace'

" -----------------------
" Additional Text Objects
" -----------------------

" i: indent
"Plug 'michaeljsmith/vim-indent-object'
Plug 'blasco/vim-indent-object'

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
" na, Na: Next and last arguments text objects

"Plug 'wellle/targets.vim'
Plug 'blasco/targets.vim', { 'branch': 'feature/count_parsing' }

" Template to create custom text objects
Plug 'kana/vim-textobj-user'

" e: entire document
Plug 'kana/vim-textobj-entire'

" l: line
Plug 'blasco/vim-textobj-line'

" Repeat plugin operations
Plug 'tpope/vim-repeat'

" f: function object for c, java, vim
Plug 'kana/vim-textobj-function'

" TODO: target single line comments
Plug 'glts/vim-textobj-comment'

" ib: in between
" TODO: b from targets vim needs to be remaped to br (brackets)
Plug 'thinca/vim-textobj-between'

" iv: in variable segment
" av: a variable segment
"Plug 'Julian/vim-textobj-variable-segment'
Plug 'blasco/vim-textobj-variable-segment'

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
"Plug 'jiangmiao/auto-pairs'

"" Libraries
"Plug 'xolox/vim-misc'

Plug 'metakirby5/codi.vim'

"" Calculator and base converter
"Plug 'arecarn/vim-crunch'
Plug 'blasco/vim-crunch'
Plug 'arecarn/vim-selection' " arecarn/vim-crunch dependency

"" Python
Plug 'sillybun/vim-repl'

call plug#end()
