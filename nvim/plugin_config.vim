" Arpeggio needs to be loaded before first use
call arpeggio#load()

" ------------------
" kana/vim-arpeggio
" ------------------
" Arpeggio for simultaneous key bindings
" If the keys are pressed within less than 100 milliseconds they are conssidered to be arpeggiated
let g:arpeggio_timeoutlen=100

" Exit insert mode
" TODO: Hardtime conflicts with jkhl arpeggios. Rerpot in github
" Arpeggio inoremap jk  <Esc>

" Window Movement
Arpeggio nnoremap <silent> wh :wincmd h<CR>
Arpeggio nnoremap <silent> wj :wincmd j<CR>
Arpeggio nnoremap <silent> wk :wincmd k<CR>
Arpeggio nnoremap <silent> wl :wincmd l<CR>
Arpeggio nnoremap <silent> wq :wincmd q<CR>

" ------------------
" takac/vim-hardtime
" ------------------
" Erradicate hjkl antipattern
let g:hardtime_showmsg = 1
let g:hardtime_default_on = 1

" ------------------
" nanotech/jellybeans.vim
" ------------------
" Jellybeans Theme
let g:jellybeans_use_term_italics = 0
let g:jellybeans_use_gui_italics = 0

" ------------------
" arzg/vim-corvine
" ------------------
" Corvine Theme
colorscheme corvine
let g:corvine_italics = 0

" ------------------
" drmikehenry/vim-fontsize
" ------------------
" Change font size with <leader><leader>+
nmap <silent> <leader>=  <Plug>FontsizeBegin
nmap <silent> <leader>+  <Plug>FontsizeInc
nmap <silent> <leader>-  <Plug>FontsizeDec
nmap <silent> <leader>0  <Plug>FontsizeDefault

" ------------------
" regedarek/ZoomWin
" ------------------
Arpeggio nmap wf <c-w>o
" Maximize buffer window: <c-w>o and restore

" ------------------
" junegunn/vim-peekaboo
" ------------------
" Vim registers previewer

let g:peekaboo_window  = 'vert bo 30new'
let g:peekaboo_compact = 0

" ------------------
" terryma/vim-smooth-scroll
" ------------------
" Smooth scrolling
"
" ------------------
" yuttie/comfortable-motion.vim
" ------------------
let g:comfortable_motion_scroll_down_key = "j"
let g:comfortable_motion_scroll_up_key = "k"

let g:comfortable_motion_no_default_key_mappings = 1
let g:comfortable_motion_impulse_multiplier = 3
let g:comfortable_motion_friction = 0.0
let g:comfortable_motion_air_drag = 10.0
nnoremap <silent> <C-d> :call comfortable_motion#flick(g:comfortable_motion_impulse_multiplier * winheight(0) * 2)<CR>
nnoremap <silent> <C-u> :call comfortable_motion#flick(g:comfortable_motion_impulse_multiplier * winheight(0) * -2)<CR>
nnoremap <silent> <C-f> :call comfortable_motion#flick(g:comfortable_motion_impulse_multiplier * winheight(0) * 4)<CR>
nnoremap <silent> <C-b> :call comfortable_motion#flick(g:comfortable_motion_impulse_multiplier * winheight(0) * -4)<CR>

" ------------------
" vim-airline/vim-airline
" ------------------
" Powerline bar

" ------------------
" blasco/vim-airline-themes
" ------------------

" ------------------
" ryanoasis/vim-devicons
" ------------------
set noshowmode     " Don't show the mode since Powerline shows it
set laststatus=2
let g:airline_powerline_fonts=1
let g:airline_theme='deus'

" Buffer navigation top bar.
let s:buffer_navigation=0
    if s:buffer_navigation
        " Provides a buffer bar on top with a small number that
        " indicates that we can jump to pressing the space bar and the buffer number
        let g:airline#extensions#tabline#enabled = 1
        let g:airline#extensions#tabline#tab_nr_type = 1 " tab number
        let g:airline#extensions#tabline#show_tab_nr = 1
        let g:airline#extensions#tabline#formatter = 'default'
        let g:airline#extensions#tabline#buffer_nr_show = 1
        let g:airline#extensions#tabline#fnametruncate = 16
        let g:airline#extensions#tabline#fnamecollapse = 2
        let g:airline#extensions#tabline#buffer_idx_mode = 1

        nmap <leader>1 <Plug>AirlineSelectTab1
        nmap <leader>2 <Plug>AirlineSelectTab2
        nmap <leader>3 <Plug>AirlineSelectTab3
        nmap <leader>4 <Plug>AirlineSelectTab4
        nmap <leader>5 <Plug>AirlineSelectTab5
        nmap <leader>6 <Plug>AirlineSelectTab6
        nmap <leader>7 <Plug>AirlineSelectTab7
        nmap <leader>8 <Plug>AirlineSelectTab8
        nmap <leader>9 <Plug>AirlineSelectTab9
    endif


