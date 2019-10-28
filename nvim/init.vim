" Plugins installed with vim-plug
source ~/.config/nvim/plug.vim

" Set leaer key
" Note: This line MUST come before any <leader> mappings 
let mapleader=" "

" All hotkeys, not depedant on plugins, are bound here.
source ~/.config/nvim/bindings.vim

" User defined functions.
source ~/.config/nvim/functions.vim

" Plugin-specific configuration.
source ~/.config/nvim/plugin_config.vim
source ~/.config/nvim/coc_config.vim

" Vim configuration.
source ~/.config/nvim/config.vim
