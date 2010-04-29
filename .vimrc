set nocompatible
syntax on
filetype plugin indent on
set autoindent
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set smarttab
set ruler
set showcmd
set incsearch
set hlsearch
autocmd InsertLeave * se nocul 
autocmd InsertEnter * se cul 


" nice status in the ruler
set ruler
set laststatus=2

" auto-save buffer as you jump between them
set autowrite
" remap'd keys
map <Tab> <C-W>w


" backup to ~/.tmp
set backup
set backupdir=$HOME/.tmp
set writebackup

" no swap file
set noswapfile
