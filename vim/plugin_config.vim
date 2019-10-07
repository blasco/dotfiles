" ---------------
" Vim airline
" ---------------
set laststatus=2
let g:airline_powerline_fonts=1
let g:airline_theme='dark'

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
" Create, open, and modify files within NERDTree, just press m key and window 
" will provide the instructions
nnoremap <silent> <leader>x :silent NERDTreeToggle<CR>:set relativenumber<CR>:set number<CR>
nnoremap <silent> <leader>fx :silent NERDTreeFind<CR>:set relativenumber<CR>:set number<CR>
let g:NERDTreeShowBookmarks=1
let g:NERDTreeChDirMode=2 " Change the NERDTree directory to the root node
" Remove vertical | chars
set fillchars+=vert:\ 

"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType")
"  \&& b:NERDTreeType == "primary") | q | endif

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
  let g:ctrlp_user_command = 'rg %s --files --color=never --glob ""'
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
" Vim-commentary
" ---------------
setlocal commentstring=//\ %s

" ---------------
" Vim-targets
" ---------------
let g:targets_aiAI = 'aIAi'
let g:targets_nl = 'nN'

" ---------------
" Vim-smooth-scroll
" ---------------
noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 0, 2)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 0, 2)<CR>
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 0, 3)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 0, 3)<CR>

" ---------------
" Vim-repl
" ---------------
nnoremap <leader>rr :REPLToggle<Cr>
let g:sendtorepl_invoke_key = "<leader>w"
autocmd Filetype python nnoremap <F12> <Esc>:REPLDebugStopAtCurrentLine<Cr>
autocmd Filetype python nnoremap <F10> <Esc>:REPLPDBN<Cr>
autocmd Filetype python nnoremap <F11> <Esc>:REPLPDBS<Cr>

" ---------------
" Vim-fontsize
" ---------------
nmap <silent> <leader>=  <plug>FontsizeBegin
nmap <silent> <leader>+  <plug>FontsizeInc
nmap <silent> <leader>-  <plug>FontsizeDec
nmap <silent> <leader>0  <plug>FontsizeDefault

" ---------------
" Vim-cutlass
" ---------------
" m: move (cut)
xnoremap m d
nnoremap m d
nnoremap mm dd
nnoremap M D

" set marks with <leader>m
nnoremap <leader>m m

" ---------------
" Vim-subversive
" ---------------
" s: substitute
nmap s <plug>(SubversiveSubstitute)
xmap s <plug>(SubversiveSubstitute)
" ss: substitute selection
nmap ss <plug>(SubversiveSubstitute)
xmap ss <plug>(SubversiveSubstitute)

" From Clipboard 
" sc: s clipboard
nmap sc "+<plug>(SubversiveSubstitute)
xmap sc "+<plug>(SubversiveSubstitute)

" From Primary Clipboard
" s*: s star. Mnemonic: star is selection
nmap s* "*<plug>(SubversiveSubstitute)
xmap s* "*<plug>(SubversiveSubstitute)

" TODO: motion 2 is taken as whole line
" r<motion1><motion2>: replace <motion1> in <motion2> 
nmap gr <plug>(SubversiveSubstituteRange)
xmap gr <plug>(SubversiveSubstituteRange)
" r<right><right> := rll := replace one character

" r?<motion1><motion2>: replace with confirmation <motion1> in <motion2>
nmap grc <plug>(SubversiveSubstituteRangeConfirm)
xmap grc <plug>(SubversiveSubstituteRangeConfirm)

" ---------------
" Vim-operator-insert
" ---------------
" TODO: repeat not working! It's the whole purpose of the operator
xmap gi  <Plug>(operator-insert-i)
nmap gi  <Plug>(operator-insert-i)

" TODO: make it work with paragraphs and visual blocks
xmap ga  <Plug>(operator-insert-a)
nmap ga  <Plug>(operator-insert-a)

" ---------------
" Vim-wwwsearch
" ---------------
" gws: go web search
nmap gws <plug>(operator-wwwsearch)
let g:wwwsearch_command_to_open_uri = 'chromium {uri}'

" ---------------
" Vim-operator-jerk
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
" Vim-operator-breakline
" ---------------
" go format up to here
map gfh <plug>(operator-breakline-textwidth)
" go format n characters
map gfnc <plug>(operator-breakline-manual)

" ---------------
" Vim-textobj-function
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
" Vim-textobj-line
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
" Vim-exchange
" ---------------
let g:exchange_no_mappings=1
nmap gx  <plug>(Exchange)
nmap gxc <plug>(ExchangeClear)
nmap gxx <plug>(ExchangeLine)

