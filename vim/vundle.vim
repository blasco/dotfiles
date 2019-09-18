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

"Plugin 'nathanaelkane/vim-indent-guides'
"Plugin 'xolox/vim-easytags'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

Plugin 'sudar/vim-arduino-syntax'
Plugin 'leafgarland/typescript-vim'

Plugin 'Rykka/colorv.vim'

"" Commands
"Plugin 'scrooloose/nerdcommenter'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'tpope/vim-fugitive'
Plugin 'idanarye/vim-merginal'
"Plugin 'tpope/vim-surround'
"Plugin 'godlygeek/tabular'
Plugin 'kien/ctrlp.vim'
"Plugin 'xolox/vim-session'
Plugin 'vim-scripts/YankRing.vim'
Plugin 'danro/rename.vim'

"" Automatic Helpers
Plugin 'scrooloose/syntastic'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'SirVer/ultisnips'
"Plugin 'honza/vim-snippets'
"Plugin 'nelstrom/vim-markdown-folding'
Plugin 'zxqfl/tabnine-vim'

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
