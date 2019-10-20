" Arpeggio needs to be loaded before first use
call arpeggio#load()

" -----------------
" UI Additions
" -----------------
"{{{

" Arpeggio for simultaneous key bindings
"{{{
" Plug 'kana/vim-arpeggio'
" If the keys are pressed within less than 100 milliseconds they are conssidered to be arpeggiated
let g:arpeggio_timeoutlen=100

" Exit insert mode
Arpeggio inoremap jk  <Esc>

" Window Movement
Arpeggio nnoremap wh :wincmd h<CR>
Arpeggio nnoremap wj :wincmd j<CR>
Arpeggio nnoremap wk :wincmd k<CR>
Arpeggio nnoremap wl :wincmd l<CR>

"}}}

" Erradicate hjkl antipattern
"{{{
" Plug 'takac/vim-hardtime'

let g:hardtime_showmsg = 1
let g:hardtime_default_on = 1
"}}}

" Jellybeans Theme
"{{{
" Plug 'nanotech/jellybeans.vim'
let g:jellybeans_use_term_italics = 0
let g:jellybeans_use_gui_italics = 0
"}}}

" Corvine Theme
"{{{
" Plug 'arzg/vim-corvine'

colorscheme corvine
let g:corvine_italics = 0
"}}}

" Approximate theme in console
"{{{
" Plug 'vim-scripts/CSApprox'
"}}}

" Change font size with <leader><leader>+
"{{{
" Plug 'drmikehenry/vim-fontsize'

nmap <silent> <leader>=  <plug>FontsizeBegin
nmap <silent> <leader>+  <plug>FontsizeInc
nmap <silent> <leader>-  <plug>FontsizeDec
nmap <silent> <leader>0  <plug>FontsizeDefault
"}}}

" Maximize buffer window: <c-w>o and restore
"{{{
" Plug 'regedarek/ZoomWin'

"}}}

" Vim registers previewer
"{{{
" Plug 'junegunn/vim-peekaboo'

let g:peekaboo_window  = 'vert bo 30new'
let g:peekaboo_compact = 0
"}}}

" Smooth scrolling
"{{{
" Plug 'terryma/vim-smooth-scroll'
" Plug 'yuttie/comfortable-motion.vim'

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
"}}}

" Powerline bar
" {{{
" Plug 'vim-airline/vim-airline'
" Plug 'blasco/vim-airline-themes'
" Plug 'ryanoasis/vim-devicons'

set noshowmode     " Don't show the mode since Powerline shows it
set laststatus=2
let g:airline_powerline_fonts=1
let g:airline_theme='deus'

" Buffer navigation top bar.
let s:buffer_navigation=0
    "{{{
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

        nmap <leader>1 <plug>AirlineSelectTab1
        nmap <leader>2 <plug>AirlineSelectTab2
        nmap <leader>3 <plug>AirlineSelectTab3
        nmap <leader>4 <plug>AirlineSelectTab4
        nmap <leader>5 <plug>AirlineSelectTab5
        nmap <leader>6 <plug>AirlineSelectTab6
        nmap <leader>7 <plug>AirlineSelectTab7
        nmap <leader>8 <plug>AirlineSelectTab8
        nmap <leader>9 <plug>AirlineSelectTab9
    endif
    "}}}
"}}}

"}}}

" -----------------
" Extesions
" -----------------
"{{{

" XML tags autocompletion
"{{{
" Plug 'tpope/vim-ragtag'

let g:ragtag_global_maps = 1

" The mappings apply in insert mode. Interesting are the following:
" <C-X><Space>  <foo>^</foo>          *ragtag-CTRL-X_<Space>*
" <C-X><CR>     <foo>\n^\n</foo>      *ragtag-CTRL-X_<CR>*
" <C-X>/        Last HTML tag closed  *ragtag-CTRL-X_/*
"}}}


" Autocompletion with Language Server Processor
" Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Use <C-l> for trigger snippet expand.
imap <C-l> <plug>(coc-snippets-expand)
vmap <C-l> <Plug>(coc-snippets-select)

" Use <C-j> for jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<c-j>'

" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<c-k>'

" Use <C-j> for both expand and jump (make expand higher priority.)
imap <C-j> <Plug>(coc-snippets-expand-jump)

inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_next = '<tab>'


" Add header guards with :HeaderguardAdd
" Plug 'drmikehenry/vim-headerguard'

" Autocomplete ''{}() pairs
"Plug 'jiangmiao/auto-pairs'

"" Libraries
"Plug 'xolox/vim-misc'

" Quick smart calculator. Launch with `:Codi python`
" Plug 'metakirby5/codi.vim'


" Color picker
"{{{
" Plug 'Rykka/colorv.vim'

