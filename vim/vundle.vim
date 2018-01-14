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
"Plugin 'nanotech/jellybeans.vim'

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
"Plugin 'tpope/vim-surround'
"Plugin 'godlygeek/tabular'
Plugin 'kien/ctrlp.vim'
"Plugin 'xolox/vim-session'
""Plugin 'vim-scripts/YankRing.vim'

"" Automatic Helpers
Plugin 'scrooloose/syntastic'
"Plugin 'Valloric/YouCompleteMe'
"Plugin 'SirVer/ultisnips'
"Plugin 'honza/vim-snippets'
"Plugin 'nelstrom/vim-markdown-folding'

"" Libraries
"Plugin 'xolox/vim-misc'

" ----------------------------------------------------------

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
