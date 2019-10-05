" ---------------
" Vim airline
" ---------------
set laststatus=2
let g:airline_powerline_fonts=1
let g:airline_theme='dark'

" Buffer navigation
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
nnoremap <silent> <leader>x :silent NERDTreeToggle<CR>:set relativenumber<CR>:set number<CR>
nnoremap <silent> <leader>fx :silent NERDTreeFind<CR>:set relativenumber<CR>:set number<CR>
let g:NERDTreeShowBookmarks=1
let g:NERDTreeChDirMode=2 " Change the NERDTree directory to the root node
" Remove vertical | chars
set fillchars+=vert:\ 


" Line RelativeNumvers on
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType")
  \&& b:NERDTreeType == "primary") | q | endif

 let g:NERDTreeIndicatorMapCustom = {
     \ "Modified"  : "",
     \ "Staged"    : "",
     \ "Untracked" : "濾",
     \ "Renamed"   : "",
     \ "Unmerged"  : "═",
     \ "Deleted"   : "",
     \ "Dirty"     : "",
     \ "Clean"     : "",
     \ 'Ignored'   : "",
     \ "Unknown"   : "?"
     \ }

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

"" ---------------
"" ctrlp.vim
"" ---------------
" Used only for Most Recent Used Files
let g:ctrlp_map = '<c-z>'
let g:ctrlp_cmd = 'CtrlPMRUFiles'
let g:ctrlp_user_command = ['.git/', 'cd %s && git ls-files --exclude-standard -co']
let g:ctrlp_working_path_mode ='ra' 

" ---------------
" Easy motion
" ---------------
map <leader>s <plug>(easymotion-sn)

map f <plug>(easymotion-fl)
map F <plug>(easymotion-Fl)

map t <plug>(easymotion-tl)
map T <plug>(easymotion-Tl)

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
" YouCompletMe
" ---------------
map <leader>gg :YcmCompleter GoToDefinition<CR>
let g:ycm_confirm_extra_conf = 0
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
set completeopt-=preview

" ---------------
" Peekaboo
" ---------------
let g:peekaboo_window = 'botright bo 30new'

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
" FZF
" ---------------
noremap <leader>fg :Rg<Cr>
map <C-e> :GFiles<Cr>

let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

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
" s for substitute
nmap s <plug>(SubversiveSubstitute)
nmap ss <plug>(SubversiveSubstituteLine)
nmap S <plug>(SubversiveSubstituteToEndOfLine)

" TODO: motion 2 is taken as whole line
" r<motion1><motion2>: replace <motion1> in <motion2> 
nmap r <plug>(SubversiveSubstituteRange)
xmap r <plug>(SubversiveSubstituteRange)
" r<right><right> := rll := replace one character

" r?<motion1><motion2>: replace with confirmation <motion1> in <motion2>
nmap r? <plug>(SubversiveSubstituteRangeConfirm)
xmap r? <plug>(SubversiveSubstituteRangeConfirm)

" ---------------
" Vim-operator-insert
" ---------------
" TODO: repeat not working! It's the whole purpose of the operator
xmap i  <Plug>(operator-insert-i)
nmap i  <Plug>(operator-insert-i)

" TODO: make it work with paragraphs and visual blocks
xmap a  <Plug>(operator-insert-a)
nmap a  <Plug>(operator-insert-a)

" ---------------
" Vim-operator-append
" ---------------
nmap ga <plug>(operator-append)

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
map gfh <plug>(operator-breakline-textwidth)
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
nmap x  <plug>(Exchange)
nmap xc <plug>(ExchangeClear)
nmap xx <plug>(ExchangeLine)

" ---------------
" Vim-lion
" ---------------
" ga[r,l]: go format alignment shift [right, left]
let g:lion_create_maps=0
let g:lion_squeeze_spaces=1
nmap gfa  <plug>LionRight
xmap gfa  <plug>LionRight

nmap gfal <plug>LionLeft
xmap gfal <plug>LionLeft

nmap gfar <plug>LionRight
xmap gfar <plug>LionRight

" ---------------
" vim-operator-flashy
" ---------------
let g:operator#flashy#flash_time = 300
map y  <plug>(operator-flashy)
nmap Y <plug>(operator-flashy)$

" ---------------
" vim-sandwich
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
" vim-sort-motion
" ---------------
let g:sort_motion = 'go'
let g:sort_motion_lines = 'goo'
let g:sort_motion_visual = 'go'

" ---------------
" vim-operator-gsearch
" ---------------
" g/: git search with vim-fugitive Ggrep
map g/ <Plug>(operator-ag)
"map g? <Plug>(operator-ggrep)
"map gh <plug>(operator-helpgrep)
"map gw <Plug>(operator-ag-word)
let g:gsearch_ag_command = 'Ggrep'

" ---------------
" vim-epxress
" ---------------
let g:express_no_mappings=1

nmap g= <Plug>(Express)
xmap g= <Plug>(Express)
nmap g== <Plug>(ExpressLine)

nmap g: <Plug>(Subpress)
xmap g: <Plug>(Subpress)
nmap g:: <Plug>(SubpressLine)

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
nmap <c-n> <plug>(YoinkPostPasteSwapForward)
nmap <c-p> <plug>(YoinkPostPasteSwapBack)
nmap p <plug>(YoinkPaste_p)
nmap P <plug>(YoinkPaste_P)
nmap [y <plug>(YoinkRotateBack)
nmap ]y <plug>(YoinkRotateForward)
nmap y= <plug>(YoinkPostPasteToggleFormat)
let g:yoinkAutoFormatPaste=1
let g:yoinkIncludeDeleteOperations=1
