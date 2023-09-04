
"██╗   ██╗██╗███╗   ███╗██████╗  ██████╗
"██║   ██║██║████╗ ████║██╔══██╗██╔════╝
"██║   ██║██║██╔████╔██║██████╔╝██║     
"╚██╗ ██╔╝██║██║╚██╔╝██║██╔══██╗██║     
" ╚████╔╝ ██║██║ ╚═╝ ██║██║  ██║╚██████╗
"  ╚═══╝  ╚═╝╚═╝     ╚═╝╚═╝  ╚═╝ ╚═════╝

" General startup stuff
set number
set lazyredraw
set backspace=indent
set laststatus=1
set showtabline=2
set showmode
set termguicolors
set cursorline
set noshowmatch
set tabstop=2
set shiftwidth=2
set softtabstop=2
set autoindent
set smartindent
set wrap
set hlsearch
set wildmenu
set colorcolumn=80
set t_Co=256

" Folding
set foldmethod=syntax

" Gvim stuff
set guifont=Ubuntu\ Mono\ Regular\ 12

" Remove bars in GVim
set guioptions-=m
set guioptions-=T
set guioptions-=r

" Colors
colorscheme solarized 
set bg=dark
set background=dark
syntax on

" C#
filetype indent plugin on

" Make vim auto include extra curley brace
inoremap { {<CR>}<Esc>ko
inoremap ( ()<Esc>ha
inoremap [ []<Esc>ha
inoremap " ""<Esc>ha
inoremap ' ''<Esc>ha
inoremap ` ``<Esc>ha

" Change leader key
let mapleader=","

" Change cursor type on insert mode
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

" Stop Annoying cursor jumping
let g:loaded_matchparen=1

" So netrw isn't fucking huge
let g:netrw_winsize=20

" Get rid of the horrible banner in netrw
let g:netrw_banner = 0

" So netrw has the nice tree view 
let g:netrw_liststyle=3

" Re/mappings for normal mode
nnoremap <C-x> :bprevious <Enter>
nnoremap <C-c> :bnext <Enter>
nnoremap <C-p> :tabNext <Enter>
nnoremap <C-n> :tabprevious <Enter>
nnoremap <C-l> :vert Lexplore<Enter>
nnoremap <C-s> :bo horizontal terminal ++rows=10<Enter>
"nnoremap <C-t> :tabnew term<Enter>
nnoremap <C-m> :make <Enter>
noremap <leader>i :colorscheme solarized <Enter>
noremap <leader>u :colorscheme darkblue <Enter>
noremap <leader>t :set showtabline=1<Enter>
noremap <leader>r :set showtabline=0<Enter>
noremap <leader>eh :LspDiagNext <Enter>
noremap <leader>ea :LspDiagShow <Enter>

" Re/mappings for the terminal
" This is to escape terminal hell
tnoremap <C-s> <C-\><C-n> 

" LSP 
filetype plugin on
