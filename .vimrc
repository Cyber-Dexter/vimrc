syntax on

let mapleader = ","
set noeb vb t_vb=
set mouse=a
set tabstop=4 softtabstop=4 shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set splitright
set incsearch
set hlsearch
set showcmd
set wildmenu
set autochdir
set termguicolors
set pyxversion=3
highlight ColorColumn ctermbg=0 guibg=lightgrey

let &t_ti.="\e[1 q"
let &t_SI.="\e[5 q"
let &t_EI.="\e[1 q"
let &t_te.="\e[0 q"

call plug#begin('~/.vim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'gruvbox-community/gruvbox'
Plug 'jremmen/vim-ripgrep'
Plug 'tpope/vim-fugitive'
Plug 'vim-utils/vim-man'
Plug 'lyuts/vim-rtags'
Plug 'mbbill/undotree'
Plug 'scrooloose/nerdtree'
Plug 'git://github.com/jiangmiao/auto-pairs.git'
Plug 'turbio/bracey.vim'

call plug#end()

autocmd VimEnter * NERDTree
autocmd Filetype python nnoremap <buffer> <F5> :w<CR>:vert ter python3 %<CR>
nnoremap <F6> <C-w>c

colorscheme gruvbox 
set background=dark

nnoremap <leader><space> :nohlsearch <CR>
nnoremap <leader>f :NERDTreeToggle <CR>
nnoremap <silent> <Leader>k :resize +5<CR>
nnoremap <silent> <Leader>j :resize -5<CR>
nnoremap <silent> <Leader>l :vertical resize +5<CR>
nnoremap <silent> <Leader>h :vertical resize -5<CR>
nnoremap <Leader>vt :vert ter<CR>
nnoremap <Leader>ht :ter<CR>
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-l> <C-W>l
map <C-h> <C-W>h
map <C-i> :!transset -a --dec 0.05<CR>
map <Leader><C-i> :!transset -a --inc 0.05<CR>  
nnoremap B ^
nnoremap E $ 
nnoremap ^ <nop>
nnoremap $ <nop>
inoremap <expr> <TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr> <S-TAB> pumvisible() ? "\<C-p>" : "\<TAB>"
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<CR>"
let g:coc_disable_startup_warning = 1
let g:coc_node_path = '/usr/bin/node'
