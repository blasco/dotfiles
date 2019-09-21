" ----------------------------------------
" Vundle
" ----------------------------------------
set nocompatible " be iMproved
filetype off     " required!
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" ----------------------------------------------------------

"" UI Additions
Plugin 'scrooloose/nerdtree'
"Plugin 'majutsushi/tagbar'
Plugin 'nanotech/jellybeans.vim'
Plugin 'vim-scripts/CSApprox'
Plugin 'drmikehenry/vim-fontsize'
Plugin 'vim-scripts/ZoomWin'
Plugin 'junegunn/vim-peekaboo'

"Plugin 'nathanaelkane/vim-indent-guides'
"Plugin 'xolox/vim-easytags'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

Plugin 'Rykka/colorv.vim'

"" Syntax Highligt
Plugin 'sudar/vim-arduino-syntax'
Plugin 'leafgarland/typescript-vim'

"" Commands
Plugin 'tpope/vim-fugitive'
Plugin 'idanarye/vim-merginal'
"Plugin 'godlygeek/tabular'
Plugin 'kien/ctrlp.vim'
"Plugin 'xolox/vim-session'
"Plugin 'vim-scripts/YankRing.vim'
Plugin 'danro/rename.vim'

"" Additional Motions
Plugin 'Lokaltog/vim-easymotion'

"" Additinal Opperators
Plugin 'christoomey/vim-titlecase'
Plugin 'christoomey/vim-sort-motion'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-surround'
Plugin 'vim-scripts/ReplaceWithRegister'
Plugin 'tpope/vim-abolish'

"" Additional Text Objects
Plugin 'michaeljsmith/vim-indent-object'
Plugin 'wellle/targets.vim'

"" Automatic Helpers
Plugin 'scrooloose/syntastic'
Plugin 'Valloric/YouCompleteMe'
Plugin 'SirVer/ultisnips'
"Plugin 'honza/vim-snippets'
"Plugin 'nelstrom/vim-markdown-folding'
Plugin 'drmikehenry/vim-headerguard'

"" Libraries
"Plugin 'xolox/vim-misc'

Plugin 'metakirby5/codi.vim'

"" Calculator and base converter
Plugin 'rr-/vim-hexdec'
Plugin 'arecarn/vim-crunch'
Plugin 'arecarn/vim-selection' " arecarn/vim-crunch dependency

"" QML Synatx 
Plugin 'peterhoeg/vim-qml'

" ----------------------------------------------------------

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
