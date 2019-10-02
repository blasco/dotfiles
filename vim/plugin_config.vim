" ----------------------------------------
" Plugin Configuration
" ----------------------------------------

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

nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9

" ---------------
" NERDTree
" ---------------
nnoremap <silent> <Leader>x :silent NERDTreeToggle<CR>:set relativenumber<CR>:set number<CR>
nnoremap <silent> <Leader>fx :silent NERDTreeFind<CR>:set relativenumber<CR>:set number<CR>
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
nnoremap <Leader>os :OpenSession<CR>

"" ---------------
"" Tabular
"" ---------------
nmap <Leader>t= :Tabularize /=<CR>
vmap <Leader>t= :Tabularize /=<CR>
nmap <Leader>t: :Tabularize /:\zs<CR>
vmap <Leader>t: :Tabularize /:\zs<CR>
nmap <Leader>t, :Tabularize /,\zs<CR>
vmap <Leader>t, :Tabularize /,\zs<CR>
nmap <Leader>t> :Tabularize /=>\zs<CR>
vmap <Leader>t> :Tabularize /=>\zs<CR>
nmap <Leader>t- :Tabularize /-<CR>
vmap <Leader>t- :Tabularize /-<CR>
nmap <Leader>t" :Tabularize /"<CR>
vmap <Leader>t" :Tabularize /"<CR>

" ---------------
" Fugitive
" ---------------
nmap <silent> <Leader>gc :Gcommit<CR>
nmap <silent> <Leader>gm :Git checkout 
" Revert local changes
nmap <silent> <Leader>gr :Git checkout .<CR>
nmap <silent> <Leader>gw :Gwrite<CR> :Gstatus<CR>
nmap <silent> <Leader>gs :Gstatus<CR>
nmap <silent> <Leader>gp :Git push<CR>
" Mnemonic, gu = Git Update
nmap <silent> <Leader>gu :Git pull<CR>
nmap <silent> <Leader>gd :Gdiff<CR>
set diffopt+=vertical

"" ---------------
"" ctrlp.vim
"" ---------------
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_user_command = ['.git/', 'cd %s && git ls-files --exclude-standard -co']
let g:ctrlp_map = '<c-e>'
let g:ctrlp_working_path_mode ='ra' 
" Add .ctrlp to ~/.gitignore_global
" git config --global core.excludesfile ~/.gitignore_global
" touch .ctrlp where we want to set the project's search root
let g:ctrlp_root_markers = ['.ctrlp']
nmap <C-z> :CtrlPMRUFiles<CR>

" ---------------
" Easy motion
" ---------------
map <Leader>s <Plug>(easymotion-sn)

map f <Plug>(easymotion-fl)
omap f <Plug>(easymotion-fl)
map F <Plug>(easymotion-Fl)
omap F <Plug>(easymotion-Fl)

map t <Plug>(easymotion-tl)
omap t <Plug>(easymotion-tl)
map T <Plug>(easymotion-Tl)
omap T <Plug>(easymotion-Tl)

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
map <Leader>gg :YcmCompleter GoToDefinition<CR>
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
nnoremap <Leader>rr :REPLToggle<Cr>
let g:sendtorepl_invoke_key = "<Leader>w"
autocmd Filetype python nnoremap <F12> <Esc>:REPLDebugStopAtCurrentLine<Cr>
autocmd Filetype python nnoremap <F10> <Esc>:REPLPDBN<Cr>
autocmd Filetype python nnoremap <F11> <Esc>:REPLPDBS<Cr>

" ---------------
" FZF
" ---------------
noremap <leader>fg :Rg<Cr>

" ---------------
" Vim-fontsize
" ---------------
nmap <silent> <Leader>=  <Plug>FontsizeBegin
nmap <silent> <Leader>+  <Plug>FontsizeInc
nmap <silent> <Leader>-  <Plug>FontsizeDec
nmap <silent> <Leader>0  <Plug>FontsizeDefault

" ---------------
" Vim-cutlass
" ---------------
" m: move (cut)
xnoremap m d
nnoremap m d
nnoremap mm dd
nnoremap M D

" ---------------
" Vim-subversive
" ---------------
" s for substitute
nmap s <plug>(SubversiveSubstitute)
nmap ss <plug>(SubversiveSubstituteLine)
nmap S <plug>(SubversiveSubstituteToEndOfLine)

" sr: substitute range

" sr<motion1><motion2>: substitute <motion1> in <motion2> 

" The repited last letter gets <motion1> as 'in word'
nmap sr <plug>(SubversiveSubstituteRange)
xmap sr <plug>(SubversiveSubstituteRange)
nmap srr <plug>(SubversiveSubstituteWordRange)

" sr<motion1><motion2>: substitute with confirmation <motion1> in <motion2>

nmap src <plug>(SubversiveSubstituteRangeConfirm)
xmap src <plug>(SubversiveSubstituteRangeConfirm)
nmap srcc <plug>(SubversiveSubstituteWordRangeConfirm)
