call plug#begin()

" -----------------
" UI Additions
" -----------------
"{{{
    " Arpeggio for simultaneous key bindings
    "{{{
        Plug 'kana/vim-arpeggio'
        " If the keys are pressed within less than 100 milliseconds they are conssidered to be arpeggiated
    "}}}

    " Erradicate hjkl antipattern
    "{{{
        "TODO: Doesn't work with vim-arpeggio
        "Plug 'takac/vim-hardtime'
    "}}}

    " Jellybeans Theme
    "{{{
        Plug 'nanotech/jellybeans.vim'
    "}}}

    " Corvine Theme
    "{{{
        Plug 'arzg/vim-corvine'
    "}}}

    " Change font size with <leader><leader>+
    "{{{
        Plug 'drmikehenry/vim-fontsize'
    "}}}

    " Maximize buffer window: <c-w>o and restore
    "{{{
        Plug 'regedarek/ZoomWin'
    "}}}

    " Vim registers previewer
    "{{{
        Plug 'junegunn/vim-peekaboo'
    "}}}

    " Smooth scrolling
    "{{{
        "Plug 'terryma/vim-smooth-scroll'
        Plug 'yuttie/comfortable-motion.vim'
    "}}}

    " Powerline bar
    " {{{
        Plug 'vim-airline/vim-airline'
        Plug 'blasco/vim-airline-themes'
        Plug 'ryanoasis/vim-devicons'
        " Buffer navigation top bar.
    "}}}

"}}}

" -----------------
" Extesions
" -----------------
"{{{
    " XML tags autocompletion
    "{{{
        Plug 'tpope/vim-ragtag'
        " The mappings apply in insert mode. Interesting are the following:
        " <C-X><Space>  <foo>^</foo>          *ragtag-CTRL-X_<Space>*
        " <C-X><CR>     <foo>\n^\n</foo>      *ragtag-CTRL-X_<CR>*
        " <C-X>/        Last HTML tag closed  *ragtag-CTRL-X_/*
    "}}}

    " Autocompletion with Language Server Processor
    "{{{
        Plug 'neoclide/coc.nvim', {'branch': 'release'}

        " Use <C-l> for trigger snippet expand.
        " Use <C-j> for jump to next placeholder, it's default of coc.nvim
        " Use <C-k> for jump to previous placeholder, it's default of coc.nvim
        " Use <C-j> for both expand and jump (make expand higher priority.)
        " Add header guards with :HeaderguardAdd
    "}}}

    " Create C/C++ header guards with :HeaderguardAdd
    "{{{
        Plug 'drmikehenry/vim-headerguard'
    "}}}

    " Autocomplete ''{}() pairs
    "{{{
        "Plug 'jiangmiao/auto-pairs'
    "}}}

    " Quick smart calculator. Launch with `:Codi python`
    "{{{
        Plug 'metakirby5/codi.vim'
    "}}}

"    " Color picker
"    "{{{
"        Plug 'Rykka/colorv.vim'
"        " <leader>cap color auto preview
"        " <leader>ce: color edit
"        " Within the edit dialog :ColorVPicker for a picker dialog box
"        " <leader>cii : color insert
"        " <leader>cir : color insert rgb
"    "}}}

    " Hihgliht yanked text
    "{{{
        "Plug 'haya14busa/vim-operator-flashy'
        " coc-yank works also with visual
        "https://github.com/neoclide/coc-yank
    "}}}

    " Makes quickfix window editable
    "{{{
        Plug 'Olical/vim-enmasse'
    "}}}

    " Add vimscript funtions to debug with Breakadd func s:func
    "{{{
        Plug 'tpope/vim-scriptease'
    "}}}

    " Fuzzy file explorer and most recent used files
    "{{{
        Plug 'ctrlpvim/ctrlp.vim'
        " Add .ctrlp to ~/.gitignore_global
        " git config --global core.excludesfile ~/.gitignore_global
        " touch .ctrlp where we want to set the project's search root
        " <leader>+of:= edit file
        " <leader>+or:= edit recent
    "}}}

    " Fuzzy file content explorer
    "{{{
        Plug 'dyng/ctrlsf.vim'
        " Search word under cursor
        " Search last  searched pattern
    "}}}

    " Navigation bar
    "{{{
        Plug 'scrooloose/nerdtree'
        " x := explorer
        " Toggle file explorer
        " xx : = explorer toggle
        " xo := explorer open
        " xc := explorer close
        " xf := explorer find file := find current opened file in explorer
        " xg := explorer git := Change directory to root of the repository
        " Change the NERDTree directory to the root node
        " Remove vertical | chars
    "}}}

    " Fzf integration.
    " Use :Lines to fuzzy search lines of current file
    "{{{
        Plug 'junegunn/fzf.vim'
    "}}}

    " Provides :Rename command
    "{{{
        Plug 'danro/rename.vim'
    "}}}

    " Git integration
    "{{{
        Plug 'tpope/vim-fugitive'
        " Revert local changes
        " Mnemonic, gu = Git Update
    "}}}

    " :Merginal to show all branches and to swich to them
    "{{{
        Plug 'idanarye/vim-merginal'
    "}}}

    " Yank registers management
    "{{{
        Plug 'svermeulen/vim-yoink'
        " Change from using system clipboard to vim clipboard, which has a special
        " formatting that allows to paste visual blocks
        " Only one clipboard
        " Persistent clipboard on leave: Install parcellite and set it to launch in startup
        " Yoink doesn't work in visual mode
        " Paste in visual mode without copying
    "}}}

    " Undo history tree
    "{{{
        Plug 'mbbill/undotree'
    "}}}

