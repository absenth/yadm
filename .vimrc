let mapleader = " "

" arrow keys are for lusers.  lusers are on other people's systems
inoremap  <Up>     <NOP>
inoremap  <Down>   <NOP>
inoremap  <Left>   <NOP>
inoremap  <Right>  <NOP>
noremap   <Up>     <NOP>
noremap   <Down>   <NOP>
noremap   <Left>   <NOP>
noremap   <Right>  <NOP>

" Install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif

" Setup VimPlug stuff
call plug#begin('~/.vim/plugged')

" Color Schemes
Plug 'arcticicestudio/nord-vim'
Plug 'ayu-theme/ayu-vim'
Plug 'cocopon/iceberg.vim'
Plug 'gosukiwi/vim-atom-dark'
Plug 'jacoborus/tender.vim'
Plug 'jnurmine/zenburn'
Plug 'joshdick/onedark.vim'
Plug 'morhetz/gruvbox'
Plug 'rakr/vim-one'
Plug 'dracula/vim'

" Plugins
Plug 'w0rp/ale'
Plug 'editorconfig/editorconfig-vim'
Plug 'ryanoasis/vim-devicons'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'yggdroot/indentline'
Plug 'fatih/vim-go'

" Initialize plugin system
call plug#end()

fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

augroup ThePrimeagen "Credit Given Where Due.  Thanks!
    autocmd!
    autocmd BufWritePre * :call TrimWhitespace()
augroup END
