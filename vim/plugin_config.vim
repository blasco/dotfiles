" ---------------
" vim airline
" ---------------
set noshowmode     " Don't show the mode since Powerline shows it
set laststatus=2
let g:airline_powerline_fonts=1
let g:airline_theme='deus'

" Buffer navigation. Provides a buffer bar on top with a small number that
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

" ---------------
" NERDTree
" ---------------
" Tip: Create, open, and modify files within NERDTree, just press m key and window
" will provide the instructions

" x := explorer
" Toggle file explorer
" xx : = explorer toggle
nnoremap <silent> <leader>xx :silent NERDTreeToggle<CR>
" xo := explorer open
nnoremap <silent> <leader>xo :silent NERDTree<CR>
" xc := explorer close
nnoremap <silent> <leader>xc :silent NERDTreeClose<CR>
" xf := explorer find file := find current opened file in explorer
nnoremap <silent> <leader>xf :silent NERDTreeFind<CR>
" xg := explorer git := Change directory to root of the repository
nnoremap <silent> <leader>xg :silent NERDTreeVCS<CR>

let g:NERDTreeShowBookmarks=1
" Change the NERDTree directory to the root node
let g:NERDTreeChDirMode=2

" Remove vertical | chars
set fillchars+=vert:\

"" ---------------
"" Session
"" ---------------
let g:session_autosave=0
let g:session_autoload=0
nnoremap <leader>os :OpenSession<CR>

"" ---------------
"" Tabular
"" ---------------
nmap <leader>t= :Tabularize /=<CR>
vmap <leader>t= :Tabularize /=<CR>
nmap <leader>t: :Tabularize /:\zs<CR>
vmap <leader>t: :Tabularize /:\zs<CR>
nmap <leader>t, :Tabularize /,\zs<CR>
vmap <leader>t, :Tabularize /,\zs<CR>
nmap <leader>t> :Tabularize /=>\zs<CR>
vmap <leader>t> :Tabularize /=>\zs<CR>
nmap <leader>t- :Tabularize /-<CR>
vmap <leader>t- :Tabularize /-<CR>
nmap <leader>t" :Tabularize /"<CR>
vmap <leader>t" :Tabularize /"<CR>

" ---------------
" Fugitive
" ---------------
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


" ---------------
" ctrlp.vim
" ---------------
" Used only for Most Recent Used Files
let g:ctrlp_map = '<c-e>'
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
nmap <C-z> :CtrlPMRUFiles<CR>

" ---------------
" Easy motion
" ---------------
map / <plug>(easymotion-sn)

" find character
map f <plug>(easymotion-fl)
map F <plug>(easymotion-Fl)
map <leader>Fn <plug>(easymotion-Fn)

" unTil character
map t <plug>(easymotion-tl)
map T <plug>(easymotion-Tl)

let g:EasyMotion_move_highlight=0
map ; <Plug>(easymotion-next)
map , <Plug>(easymotion-prev)

let g:EasyMotion_smartcase = 1

" ---------------
" UltiSnips
" ---------------

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c-CR>"
let g:UltiSnipsJumpForwardTrigger="<c-f>"
let g:UltiSnipsJumpBackwardTrigger="<c-b>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="horizontal"
let g:UltiSnipsSnippetsDir="~/.vim/UltiSnips"

" ---------------
" Syntastic
" ---------------
let g:syntastic_enable_highlighting = 0
let g:syntastic_error_symbol = ">"
let g:syntastic_warning_symbol = "!"
highlight SyntasticErrorSign guibg=#823434
highlight SyntasticWarningSign guibg=#45668F
let g:syntastic_check_on_open = 1
" In orther to change checker to pylint 2.7 or pylint 3.4
" uninstall the version we do not want to use (as they have the same name)
let g:syntastic_python_checkers = ['pylint']

" ---------------
" Peekaboo
" ---------------
" On the bottom
"let g:peekaboo_window = 'botright bo 30new'
" On the right side
let g:peekaboo_window  = 'vert bo 30new'
let g:peekaboo_compact = 0

" ---------------
" vim-commentary
" ---------------
autocmd Filetype c,cpp setlocal commentstring=//\ %s

" ---------------
" vim-targets
" ---------------
let g:targets_aiAI = 'aIAi'
let g:targets_nl = 'nN'

" ---------------
" vim-smooth-scroll
" ---------------
"noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 0, 1)<CR>
"noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 0, 1)<CR>
"noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 0, 1)<CR>
"noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 0, 1.5)<CR>

" ---------------
" vim-repl
" ---------------
let g:repl_program = {
			\	'python': 'ipython',
			\	}