"}}}

" -----------------
" Syntax Hihgliht
" -----------------
"{{{
    Plug 'sudar/vim-arduino-syntax'
    Plug 'leafgarland/typescript-vim'
    Plug 'peterhoeg/vim-qml'
"}}}

" -----------------
" Additional Operators
" -----------------
"{{{
    " Targeted f/t and search motions
    "{{{
    Plug 'easymotion/vim-easymotion'
    " find character
    " unTil character
    "}}}

    " Improved * (star) and # motions.
    "{{{
        Plug 'haya14busa/vim-asterisk'
    "}}}

    " TODO: Does vim-asterisk already provide visual mode?
    "{{{
        "Plug 'thinca/vim-visualstar'
    "}}}

    " user defined operators boiler plate.
    "{{{
        Plug 'kana/vim-operator-user'
    "}}}

    " ga: go append
    "{{{
        Plug 'mwgkgk/vim-operator-append'
    "}}}

    " gt : go title
    "{{{
        Plug 'christoomey/vim-titlecase'
    "}}}

    " go: go order
    "{{{
        Plug 'christoomey/vim-sort-motion'
        Plug 'yaroot/vissort'
        " Allow sorting from visual block
    "}}}

    " m: move (cut), d: delete
    "{{{
        Plug 'svermeulen/vim-cutlass'
        " one line
        " until the end of line
        " visual
        " set marks with <leader>m
        " Moving lines
    "}}}

    " Calculator and base converter
    " g= := go equal, replaces selection or text object with result of calculation
    " :Crunch command for exmpanded result
    "{{{
        "Plug 'arecarn/vim-crunch'
        Plug 'blasco/vim-crunch'
        Plug 'arecarn/vim-selection' " arecarn/vim-crunch dependency
    "}}}

    " Comment operator | gc  := go comment
    "{{{
        Plug 'tpope/vim-commentary'
    "}}}

    " Surround with quotes and braces
    "{{{
        Plug 'tpope/vim-surround'
    "}}}

    " :S for smart substitution and coercion:
    " coerce operator: = cr[
    "     s:= snake_case,
    "     m:= mixedCase,
    "     c:= camelCase,
    "     u:= UPPER_CASE ,
    "     -:= dash-case,
    "     .:= dot.case,
    "     <space>:=space case,a
    "     t:= Title Case
    "{{{
        Plug 'tpope/vim-abolish'
    "}}}

    " gA & ga  := go All, shows all the number representations of the number under
    " cursor
    "{{{
        " TODO: instead of gA, crA convert all, it is more consistent with the rest of
        " the operations
        " cr[x,b,d,o]  := convert to hexadecimal, binary, decimal, octal
        " glts/vim-magnum required by vim-radical
        Plug 'glts/vim-magnum'
        "Plug 'glts/vim-radical'
        Plug 'blasco/vim-radical'
    "}}}

    " Substitute motion
    " s  := substitute
    " gr := replace in range
    "{{{
        " TODO: 'griwiw' not working, it takes the whole line
        Plug 'svermeulen/vim-subversive'
        " one line
        " until the end of the line
        " visual
        " sc := swap characters
        " TODO: motion 2 is taken as whole line
        " gr<motion1><motion2> := replace <motion1> in <motion2>
        " gr<right><right> := rll := replace one character
        " gr?<motion1><motion2> := replace with confirmation <motion1> in <motion2>
    "}}}

    " gwww := search in google
    "{{{
        Plug 'kana/vim-wwwsearch'
    "}}}

    " g[>,<] := go [>,<]
    " g[>,<]p := go [>,<] partial
    "{{{
        Plug 'machakann/vim-operator-jerk'
        " go shift partial
    "}}}

    " gfh := go format here
    " gfnc := go format n characters
    "{{{
        Plug 'lambdalisue/vim-operator-breakline'
        " go format n characters
    "}}}

    " xc := exchange
    "{{{
        Plug 'tommcdo/vim-exchange'
    "}}}

    " gf[l,r] := go format [left,right]
    "{{{
        Plug 'tommcdo/vim-lion'
        " TODO: LionRight("="), so it doesn't ask and a mapping like gfae (go format align equation) can be created
        " TODO: gfa{char}{motion} is more natural than gfa{motion}{char}
    "}}}

    " Grep operator
    "{{{
        Plug 'inside/vim-grep-operator'
    "}}}

    " g+shift+/ == g? := git search with fugitive-vim's Ggrep
    "{{{
        Plug 'rgrinberg/vim-operator-gsearch'
        "map g? <Plug>(operator-ggrep)
        "map gh <plug>(operator-helpgrep)
        "map gw <Plug>(operator-ag-word)
    "}}}

    " g= := replace with expression
    " g: := subsitute regex
    "{{{
        Plug 'tommcdo/vim-express'
        "TODO: breaks with crunch
        " nmap g= <Plug>(Express)
        " xmap g= <Plug>(Express)
        " TODO: Add option to use vim-abolish :S instead of :s
        "nmap gs <Plug>(Subpress)
        "xmap gs <Plug>(Subpress)
    "}}}

    " <leader>[h,j,k,l] send to window (useful with repl or terimal)
    "{{{
        Plug 'KKPMW/vim-sendtowindow'
    "}}}

    " gi: go insert
    "{{{
        "TODO: Is not repeatable
        Plug 'deris/vim-operator-insert'
    "}}}

    " TODO: remaps for ge gb go end go begin
    " TODO: visual mode is missing!
    "{{{
        "Plug 'rjayatilleka/vim-operator-goto'
        Plug 'blasco/vim-operator-goto'
    "}}}

    " Many additional mappings, check `:map [` for more details
    "{{{
        Plug 'tpope/vim-unimpaired'
    "}}}

    " Operations for working with dates
    "{{{
        Plug 'tpope/vim-speeddating'
    "}}}

    " gz: go check grammar
    "{{{
        Plug 'rhysd/vim-grammarous'
        " Move curzor to the previous error
        " Move the curzor to the info window
        "nmap <Plug>(grammarouz-move-to-info-window)
        " Rezet the current check
        " Fix the error under the curzor automatically
        " Fix all the errorz in a current buffer automatically
        " Cloze the information window from checked buffer
        " Remove the error under the curzor
        " gzn := go spell not an error
        " Dizable the grammar rule under the cursor
        " gzd := go spell dissable (delete) grammar rule
        " Move cursor to the next error
        " Move cursor to the previous error
    "}}}

    " d<space> delete trailing spaces in line. Also shows them
    "{{{
        Plug 'ntpeters/vim-better-whitespace'
        "Plug 'blasco/vim-better-whitespace'
        " Set the highlight color for trailing whitespaces:
    "}}}
