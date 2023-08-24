
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
set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent
set smartindent
set wrap
set hlsearch
set wildmenu

" Colors
colorscheme darkblue
set bg=dark
syntax on

" C#
filetype indent plugin on

" make vim auto include extra curley brace
inoremap { {<CR>}<Esc>ko
inoremap ( ()<Esc>ha
inoremap [ []<Esc>ha
inoremap " ""<Esc>ha
inoremap ' ''<Esc>ha
inoremap ` ``<Esc>ha
inoremap < <><Esc>ha
" Change cursor type on insert mode
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

" Stop Annoying cursor jumping
let g:loaded_matchparen=1

" So lex isn't fucking huge
let g:netrw_winsize=20

" Line numbers need to be white
highlight LineNr ctermfg=white
highlight LineNr guifg='white'

" Re/mappings for normal mode
nnoremap <C-x> :bprevious <Enter>
nnoremap <C-c> :bnext <Enter>
nnoremap <C-p> :tabNext <Enter>
nnoremap <C-n> :tabprevious <Enter>
nnoremap <C-l> :vert Lexplore<Enter>
nnoremap <C-s> :bo horizontal terminal ++rows=10<Enter>
nnoremap <C-t> :tab ter<Enter>
nnoremap <C-m> :make <Enter>
nnoremap <C-i> :colorscheme shine <Enter>
nnoremap <C-u> :colorscheme darkblue <Enter>

" Re/mappings for the terminal
tnoremap <C-s> <C-\><C-n> "this is to escape terminal hell

" LSP 
filetype plugin on
