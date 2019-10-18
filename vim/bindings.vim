" ----------------------------------------
" Bindings
" ----------------------------------------
" Set leader to \
" Note: This line MUST come before any <leader> mappings let mapleader="\"
let mapleader=" "

" keep indentation when entering a new line
"inoremap <CR> <CR>x<BS>
"nnoremap s sx<BS>
"nnoremap S Sx<BS>
"nnoremap o ox<BS>
"nnoremap O Ox<BS>

" make Q repeat the last macro instead
nmap Q @@

" Make line completion easier.
imap <C-l> <C-x><C-l>

" Easier Scrolling (think j/k with left hand)
" All variations are mapped for now until I get used to one
" C/M/D + d (page up)
" C/M/D + f (page down)
nmap <M-f> <C-f>
nmap <M-d> <C-b>

" Yank entire buffer with gy
nmap gy :%y+<cr>

" Make Y behave like other capital commands.
nnoremap Y y$

" Just to beginning and end of lines easier.
noremap H ^
noremap L $

" Format paragraph
map <silent><Leader>fp VipJVgq

" Clear search
map <silent><Leader>/ :nohls<CR>

" Highlight search word under cursor without jumping to next
nnoremap <leader>h *<C-O>

" ---------------
" Leader Commands
" ---------------

" Toggle spelling mode with ts: toggle spell
nmap <silent> <leader>ts :set spell!<CR>

" Window Movement
" Here's a visual guide for moving between window splits.
"   4 Window Splits
"   --------
"   g1 | g2
"   ---|----
"   g3 | g4
"   -------
"
"   6 Window Splits
"   -------------
"   g1 | gt | g2
"   ---|----|----
"   g3 | gb | g4
"   -------------
nmap <silent> <leader>wh :wincmd h<CR>
nmap <silent> <leader>wj :wincmd j<CR>
nmap <silent> <leader>wk :wincmd k<CR>
nmap <silent> <leader>wl :wincmd l<CR>

" Split window vertically or horizontally *and* switch to the new split!
nmap <silent> <leader>ws :split<Bar>:wincmd j<CR>
nmap <silent> <leader>wvs :vsplit<Bar>:wincmd l<CR>

" -------------------------------------
" The following commands are from Janus
" http://git.io/_GhulA
" -------------------------------------

" Underline the current line with '-'
nmap <silent> <leader>ul :t.\|s/./-/g\|:nohls<cr>

" Format the entire file
nmap <leader>fef ggVG=

" Format a json file with Python's built in json.tool.
" from https://github.com/spf13/spf13-vim/blob/3.0/.vimrc#L390
nmap <leader>jt <Esc>:%!python -m json.tool<CR><Esc>:set filetype=json<CR>

" ---------------
" Text Object
" ---------------
" l: Current Line
" alternative: cl: Current Line
"xnoremap il ^og_
"onoremap il :normal vil<CR>
"xnoremap Il 0o$h
"onoremap Il :normal vIl<CR>
"xnoremap al 0o$
"onoremap al :normal val<CR>

" --------------
" Format Operator
" --------------
nnoremap gf  gw
nnoremap gfs =

" --------------
" Enter normal mode in terminal with Esc
" --------------
tnoremap <Esc> <C-\><C-n>

" TODO:
" " --------------
" " Paste from operator
" " --------------
" function! 
" nmap gp


