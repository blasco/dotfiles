" ----------------------------------------
" Plugin Configuration
" ----------------------------------------

" ---------------
" Vim airline
" ---------------
set laststatus=2
let g:airline_powerline_fonts=1
let g:airline_theme='dark'

" ---------------
" NERDTree
" ---------------
" Line RelativeNumvers on
nnoremap <silent> <Leader>nn :silent NERDTreeToggle<CR>:set relativenumber<CR>:set number<CR>
nnoremap <silent> <Leader>nf :silent NERDTreeFind<CR>:set relativenumber<CR>:set number<CR>
let g:NERDTreeShowBookmarks=1
let g:NERDTreeChDirMode=2 " Change the NERDTree directory to the root node
"let g:NERDTreeMinimalUI=1
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType")
  \&& b:NERDTreeType == "primary") | q | endif

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
map <Leader>ss <Plug>(easymotion-sn)

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
" Line-Text-Object
" ---------------
omap a_ <Plug>(textobj-line-a)
omap i_ <Plug>(textobj-line-i)


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
