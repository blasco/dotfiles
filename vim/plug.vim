call plug#begin()

Plug 'haya14busa/vim-debugger'

"" UI Additions
Plug 'scrooloose/nerdtree'
"Plug 'majutsushi/tagbar'
Plug 'nanotech/jellybeans.vim'
Plug 'vim-scripts/CSApprox'
Plug 'drmikehenry/vim-fontsize'
Plug 'vim-scripts/ZoomWin'
Plug 'junegunn/vim-peekaboo'
Plug 'terryma/vim-smooth-scroll'

"Plug 'nathanaelkane/vim-indent-guides'
"Plug 'xolox/vim-easytags'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'Rykka/colorv.vim'

"" Syntax Highligt
Plug 'sudar/vim-arduino-syntax'
Plug 'leafgarland/typescript-vim'

"" Commands
Plug 'tpope/vim-fugitive'
Plug 'idanarye/vim-merginal'
"Plug 'godlygeek/tabular'
Plug 'kien/ctrlp.vim'
"Plug 'xolox/vim-session'
"Plug 'vim-scripts/YankRing.vim'
Plug 'danro/rename.vim'
Plug 'glts/vim-magnum' " Required by vim-radical
Plug 'glts/vim-radical' " gA & ga shows all the number representaions of the number under cursor

"" Additional Motions
Plug 'easymotion/vim-easymotion'

"" Additinal Operators
Plug 'christoomey/vim-titlecase'
Plug 'christoomey/vim-sort-motion'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'vim-scripts/ReplaceWithRegister'
Plug 'tpope/vim-abolish'

"" Additional Text Objects
Plug 'michaeljsmith/vim-indent-object'
Plug 'wellle/targets.vim'
Plug 'kana/vim-textobj-user'
"Plug 'kana/vim-textobj-line'
Plug 'kana/vim-textobj-entire'

"" Repeat plugin operations
Plug 'tpope/vim-repeat'

"" Automatic Helpers
"Plug 'scrooloose/syntastic'
"Plug 'Valloric/YouCompleteMe'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'SirVer/ultisnips'
"Plug 'honza/vim-snippets'
"Plug 'nelstrom/vim-markdown-folding'
Plug 'drmikehenry/vim-headerguard'
Plug 'jiangmiao/auto-pairs'

"" Libraries
"Plug 'xolox/vim-misc'

Plug 'metakirby5/codi.vim'

"" Calculator and base converter
""Plug 'rr-/vim-hexdec'
Plug 'arecarn/vim-crunch'
Plug 'arecarn/vim-selection' " arecarn/vim-crunch dependency

"" QML Synatx 
Plug 'peterhoeg/vim-qml'

call plug#end()