nnoremap <leader>rr :REPLToggle<Cr>
"rs := repl send
let g:sendtorepl_invoke_key = "<leader>rs"
autocmd Filetype python nnoremap <F12> <Esc>:REPLDebugStopAtCurrentLine<Cr>
autocmd Filetype python nnoremap <F10> <Esc>:REPLPDBN<Cr>
autocmd Filetype python nnoremap <F11> <Esc>:REPLPDBS<Cr>

" ---------------
" vim-fontsize
" ---------------
nmap <silent> <leader>=  <plug>FontsizeBegin
nmap <silent> <leader>+  <plug>FontsizeInc
nmap <silent> <leader>-  <plug>FontsizeDec
nmap <silent> <leader>0  <plug>FontsizeDefault

" ---------------
" vim-cutlass
" ---------------
" m: move (cut)
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

" ---------------
" vim-subversive
" ---------------
" s := substitute
nmap s  <plug>(SubversiveSubstitute)
" one line
nmap ss <plug>(SubversiveSubstituteLine)
" until the end of the line
nmap S  <plug>(SubversiveSubstituteToEndOfLine)
" visual
xmap ss <plug>(SubversiveSubstitute)

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

" ---------------
" vim-operator-insert
" ---------------
" TODO: repetition not working! It's the whole purpose of the operator
" TODO: make it work with paragraphs and visual blocks
xmap gi  <Plug>(operator-insert-i)
nmap gi  <Plug>(operator-insert-i)

xmap ga  <Plug>(operator-insert-a)
nmap ga  <Plug>(operator-insert-a)

" ---------------
" vim-wwwsearch
" ---------------
" gws := go web search
nmap gws <plug>(operator-wwwsearch)
let g:wwwsearch_command_to_open_uri = 'chromium --app={uri} --start-fullscreen'

" ---------------
" vim-operator-jerk
" ---------------
" go shift
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

" ---------------
" vim-operator-breakline
" ---------------
" go format
map gF <plug>(operator-breakline-textwidth)
" go format n characters
map gFn <plug>(operator-breakline-manual)

" ---------------
" vim-textobj-function
" ---------------
autocmd Filetype vim,c,java xmap af <plug>(textobj-function-a)
autocmd Filetype vim,c,java omap af <plug>(textobj-function-a)

autocmd Filetype vim,c,java xmap if <plug>(textobj-function-i)
autocmd Filetype vim,c,java omap if <plug>(textobj-function-i)

autocmd Filetype vim,c,java xmap Af <plug>(textobj-function-A)
autocmd Filetype vim,c,java omap Af <plug>(textobj-function-A)

autocmd Filetype vim,c,java xmap If <plug>(textobj-function-I)
autocmd Filetype vim,c,java omap If <plug>(textobj-function-I)

" ---------------
" vim-textobj-line
" ---------------
" TODO: allow to accept count so we can do: d3al (delete 3 times a line)
let g:textobj_line_no_default_key_mappings=1
xmap al <plug>(textobj-line-a)
omap al <plug>(textobj-line-a)

xmap il <plug>(textobj-line-i)
omap il <plug>(textobj-line-i)

xmap Il <plug>(textobj-line-I)
omap Il <plug>(textobj-line-I)

" ---------------
" vim-exchange
" ---------------
let g:exchange_no_mappings=1
nmap gx  <plug>(Exchange)
nmap gxc <plug>(ExchangeClear)
nmap gxx <plug>(ExchangeLine)

" ---------------
" vim-lion
" ---------------
" ga[h(<-),l(->)]{char} := go format alignment add extra white characters to the
" [right, left] of char
let g:lion_create_maps=0
let g:lion_squeeze_spaces=0
nmap gfa  <plug>LionRight
xmap gfa  <plug>VLionRight

nmap gfal <plug>LionLeft
xmap gfal <plug>VLionLeft

nmap gfah <plug>LionRight
xmap gfah <plug>VLionRight


" ---------------
" vim-operator-flashy
" ---------------
let g:operator#flashy#flash_time = 300
map y  <plug>(operator-flashy)
" yank a line (no flash operator)
nnoremap yy yy
" yv: yank visual selection
xnoremap yy y
map Y <plug>(operator-flashy)$

" ---------------
" vim-sandwich
" ---------------
let g:textobj_sandwich_no_default_key_mappings  = 1
let g:operator_sandwich_no_default_key_mappings = 1
let g:textobj_sandwich_no_default_key_mappings  = 1

nmap ys <plug>(operator-sandwich-add)
xmap ys <plug>(operator-sandwich-add)
nmap ds <plug>(operator-sandwich-delete)
xmap ds <plug>(operator-sandwich-delete)
nmap cs <plug>(operator-sandwich-replace)
xmap cs <plug>(operator-sandwich-replace)