" ------------------
" tpope/vim-ragtag
" ------------------
" XML tags autocompletion

let g:ragtag_global_maps = 1

" The mappings apply in insert mode. Interesting are the following:
" <C-X><Space>  <foo>^</foo>          *ragtag-CTRL-X_<Space>*
" <C-X><CR>     <foo>\n^\n</foo>      *ragtag-CTRL-X_<CR>*
" <C-X>/        Last HTML tag closed  *ragtag-CTRL-X_/*

" ------------------
" neoclide/coc.nvim, {'branch': 'release'}
" ------------------
" Configuration in coc_config.vim

" ------------------
" honza/vim-snippets
" ------------------
" Default snippets are separated from the engine.

" ------------------
" drmikehenry/vim-headerguard
" ------------------
" Add header guards with :HeaderguardAdd

" ------------------
" metakirby5/codi.vim
" ------------------
" Quick smart calculator. Launch with `:Codi python`

" ------------------
" Rykka/colorv.vim
" ------------------
" Color picker

" <leader>cap color auto preview
" <leader>ce: color edit
" Within the edit dialog :ColorVPicker for a picker dialog box
" <leader>cii : color insert
" <leader>cir : color insert rgb

" ------------------
" Olical/vim-enmasse
" ------------------
" Makes quickfix window editable

" ------------------
" tpope/vim-scriptease
" ------------------

" ------------------
" ctrlpvim/ctrlp.vim
" ------------------
" Fuzzy file explorer and most recent used files

let g:ctrlp_map = ''
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode ='ra'
let g:ctrlp_user_command = ['.git/', 'cd %s && git ls-files --exclude-standard -co']
if executable('rg')
    set grepprg=rg\ --color=never
    let g:ctrlp_user_command = ['.git/', 'rg %s --files --color=never --glob ""']
    let g:ctrlp_use_caching = 0
endif
" Add .ctrlp to ~/.gitignore_global
" git config --global core.excludesfile ~/.gitignore_global
" touch .ctrlp where we want to set the project's search root
let g:ctrlp_root_markers = ['.ctrlp']
Arpeggio nmap <leader>e <Plug>(edit)
" <leader>+of:= edit file
nnoremap <Plug>(edit)r :CtrlPMRUFiles<CR>
" <leader>+or:= edit recent
nnoremap <Plug>(edit)f :CtrlP<CR>

" ------------------
" dyng/ctrlsf.vim
" ------------------
" Fuzzy file content explorer
let g:ctrlsf_auto_focus = {
    \ "at": "start",
    \ "duration_less_than": 1000
    \ }
Arpeggio nmap <leader>f <Plug>(find)
nmap     <Plug>(find)f <Plug>CtrlSFPrompt
vmap     <Plug>(find)f <Plug>CtrlSFVwordPath
vmap     <Plug>(find)F <Plug>CtrlSFVwordExec
" Search word under cursor
nmap     <Plug>(find)w <Plug>CtrlSFCwordPath
" Search last  searched pattern
nmap     <Plug>(find)s <Plug>CtrlSFPwordPath
nnoremap <Plug>(find)t :CtrlSFToggle<CR>

let g:ctrlsf_regex_pattern = 1
let g:ctrlsf_default_root = 'project'

" ------------------
" scrooloose/nerdtree
" ------------------
" Navigation bar
Arpeggio nmap <leader>x <Plug>(file-explorer)
" x := explorer
" Toggle file explorer
" xx : = explorer toggle
nnoremap <silent> <Plug>(file-explorer)x :silent NERDTreeToggle<CR>
" xo := explorer open
nnoremap <silent> <Plug>(file-explorer)o :silent NERDTree<CR>
" xc := explorer close
nnoremap <silent> <Plug>(file-explorer)c :silent NERDTreeClose<CR>
" xf := explorer find file := find current opened file in explorer
nnoremap <silent> <Plug>(file-explorer)f :silent NERDTreeFind<CR>
" xg := explorer git := Change directory to root of the repository
nnoremap <silent> <Plug>(file-explorer)g :silent NERDTreeVCS<CR>