" <leader>cap color auto preview
" <leader>ce: color edit
" Within the edit dialog :ColorVPicker for a picker dialog box
" <leader>cii : color insert
" <leader>cir : color insert rgb
"}}}

" Hihgliht yanked text
"{{{
" Plug 'haya14busa/vim-operator-flashy'

let g:operator#flashy#flash_time = 300
map y  <plug>(operator-flashy)
" yank a line (no flash operator)
nnoremap yy yy
" yv: yank visual selection
xnoremap yy y
map Y <plug>(operator-flashy)$
"}}}

" Makes quickfix window editable
" Plug 'Olical/vim-enmasse'

" Plug 'tpope/vim-scriptease'

" Fuzzy file explorer and most recent used files
"{{{
" Plug 'ctrlpvim/ctrlp.vim'

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
"}}}

" Fuzzy file content explorer
"{{{
" Plug 'dyng/ctrlsf.vim'

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
"}}}

" Navigation bar
"{{{
" Plug 'scrooloose/nerdtree'

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
"}}}

" Fzf integration.
" Use :Lines to fuzzy search lines of current file
" Plug 'junegunn/fzf.vim'

" Provides :Rename command
" Plug 'danro/rename.vim'

" Git integration
"{{{
" Plug 'tpope/vim-fugitive'

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
"}}}

" :Merginal to show all branches and to swich to them
" Plug 'idanarye/vim-merginal'

" Yank registers management
"{{{
" Plug 'svermeulen/vim-yoink'

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
nmap <c-n> <plug>(YoinkPostPasteSwapForward)
nmap <c-p> <plug>(YoinkPostPasteSwapBack)
let g:yoinkIncludeDeleteOperations=1
nmap <c-n> <plug>(YoinkPostPasteSwapForward)
nmap <c-p> <plug>(YoinkPostPasteSwapBack)

" Only one clipboard
set clipboard=unnamedplus  " Yanks go to clipboard (typically Ctrl+C).
" Persistent clipboard on leave: Install parcellite and set it to launch in startup

nmap p <plug>(YoinkPaste_p)
nmap P <plug>(YoinkPaste_P)

" Yoink doesn't work in visual mode
" Paste in visual mode without copying
xnoremap p pgvy
xnoremap P Pgvy

nmap [y <plug>(YoinkRotateBack)
nmap ]y <plug>(YoinkRotateForward)

nmap y= <plug>(YoinkPostPasteToggleFormat)
"}}}

" Undo history tree
"{{{
" Plug 'mbbill/undotree'

nnoremap <leader>z :UndotreeToggle<cr>
"}}}

" Snippet engine is handled by coc-snippets. Needs to be installed with:
" :CocInstall coc-snippets
" Default snippets are separated from the engine.
" Plug 'honza/vim-snippets'

"}}}

" -----------------
" Syntax Hihgliht
" -----------------
"{{{
" Plug 'sudar/vim-arduino-syntax'
" Plug 'leafgarland/typescript-vim'
" Plug 'peterhoeg/vim-qml'
"}}}

" -----------------
" Additional Operators
" -----------------
"{{{

" Targeted f/t and search motions
"{{{
" Plug 'easymotion/vim-easymotion'

map / <plug>(easymotion-sn)

" find character
map f <plug>(easymotion-fl)
map F <plug>(easymotion-Fl)

" unTil character
map t <plug>(easymotion-tl)
map T <plug>(easymotion-Tl)

let g:EasyMotion_move_highlight=0
map ; <Plug>(easymotion-next)
map , <Plug>(easymotion-prev)

let g:EasyMotion_smartcase = 1
"}}}

" Improved * and # motions.
" Plug 'haya14busa/vim-asterisk'

" user defined operators boiler plate.
" Plug 'kana/vim-operator-user'

" ga: go append
" Plug 'mwgkgk/vim-operator-append'

" gt : go title
" Plug 'christoomey/vim-titlecase'

" go: go order
"{{{
" Plug 'christoomey/vim-sort-motion'
" Plug 'yaroot/vissort'

let g:sort_motion = 'go'
let g:sort_motion_lines = 'goo'
let g:sort_motion_visual = 'go'
" Allow sorting from visual block
let g:sort_motion_visual_block_command = "Vissort"
"}}}

" m: move (cut), d: delete
"{{{
" Plug 'svermeulen/vim-cutlass'

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
"}}}

" Calculator and base converter
" g= := go equal, replaces selection or text object with result of calculation
" :Crunch command for exmpanded result
"{{{
" Plug 'arecarn/vim-crunch'
Plug 'blasco/vim-crunch'
Plug 'arecarn/vim-selection' " arecarn/vim-crunch dependency
"}}}