" in visual
" v: visual
xnoremap cc c
xnoremap dd d

" dq := 'delete' quotes
nmap dsq dsaq
nmap dsb dsab

" db := delete braces/brackets
nmap csq csaq
nmap csb csab

" ---------------
" vim-operator-gsearch
" ---------------
" g/ := git search with vim-fugitive Ggrep
map g/ <Plug>(operator-ag)
"map g? <Plug>(operator-ggrep)
"map gh <plug>(operator-helpgrep)
"map gw <Plug>(operator-ag-word)
let g:gsearch_ag_command = 'Ggrep'

" ---------------
" vim-epxress
" ---------------
let g:express_no_mappings=1

"TODO: breaks with crunch
" nmap g= <Plug>(Express)
" xmap g= <Plug>(Express)

" TODO: Add option to use vim-abolish :S instead of :s
nmap gs <Plug>(Subpress)
xmap gs <Plug>(Subpress)

" ---------------
" vim-sendtowindow
" ---------------
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

" operator-star
nmap g* <Plug>(operator-*)
nmap g# <Plug>(operator-#)

" ---------------
" vim-yoink
" ---------------
" TODO: yoink doesn't work in visual mode

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

" ---------------
" vim-textojb-between
" ---------------
" ibc := in between characters
" abc := around between characters
let g:textobj_between_no_default_key_mappings=1

omap ibc <Plug>(textobj-between-i)
xmap ibc <Plug>(textobj-between-i)

omap abc <Plug>(textobj-between-a)
xmap abc <Plug>(textobj-between-a)

" ---------------
" vim-sort-motion
" ---------------
" vim-textobj-indent needs to be updated as it makes use of the default `o` operator.
" go := order
" nmap <silent> <Cr>  :normal! o<CR>S
" nmap <silent> <S-cr> :normal! O<CR>S
let g:sort_motion = 'go'
let g:sort_motion_lines = 'goo'
let g:sort_motion_visual = 'go'

" ---------------
" comment target
" ---------------
" TODO: icb := in comment block, selects all adjacent comment lines
" TODO: icl := in comment line, only one comment line

" ---------------
" vim-textobj-wiw/blob
" ---------------
let g:textobj_wiw_default_key_mappings_prefix='v'

" ---------------
" Undotree
" ---------------
nnoremap <leader>z :UndotreeToggle<cr>

" ---------------
" vim-asterisk
" ---------------
let g:asterisk#keeppos = 1
map *   <Plug>(asterisk-*)
map #   <Plug>(asterisk-#)
map g*  <Plug>(asterisk-g*)
map g#  <Plug>(asterisk-g#)
map z*  <Plug>(asterisk-z*)
map gz* <Plug>(asterisk-gz*)
map z#  <Plug>(asterisk-z#)
map gz# <Plug>(asterisk-gz#)

" ---------------
" vim-abolish
" ---------------
" cr[
"     s:= snake_case,
"     m:= mixedCase,
"     c:= camelCase,
"     u:= UPPER_CASE ,
"     -:= dash-case,
"     .:= dot.case,
"     <space>:=space case,a
"     t:= Title Case
" ] := coerce, change case
map cr <Plug>(abolish-coerce)

" ---------------
" vim-radical
" ---------------
let g:radical_no_mappings=1
nmap cra <Plug>RadicalView
xmap cra <Plug>RadicalView
nmap crd <Plug>RadicalCoerceToDecimal
nmap crx <Plug>RadicalCoerceToHex
nmap cro <Plug>RadicalCoerceToOctal
nmap crb <Plug>RadicalCoerceToBinary

" ---------------
" jellybeans.vim
" ---------------
" colorscheme jellybeans
let g:jellybeans_use_term_italics = 0
let g:jellybeans_use_gui_italics = 0

" ---------------
" vim-corvine
" ---------------
colorscheme corvine
let g:corvine_italics = 0

" ---------------
" comfortable-motion
" ---------------
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

" ---------------
" vim-better-whitespace
" ---------------
" TODO: keep cursor position
" TODO: visual mode
" d<space>
" Set the highlight color for trailing whitespaces:
let g:better_whitespace_ctermcolor = 'gray'
let g:better_whitespace_guicolor = 'gray'

" ---------------
" Color Picker
" ---------------
" To see all the mappings execute
" :map <leader>c

" <leader>cap color auto preview
" <leader>ce: color edit
" Within the edit dialog :ColorVPicker for a picker dialog box
" <leader>cii : color insert
" <leader>cir : color insert rgb

" ---------------
" vim-textobj-variable-segment
" ---------------
set iskeyword+=\$,-   " Add extra characters that are valid parts of variables

" ---------------
" vim-grammarous
" ---------------
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