let g:NERDTreeShowBookmarks=1
" Change the NERDTree directory to the root node
let g:NERDTreeChDirMode=2

" Remove vertical | chars
set fillchars+=vert:\

" ------------------
" junegunn/fzf.vim
" ------------------
" Fzf integration.
" Use :Lines to fuzzy search lines of current file

" ------------------
" danro/rename.vim
" ------------------
" Provides :Rename command

" ------------------
" tpope/vim-fugitive
" ------------------
" Git integration

nmap <silent> <leader>gc :Gcommit<CR>
nmap <silent> <leader>gm :Git checkout
" Revert local changes
nmap <silent> <leader>gr :Git checkout .<CR>
nmap <silent> <leader>gw :Gwrite<CR> :Gstatus<CR>
nmap <silent> <leader>gs :Gstatus<CR>
nmap <silent> <leader>gp :Git push<CR>
" Mnemonic, gu = Git Update
nmap <silent> <leader>gu :Git pull<CR>
nmap <silent> <leader>gd :Gdiff<CR>
set diffopt+=vertical
let g:fugitive_summary_format = "%h %cd %an %s"

" ------------------
" idanarye/vim-merginal
" ------------------
" :Merginal to show all branches and to swich to them

" ------------------
" svermeulen/vim-yoink
" ------------------
" Yank registers management

" Change from using system clipboard to vim clipboard, which has a special
" formatting that allows to paste visual blocks
let g:unnamedplusToggleFlag = 1
command! UnnamedplusToggle call UnnamedplusToggle()
function! UnnamedplusToggle()
    if (g:unnamedplusToggleFlag == 1)
        exec 'set clipboard='
        let g:unnamedplusToggleFlag = 0
        echo 'Visual block copy/paste enabled. System clipboard disabled.'
    else
        exec 'set clipboard=unnamedplus'
        let g:unnamedplusToggleFlag = 1
        echo 'Visual block copy/paste disabled. System clipboard enable.'
    endif
endfunction
nmap <leader>p :UnnamedplusToggle<cr>

let g:yoinkAutoFormatPaste=0
let g:yoinkIncludeDeleteOperations=1
nmap <c-n> <Plug>(YoinkPostPasteSwapForward)
nmap <c-p> <Plug>(YoinkPostPasteSwapBack)
let g:yoinkIncludeDeleteOperations=1
nmap <c-n> <Plug>(YoinkPostPasteSwapForward)
nmap <c-p> <Plug>(YoinkPostPasteSwapBack)

" Only one clipboard
set clipboard=unnamedplus  " Yanks go to clipboard (typically Ctrl+C).
" Persistent clipboard on leave: Install parcellite and set it to launch in startup

nmap p <Plug>(YoinkPaste_p)
nmap P <Plug>(YoinkPaste_P)

" Yoink doesn't work in visual mode
" Paste in visual mode without copying
xnoremap p pgvy
xnoremap P Pgvy

nmap [y <Plug>(YoinkRotateBack)
nmap ]y <Plug>(YoinkRotateForward)

nmap y= <Plug>(YoinkPostPasteToggleFormat)

" ------------------
" mbbill/undotree
" ------------------
" Undo history tree

nnoremap <leader>z :UndotreeToggle<cr>

" ------------------
" sudar/vim-arduino-syntax
" ------------------

" ------------------
" leafgarland/typescript-vim
" ------------------

" ------------------
" peterhoeg/vim-qml
" ------------------