" Comment operator | gc  := go comment
"{{{
" Plug 'tpope/vim-commentary'

autocmd Filetype c,cpp setlocal commentstring=//\ %s
"}}}

" Plug 'tpope/vim-surround'

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
" Plug 'tpope/vim-abolish'

map cr <Plug>(abolish-coerce)
"}}}

" gA & ga  := go All, shows all the number representations of the number under
" cursor
"{{{
" TODO: instead of gA, crA convert all, it is more consistent with the rest of
" the operations
" cr[x,b,d,o]  := convert to hexadecimal, binary, decimal, octal
" glts/vim-magnum required by vim-radical
" Plug 'glts/vim-magnum'
"Plug 'glts/vim-radical'
" Plug 'blasco/vim-radical'

let g:radical_no_mappings=1
nmap cra <Plug>RadicalView
xmap cra <Plug>RadicalView
nmap crd <Plug>RadicalCoerceToDecimal
nmap crx <Plug>RadicalCoerceToHex
nmap cro <Plug>RadicalCoerceToOctal
nmap crb <Plug>RadicalCoerceToBinary
"}}}

" Substitute motion 
" s  := substitute 
" gr := replace in range 
"{{{
" TODO: 'griwiw' not working, it takes the whole line
" Plug 'svermeulen/vim-subversive'

nmap gs  <plug>(SubversiveSubstitute)
" one line
nmap gss <plug>(SubversiveSubstituteLine)
" until the end of the line
nmap gS  <plug>(SubversiveSubstituteToEndOfLine)
" visual
xmap gs <plug>(SubversiveSubstitute)

" sc := swap characters
nnoremap sc xp

" TODO: motion 2 is taken as whole line
" gr<motion1><motion2> := replace <motion1> in <motion2>
nmap gr <plug>(SubversiveSubstituteRange)
xmap gr <plug>(SubversiveSubstituteRange)
" gr<right><right> := rll := replace one character

" gr?<motion1><motion2> := replace with confirmation <motion1> in <motion2>
nmap gr? <plug>(SubversiveSubstituteRangeConfirm)
xmap gr? <plug>(SubversiveSubstituteRangeConfirm)
"}}}


" gwww := search in google
"{{{
" Plug 'kana/vim-wwwsearch'

nmap gws <plug>(operator-wwwsearch)
let g:wwwsearch_command_to_open_uri = 'chromium {uri}'
"}}}

" g[>,<] := go [>,<]
" g[>,<]p := go [>,<] partial
"{{{
" Plug 'machakann/vim-operator-jerk'

xmap g> <plug>(operator-jerk-forward)
nmap g> <plug>(operator-jerk-forward)

xmap g< <plug>(operator-jerk-backward)
nmap g< <plug>(operator-jerk-backward)

nmap g>> <plug>(operator-jerk-forward)l
nmap g<< <plug>(operator-jerk-backward)l

" go shift partial
nmap g>p <plug>(operator-jerk-forward-partial)
xmap g>p <plug>(operator-jerk-forward-partial)

nmap g<p <plug>(operator-jerk-backward-partial)
xmap g<p <plug>(operator-jerk-backward-partial)

nmap g>pp <plug>(operator-jerk-forward-partial)iw
nmap g<pp <plug>(operator-jerk-backward-partial)iw
"}}}

" gfh := go format here
" gfnc := go format n characters
"{{{
" Plug 'lambdalisue/vim-operator-breakline'

map gF <plug>(operator-breakline-textwidth)
" go format n characters
map gFn <plug>(operator-breakline-manual)
"}}}

" xc := exchange
"{{{
" Plug 'tommcdo/vim-exchange'

let g:exchange_no_mappings=1
nmap gx  <plug>(Exchange)
nmap gxc <plug>(ExchangeClear)
nmap gxx <plug>(ExchangeLine)
"}}}

" gf[l,r] := go format [left,right]
"{{{
" Plug 'tommcdo/vim-lion'

" Builtin format Operator
" gf := go format
" gfs := go format syntax
nnoremap gf  gw
nnoremap gfs =

let g:lion_create_maps=0
let g:lion_squeeze_spaces=0

" TODO: LionRight("="), so it doesn't ask and a mapping like gfae (go format align equation) can be created
" TODO: gfa{char}{motion} is more natural than gfa{motion}{char}
nmap gfa  <plug>LionRight
xmap gfa  <plug>VLionRight

nmap gfal <plug>LionLeft
xmap gfal <plug>VLionLeft

nmap gfah <plug>LionRight
xmap gfah <plug>VLionRight
"}}}

" Plug 'inside/vim-grep-operator'

