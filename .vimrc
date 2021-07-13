" Basic
set nocompatible
syntax on
set showmode
set showcmd
set encoding=utf-8
set t_Co=256

" Indent
set autoindent
set expandtab
set softtabstop=4
set tabstop=4
set shiftwidth=4

" Interface
set number
set cursorline
set textwidth=80
set wrap
set scrolloff=5
set laststatus=2
set ruler

" Edit
set nobackup
set noswapfile
set noerrorbells
set novisualbell
set wildmenu


inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}
inoremap        (  ()<Left>
inoremap <expr> ) strpart(getline('.'), col('.')-1, 1) == ")" ? "\<Right>" : ")"
inoremap <expr> ' strpart(getline('.'), col('.')-1, 1) == "\'" ? "\<Right>" : "\'\'\<Left>"
inoremap <expr> " strpart(getline('.'), col('.')-1, 1) == "\"" ? "\<Right>" : "\"\"\<Left>"