" ------------------
" easymotion/vim-easymotion
" ------------------
" Targeted f/t and search motions
Arpeggio map <leader>/ <Plug>(easymotion-s2)
"" find character
"Arpeggio map <leader>f <Plug>(easymotion-fl)
"Arpeggio map <S-Space>F <Plug>(easymotion-Fl)
""" unTil character
"Arpeggio map <leader>t <Plug>(easymotion-tl)
"Arpeggio map <S-Space>T <Plug>(easymotion-Tl)
""
""let g:EasyMotion_move_highlight=0
"Arpeggio map <leader>; <Plug>(easymotion-next)
"Arpeggio map <leader>, <Plug>(easymotion-prev)
let g:EasyMotion_smartcase = 1

" ------------------
" kana/vim-operator-user
" ------------------
" user defined operators boiler plate.

" ------------------
" mwgkgk/vim-operator-append
" ------------------
" ga: go append

" ------------------
" christoomey/vim-titlecase
" ------------------
" gt : go title

" ------------------
" christoomey/vim-sort-motion
" ------------------
" go: go order

" ------------------
" yaroot/vissort
" ------------------
let g:sort_motion = 'go'
let g:sort_motion_lines = 'goo'
let g:sort_motion_visual = 'go'
" Allow sorting from visual block
let g:sort_motion_visual_block_command = "Vissort"

" ------------------
" svermeulen/vim-cutlass
" ------------------
" m: move (cut), d: delete
xnoremap m d
nnoremap m d
" one line
nnoremap mm dd
" until the end of line
nnoremap M D
" visual
xnoremap mm d
" set marks with <leader>m
nnoremap <leader>m m
" Moving lines
nnoremap mk :m .-2<CR>==
nnoremap mj :m .+1<CR>==
vnoremap mk :m '<-2<CR>gv=gv
vnoremap mj :m '>+1<CR>gv=gv

" ------------------
" arecarn/vim-crunch
" ------------------
" Calculator and base converter
" g= := go equal, replaces selection or text object with result of calculation
" :Crunch command for exmpanded result
Plug 'blasco/vim-crunch'
Plug 'arecarn/vim-selection' " arecarn/vim-crunch dependency

" ------------------
" tpope/vim-commentary
" ------------------
" Comment operator | gc  := go comment
autocmd Filetype c,cpp setlocal commentstring=//\ %s

" ------------------
" tpope/vim-surround
" ------------------
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

" ------------------
" tpope/vim-abolish
" ------------------
map cr <Plug>(abolish-coerce)

" gA & ga  := go All, shows all the number representations of the number under
" cursor
" TODO: instead of gA, crA convert all, it is more consistent with the rest of
" the operations
" cr[x,b,d,o]  := convert to hexadecimal, binary, decimal, octal
" glts/vim-magnum required by vim-radical

" ------------------
" glts/vim-magnum
" ------------------
"Plug 'glts/vim-radical'

" ------------------
" blasco/vim-radical
" ------------------

let g:radical_no_mappings=1
nmap cra <Plug>RadicalView
xmap cra <Plug>RadicalView
nmap crd <Plug>RadicalCoerceToDecimal
nmap crx <Plug>RadicalCoerceToHex
nmap cro <Plug>RadicalCoerceToOctal
nmap crb <Plug>RadicalCoerceToBinary

" ------------------
" svermeulen/vim-subversive
" ------------------
" Substitute motion 
" s  := substitute 
" gr := replace in range 
" TODO: 'griwiw' not working, it takes the whole line

nmap gs  <Plug>(SubversiveSubstitute)
" one line
nmap gss <Plug>(SubversiveSubstituteLine)
" until the end of the line
nmap gS  <Plug>(SubversiveSubstituteToEndOfLine)
" visual
xmap gs <Plug>(SubversiveSubstitute)

" sc := swap characters
nnoremap sc xp

" TODO: motion 2 is taken as whole line
" gr<motion1><motion2> := replace <motion1> in <motion2>
nmap gr <Plug>(SubversiveSubstituteRange)
xmap gr <Plug>(SubversiveSubstituteRange)
" gr<right><right> := rll := replace one character

" gr?<motion1><motion2> := replace with confirmation <motion1> in <motion2>
nmap gr? <Plug>(SubversiveSubstituteRangeConfirm)
xmap gr? <Plug>(SubversiveSubstituteRangeConfirm)

" ------------------
" kana/vim-wwwsearch
" ------------------
" gwww := search in google

nmap gws <Plug>(operator-wwwsearch)
let g:wwwsearch_command_to_open_uri = 'chromium {uri}'

" ------------------
" machakann/vim-operator-jerk
" ------------------
" g[>,<] := go [>,<]
" g[>,<]p := go [>,<] partial

xmap g> <Plug>(operator-jerk-forward)
nmap g> <Plug>(operator-jerk-forward)

xmap g< <Plug>(operator-jerk-backward)
nmap g< <Plug>(operator-jerk-backward)

nmap g>> <Plug>(operator-jerk-forward)l
nmap g<< <Plug>(operator-jerk-backward)l

" go shift partial
nmap g>p <Plug>(operator-jerk-forward-partial)
xmap g>p <Plug>(operator-jerk-forward-partial)

nmap g<p <Plug>(operator-jerk-backward-partial)
xmap g<p <Plug>(operator-jerk-backward-partial)

nmap g>pp <Plug>(operator-jerk-forward-partial)iw
nmap g<pp <Plug>(operator-jerk-backward-partial)iw


" ------------------
" lambdalisue/vim-operator-breakline
" ------------------
" gfh := go format here
" gfnc := go format n characters

map gF <Plug>(operator-breakline-textwidth)
" go format n characters
map gFn <Plug>(operator-breakline-manual)

" ------------------
" tommcdo/vim-exchange
" ------------------
" gx := go exchange

let g:exchange_no_mappings=1
nmap gx  <Plug>(Exchange)
nmap gxc <Plug>(ExchangeClear)
nmap gxx <Plug>(ExchangeLine)


" ------------------
" tommcdo/vim-lion
" ------------------
" gf[l,r] := go format [left,right]

" Builtin format Operator
" gf := go format
" gfs := go format syntax
nnoremap gf  gw
nnoremap gfs =

let g:lion_create_maps=0
let g:lion_squeeze_spaces=0

" TODO: LionRight("="), so it doesn't ask and a mapping like gfae (go format align equation) can be created
" TODO: gfa{char}{motion} is more natural than gfa{motion}{char}
nmap gfa  <Plug>LionRight
xmap gfa  <Plug>VLionRight

nmap gfal <Plug>LionLeft
xmap gfal <Plug>VLionLeft

nmap gfah <Plug>LionRight
xmap gfah <Plug>VLionRight

" ------------------
" inside/vim-grep-operator
" ------------------

" ------------------
" rgrinberg/vim-operator-gsearch
" ------------------
" g+shift+/ == g? := git search with fugitive-vim's Ggrep

map g/ <Plug>(operator-ag)
"map g? <Plug>(operator-ggrep)
"map gh <Plug>(operator-helpgrep)
"map gw <Plug>(operator-ag-word)
let g:gsearch_ag_command = 'Ggrep'

" g= := replace with expression
" g: := subsitute regex

" ------------------
" tommcdo/vim-express
" ------------------

let g:express_no_mappings=1

"TODO: breaks with crunch
" nmap g= <Plug>(Express)
" xmap g= <Plug>(Express)

" TODO: Add option to use vim-abolish :S instead of :s
"nmap gs <Plug>(Subpress)
"xmap gs <Plug>(Subpress)

" <leader>[h,j,k,l] send to window (useful with repl or terimal)

" ------------------
" KKPMW/vim-sendtowindow
" ------------------

let g:sendtowindow_use_defaults=0
nmap <leader>l <Plug>SendRight
xmap <leader>l <Plug>SendRightV
nmap <leader>ll vil<Plug>SendRightV

nmap <leader>h <Plug>SendLeft
xmap <leader>h <Plug>SendLeftV
xmap <leader>hh vil<Plug>SendLeftV

nmap <leader>k <Plug>SendUp
xmap <leader>k <Plug>SendUpV
nmap <leader>kk vil<Plug>SendUpV

nmap <leader>j <Plug>SendDown
xmap <leader>j <Plug>SendDownV
xmap <leader>jj vil<Plug>SendDownV

" ------------------
" deris/vim-operator-insert
" ------------------
" gi: go insert

xmap gi  <Plug>(operator-insert-i)
nmap gi  <Plug>(operator-insert-i)

xmap ga  <Plug>(operator-insert-a)
nmap ga  <Plug>(operator-insert-a)

" TODO: remaps for ge gb go end go begin
" TODO: visual mode is missing!
"Plug 'rjayatilleka/vim-operator-goto'

" ------------------
" haya14busa/vim-asterisk
" ------------------
" Improved star motion, keeps cursor position.
" map *   <Plug>(asterisk-*)
" map #   <Plug>(asterisk-#)
" map g*  <Plug>(asterisk-g*)
" map g#  <Plug>(asterisk-g#)
" map z*  <Plug>(asterisk-z*)
" map gz* <Plug>(asterisk-gz*)
" map z#  <Plug>(asterisk-z#)
" map gz# <Plug>(asterisk-gz#)

" If you want to set "z" (stay) behavior as default
map *  <Plug>(asterisk-z*)
map #  <Plug>(asterisk-z#)
map g* <Plug>(asterisk-gz*)
map g# <Plug>(asterisk-gz#)

let g:asterisk#keeppos = 1

" Many additional mappings, check `:map [` for more details

" ------------------
" tpope/vim-unimpaired
" ------------------


" ------------------
" tpope/vim-speeddating
" ------------------

" gz: go check grammar

" ------------------
" rhysd/vim-grammarous
" ------------------

nmap gz <Plug>(operator-grammarous)

" Move curzor to the previous error
nmap gzo <Plug>(grammarous-open-info-window)

" Move the curzor to the info window
"nmap <Plug>(grammarouz-move-to-info-window)

" Rezet the current check
nmap gzr <Plug>(grammarous-reset)
" Fix the error under the curzor automatically
nmap gzf <Plug>(grammarous-fixit)
" Fix all the errorz in a current buffer automatically
nmap gzF <Plug>(grammarous-fixall)
" Cloze the information window from checked buffer
nmap gzc <Plug>(grammarous-close-info-window)
" Remove the error under the curzor
" gzn := go spell not an error
nmap gzn <Plug>(grammarous-remove-error)
" Dizable the grammar rule under the cursor
" gzd := go spell dissable (delete) grammar rule
nmap gzd <Plug>(grammarous-disable-rule)

" Move cursor to the next error
nmap ]z <Plug>(grammarous-move-to-next-error)
" Move cursor to the previous error
nmap [z <Plug>(grammarous-move-to-previous-error)


" d<space> delete trailing spaces in line. Also shows them

" ------------------
" ntpeters/vim-better-whitespace
" ------------------

let g:better_whitespace_operator='d<space>'
" Set the highlight color for trailing whitespaces:
let g:better_whitespace_ctermcolor = 'gray'
let g:better_whitespace_guicolor = 'gray'


" -----------------
" Additional Text Objects
" -----------------

" i: indent
"Plug 'michaeljsmith/vim-indent-object'

" ------------------
" blasco/vim-indent-object
" ------------------

" Pair, quote, separator, and arguments text object
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

" ------------------
" blasco/targets.vim, { 'branch': 'feature/count_parsing' }
" ------------------
let g:targets_aiAI = 'aIAi'
let g:targets_nl = 'nN'

" ------------------
" kana/vim-textobj-user
" ------------------
" Template to create custom text objects

" ------------------
" kana/vim-textobj-entire
" ------------------
" e: entire document

" ------------------
" blasco/vim-textobj-line
" ------------------
" l: line
let g:textobj_line_no_default_key_mappings=1
xmap al <Plug>(textobj-line-a)
omap al <Plug>(textobj-line-a)

xmap il <Plug>(textobj-line-i)
omap il <Plug>(textobj-line-i)

xmap Il <Plug>(textobj-line-I)
omap Il <Plug>(textobj-line-I)

" ------------------
" tpope/vim-repeat
" ------------------
" Repeat plugin operations

" ------------------
" kana/vim-textobj-function
" ------------------
" f: function object for c, java, vim. When a language server is available we us coc instead
autocmd Filetype vim,c,java xmap af <Plug>(textobj-function-a)
autocmd Filetype vim,c,java omap af <Plug>(textobj-function-a)

autocmd Filetype vim,c,java xmap if <Plug>(textobj-function-i)
autocmd Filetype vim,c,java omap if <Plug>(textobj-function-i)

autocmd Filetype vim,c,java xmap Af <Plug>(textobj-function-A)
autocmd Filetype vim,c,java omap Af <Plug>(textobj-function-A)

autocmd Filetype vim,c,java xmap If <Plug>(textobj-function-I)
autocmd Filetype vim,c,java omap If <Plug>(textobj-function-I)

" ------------------
" glts/vim-textobj-comment
" ------------------
" TODO: target single line comments

" ------------------
" thinca/vim-textobj-between
" ------------------
" if: in find between characters
" af: a find between characters
" TODO: b from targets vim needs to be remaped to br (brackets)

" ------------------
" blasco/vim-textobj-variable-segment
" ------------------
" ibc := in between characters
" abc := around between characters
" let g:textobj_between_no_default_key_mappings=1

" omap ibc <Plug>(textobj-between-i)
" xmap ibc <Plug>(textobj-between-i)

" omap abc <Plug>(textobj-between-a)
" xmap abc <Plug>(textobj-between-a)

" iv: in variable segment
" av: a variable segment
"Plug 'Julian/vim-textobj-variable-segment'