" g+shift+/ == g? := git search with fugitive-vim's Ggrep
"{{{
" Plug 'rgrinberg/vim-operator-gsearch'

map g/ <Plug>(operator-ag)
"map g? <Plug>(operator-ggrep)
"map gh <plug>(operator-helpgrep)
"map gw <Plug>(operator-ag-word)
let g:gsearch_ag_command = 'Ggrep'
"}}}

" g= := replace with expression
" g: := subsitute regex
"{{{
" Plug 'tommcdo/vim-express'

let g:express_no_mappings=1

"TODO: breaks with crunch
" nmap g= <Plug>(Express)
" xmap g= <Plug>(Express)

" TODO: Add option to use vim-abolish :S instead of :s
"nmap gs <Plug>(Subpress)
"xmap gs <Plug>(Subpress)
"}}}

" <leader>[h,j,k,l] send to window (useful with repl or terimal)
"{{{
" Plug 'KKPMW/vim-sendtowindow'

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
"}}}

" gi: go insert
"{{{
" Plug 'deris/vim-operator-insert'

xmap gi  <Plug>(operator-insert-i)
nmap gi  <Plug>(operator-insert-i)

xmap ga  <Plug>(operator-insert-a)
nmap ga  <Plug>(operator-insert-a)
"}}}

" TODO: remaps for ge gb go end go begin
" TODO: visual mode is missing!
"Plug 'rjayatilleka/vim-operator-goto'
" Plug 'thinca/vim-visualstar'

" Improved star motion, keeps cursor position.
"{{{
" Plug 'tyru/operator-star.vim'

" operator-star
nmap g* <Plug>(operator-*)
nmap g# <Plug>(operator-#)
"}}}

" Many additional mappings, check `:map [` for more details
" Plug 'tpope/vim-unimpaired'

" Plug 'tpope/vim-speeddating'

" gz: go check grammar
"{{{
" Plug 'rhysd/vim-grammarous'

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
"}}}


" d<space> delete trailing spaces in line. Also shows them
"{{{
" Plug 'ntpeters/vim-better-whitespace'

let g:better_whitespace_operator='d<space>'
" Set the highlight color for trailing whitespaces:
let g:better_whitespace_ctermcolor = 'gray'
let g:better_whitespace_guicolor = 'gray'
"}}}

"}}}

" -----------------
" Additional Text Objects
" -----------------
"{{{

" i: indent
"Plug 'michaeljsmith/vim-indent-object'
" Plug 'blasco/vim-indent-object'

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
" Plug 'blasco/targets.vim', { 'branch': 'feature/count_parsing' }

let g:targets_aiAI = 'aIAi'
let g:targets_nl = 'nN'

autocmd User targets#mappings#user call targets#mappings#extend({
    \ 'b': {},
    \ 'br': {'pair': [{'o':'(', 'c':')'}, {'o':'[', 'c':']'}, {'o':'{', 'c':'}'}]},
    \ })
"}}}

" Template to create custom text objects
" Plug 'kana/vim-textobj-user'

" e: entire document
" Plug 'kana/vim-textobj-entire'

" l: line
"{{{
" Plug 'blasco/vim-textobj-line'
let g:textobj_line_no_default_key_mappings=1
xmap al <plug>(textobj-line-a)
omap al <plug>(textobj-line-a)

xmap il <plug>(textobj-line-i)
omap il <plug>(textobj-line-i)

xmap Il <plug>(textobj-line-I)
omap Il <plug>(textobj-line-I)
"}}}

" Repeat plugin operations
" Plug 'tpope/vim-repeat'

" f: function object for c, java, vim. When a language server is available we us coc instead
"{{{
" Plug 'kana/vim-textobj-function'

autocmd Filetype vim,c,java xmap af <plug>(textobj-function-a)
autocmd Filetype vim,c,java omap af <plug>(textobj-function-a)

autocmd Filetype vim,c,java xmap if <plug>(textobj-function-i)
autocmd Filetype vim,c,java omap if <plug>(textobj-function-i)

autocmd Filetype vim,c,java xmap Af <plug>(textobj-function-A)
autocmd Filetype vim,c,java omap Af <plug>(textobj-function-A)

autocmd Filetype vim,c,java xmap If <plug>(textobj-function-I)
autocmd Filetype vim,c,java omap If <plug>(textobj-function-I)
"}}}


" TODO: target single line comments
"{{{
" Plug 'glts/vim-textobj-comment'

" if: in find between characters
" af: a find between characters
"{{{
" TODO: b from targets vim needs to be remaped to br (brackets)
" Plug 'thinca/vim-textobj-between'

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
" Plug 'blasco/vim-textobj-variable-segment'

"}}}

"}}}
