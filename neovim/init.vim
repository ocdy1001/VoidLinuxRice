syntax on
set number relativenumber
set expandtab
set smarttab

nmap <C-n> :NERDTreeToggle<CR>
nmap <C-f> :NERDTreeFind<CR>

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

noremap h i
noremap j h
noremap k j
noremap i k
noremap h i

nnoremap <C-j> <C-W>j
nnoremap <C-l> <C-W>l
nnoremap <C-i> <C-W>i
nnoremap <C-k> <C-W>k

let NERDTreeMapOpenSplit='h'

nmap <C-o> :GFiles<CR>

" plugins

call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

call plug#end()
