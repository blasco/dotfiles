" ----------------------------------------
" Plugin Configuration
" ----------------------------------------

" ---------------
" Vim airline
" ---------------
set laststatus=2
let g:airline_powerline_fonts=0
let g:airline_theme='dark'

" ---------------
" NERDTree
" ---------------
" Line RelativeNumvers on
nnoremap <silent> <leader>nn :silent NERDTreeToggle<CR>:set relativenumber<CR>:set number<CR>
nnoremap <silent> <leader>nf :silent NERDTreeFind<CR>:set relativenumber<CR>:set number<CR>
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
nnoremap <leader>os :OpenSession<CR>

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
" Ensure max height isn't too large
let g:ctrlp_max_height = 10
let g:ctrlp_working_path_mode ='ra' 
" Add .ctrlp to ~/.gitignore_global
" git config --global core.excludesfile ~/.gitignore_global
" touch .ctrlp where we want to set the project's search root
let g:ctrlp_root_markers = ['.ctrlp']

" ---------------
" Vundle
" ---------------
nmap <Leader>bi :BundleInstall!<CR>
nmap <Leader>bu :BundleInstall!<CR> " Because this also updates
nmap <Leader>bc :BundleClean<CR>

" ---------------
" Easy motion
" ---------------

" Gif config
map <Leader>fl <Plug>(easymotion-lineforward)
map <Leader>fj <Plug>(easymotion-j)
map <Leader>fk <Plug>(easymotion-k)
map <Leader>fh <Plug>(easymotion-linebackward)
let g:EasyMotion_startofline = 0 " keep cursor colum when JK motion

" Gif config
map  ? <Plug>(easymotion-s2)
omap  ? <Plug>(easymotion-t2)
map / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
"    <Plug>(easymotion-s) | <Leader>s
" These `n` & `N` mappings are options. You do not have to map `n` & `N` to EasyMotion.
" Without these mappings, `n` & `N` works fine. (These mappings just provide
" different highlight method and have some other features )
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)

map <space> <Plug>(easymotion-s2)
map f <Plug>(easymotion-sl)

let g:EasyMotion_smartcase = 1

" ---------------
" UltiSnips
" ---------------

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c-CR>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-f>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="horizontal"


" ---------------
" vim-indent-guides
" ---------------
set ts=2 sw=2 et
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 2
let g:indent_guides_enable_on_vim_startup = 1

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
" tagbar
" ---------------
nmap <leader>tt :TagbarToggle<CR>

" ---------------
" easytags
" ---------------
"let g:easytags_include_members = 1

" ---------------
" YouCompletMe
" ---------------
map <leader>gg :YcmCompleter GoToDefinition<CR>
let g:ycm_confirm_extra_conf = 0
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
set completeopt-=preview

" ---------------
" YankRinkg
" ---------------
" Cycle through yanks with <c-p> and <c-n>
nnoremap <silent> <leader>pp :YRShow<CR>
nnoremap <silent> <leader>ps :YRSearch<CR>
nnoremap <silent> <leader>pc :YRClear<CR>

let g:yankring_history_dir = '~/.vim/.yankring'
