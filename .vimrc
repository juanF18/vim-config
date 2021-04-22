set number
set mouse=a
set numberwidth=1
set clipboard=unnamed
syntax enable
set showcmd
set ruler
set encoding=UTF-8
set showmatch
set sw=2
set relativenumber
set laststatus=2
set noshowmode



call plug#begin('~/.vim/plugged')

" Temas
Plug 'morhetz/gruvbox'
Plug 'lifepillar/vim-solarized8'
"EasyMotion
Plug 'easymotion/vim-easymotion'
"NerdTree
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'christoomey/vim-tmux-navigator'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Vim airLine
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" React code snippets
"Plug 'epilande/vim-react-snippets'
Plug 'honza/vim-snippets'
Plug 'dsznajder/vscode-es7-javascript-react-snippets', { 'do': 'yarn install --frozen-lockfile && yarn compile' }
" Color Config
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'dikiaap/minimalist'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
"Auto Pairs
Plug 'jiangmiao/auto-pairs'

" Ultisnips
"Plug 'SirVer/ultisnips'
call plug#end()

" Configuracion de temas
set background=dark
set termguicolors
colorscheme solarized8
let g:quantum_italics=1

" Atajo de Teclado (Tecla Lider)
let mapleader=" "
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
nmap <Leader>wq :wq<CR>
:imap ii <Esc>

"Easy Motion
nmap <Leader>s <Plug>(easymotion-s2)

"NerdTree
let NERDTreeQuitOnOpen=1
nmap <Leader>n :NERDTreeFind<CR>
set guifont=DroidSansMono\ Nerd\ Font\ 14
source $HOME/.config/nvim/config/nerdtree.vim

"Coc
source $HOME/.config/nvim/config/coc.vim
command! -nargs=0 Prettier :call CocAction('runCommand', 'prettier.formatFile')
nnoremap gp :silent %!prettier --stdin-filepath %<CR>


"VimAirline
let g:airline_theme='dark'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

