" setup non-stupid tabs
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent

" setup some things that should be default but aren't
set nu
set relativenumber
set noerrorbells
set nohlsearch
set hidden
set nowrap
set noswapfile
set nobackup
set undodir=/.vim/undodir
set undofile
set incsearch
set scrolloff=8
set signcolumn=yes

" credit to Damian Conway for his OSCON 2013 VIM Talk on Youtube.
call matchadd('ColorColumn', '\%81v', 100)