"}}}

" -----------------
" Additional Text Objects
" -----------------
"{{{
    " i: indent
    "{{{
        "Plug 'michaeljsmith/vim-indent-object'
        Plug 'blasco/vim-indent-object'
    " }}}


    " Pair, quote, separator, and arguments text object
    "{{{
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
    "}}}

    " Template to create custom text objects
    "{{{
        Plug 'kana/vim-textobj-user'
    "}}}

    " e: entire document
    "{{{
        Plug 'kana/vim-textobj-entire'
    "}}}

    " l: line
    "{{{
        Plug 'blasco/vim-textobj-line'
    "}}}

    " Repeat plugin operations
    "{{{
        Plug 'tpope/vim-repeat'
    "}}}

    " f: function object for c, java, vim. When a language server is available we us coc instead
    "{{{
        Plug 'kana/vim-textobj-function'
    "}}}

    " TODO: target single line comments
    "{{{
    Plug 'glts/vim-textobj-comment'
    " if: in find between characters
    " af: a find between characters

    " in between text object
    "{{{
        " TODO: b from targets vim needs to be remaped to br (brackets)
        Plug 'thinca/vim-textobj-between'
        " ibc := in between characters
        " abc := around between characters
        " let g:textobj_between_no_default_key_mappings=1
        " omap ibc <Plug>(textobj-between-i)
        " xmap ibc <Plug>(textobj-between-i)
        " omap abc <Plug>(textobj-between-a)
        " xmap abc <Plug>(textobj-between-a)
    "}}}

    " iv: in variable segment
    " av: a variable segment
    "Plug 'Julian/vim-textobj-variable-segment'
    Plug 'blasco/vim-textobj-variable-segment'

    "}}}
"}}}

call plug#end()