" ---------------
" Vim-lion
" ---------------
" ga[h(<-),l(->)]{char}: go format alignment add extra white characters to the 
" [right, left] of char
let g:lion_create_maps=0
let g:lion_squeeze_spaces=1
nmap gfa  <plug>LionRight
xmap gfa  <plug>VLionRight

nmap gfal <plug>LionLeft
xmap gfal <plug>VLionLeft

nmap gfah <plug>LionRight
xmap gfah <plug>VLionRight

" ---------------
" Vim-operator-flashy
" ---------------
let g:operator#flashy#flash_time = 300
map y  <plug>(operator-flashy)
nmap Y <plug>(operator-flashy)$

" ---------------
" Vim-sandwich
" ---------------
let g:textobj_sandwich_no_default_key_mappings  = 1
let g:operator_sandwich_no_default_key_mappings = 1
let g:textobj_sandwich_no_default_key_mappings  = 1

nmap ys <plug>(operator-sandwich-add)
nmap ds <plug>(operator-sandwich-delete)
nmap cs <plug>(operator-sandwich-replace)

" dq: 'delete' quotes
nmap dsq dsaq
nmap dsb dsab

" db: delete braces/brackets
nmap csq csaq
nmap csb csab

" ---------------
" Vim-operator-gsearch
" ---------------
" g/: git search with vim-fugitive Ggrep
map g/ <Plug>(operator-ag)
"map g? <Plug>(operator-ggrep)
"map gh <plug>(operator-helpgrep)
"map gw <Plug>(operator-ag-word)
let g:gsearch_ag_command = 'Ggrep'

" ---------------
" Vim-epxress
" ---------------
let g:express_no_mappings=1

nmap g= <Plug>(Express)
xmap g= <Plug>(Express)
nmap g== <Plug>(ExpressLine)

nmap g: <Plug>(Subpress)
xmap g: <Plug>(Subpress)
nmap g:: <Plug>(SubpressLine)

" ---------------
" Vim-sendtowindow
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
" Vim-yoink
" ---------------
" TODO: yoink does not support swapping when doing paste in visual mode
" p: Paste from Vim's register
" gps: go paste X11 selection (known as PRIMARY.   Copy on select clipboard of X11)
" gpc: go paste Clipboard     (known as CLIPBOARD. Typically Ctrl+C. This is the only clipboard in Windows and OS X)

" y: yank to Vim's registers
" gys := go yank to selection clipboard (X11 PRIMARY clipboard)
" gyc := go yank to CLIPBOARD

let g:yoinkAutoFormatPaste=0
let g:yoinkIncludeDeleteOperations=1
nmap <c-n> <plug>(YoinkPostPasteSwapForward)
nmap <c-p> <plug>(YoinkPostPasteSwapBack)

nmap p <plug>(YoinkPaste_p)
xmap p p
nmap P <plug>(YoinkPaste_P)
xmap P p

nmap [y <plug>(YoinkRotateBack)
nmap ]y <plug>(YoinkRotateForward)
nmap y= <plug>(YoinkPostPasteToggleFormat)

nmap gpc "+<plug>(YoinkPaste_p)
nmap gPc "+<plug>(YoinkPaste_P)
nmap gps "*<plug>(YoinkPaste_p)
nmap gPs "*<plug>(YoinkPaste_P)

map gyc "+y
map gy* "*y

" ---------------
" Vim-textojb-between
" ---------------
" ibc: in between characters
" abc: around between characters
let g:textobj_between_no_default_key_mappings=1

omap ibc <Plug>(textobj-between-i)
xmap ibc <Plug>(textobj-between-i)

omap abc <Plug>(textobj-between-a)
xmap abc <Plug>(textobj-between-a)

" ---------------
" Vim-sort-motion
" ---------------
" Vim-textobj-indent needs to be updated as it makes use of the default `o` operator.
" o: order
" nmap <silent> <Cr> :normal! o<CR>S
" nmap <silent> <S-cr> :normal! O<CR>S
let g:sort_motion = 'go'
let g:sort_motion_lines = 'goo'
let g:sort_motion_visual = 'go'

" ---------------
" comment target
" ---------------
" TODO: iec: in entire comment, selects all adjacent lines
" TODO: icl: in comment line, only one comment line

" ---------------
" vim-textobj-wiw/blob
" ---------------
let g:textobj_wiw_default_key_mappings_prefix='v'

" ---------------
" Undotree
" ---------------
nnoremap <leader>z :UndotreeToggle<cr>

" ---------------
" Vim-asterisk
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
