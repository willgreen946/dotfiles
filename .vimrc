" General startup stuff
set number
set lazyredraw
set backspace=indent
set laststatus=2
set showtabline=2
set noshowmode
set termguicolors
set cursorline

" Colors
"colorscheme retrobox
colorscheme darkblue
set bg=dark
syntax on

" C#
filetype indent plugin on

" Change cursor type on insert mode
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

" Guy on the internet said it's good for C programming 
set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent
set smartindent
set wrap
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

" Re/mappings for the terminal
tnoremap <C-s> <C-\><C-n> "this is to escape terminal hell

" Status line config
"highlight User1 ctermbg=black ctermfg=white
"highlight User2 ctermbg=black ctermfg=white
"highlight User3 ctermbg=white ctermfg=black
"highlight User4 ctermbg=white ctermfg=black
"highlight User5 ctermbg=white ctermfg=black
"highlight User6 ctermbg=white ctermfg=black
"highlight User7 ctermbg=white ctermfg=black

"highlight User1 guibg='#282828' guifg='#ebdbb2'
"highlight User2 guibg='#282828' guifg='#ebdbb2'
"highlight User3 guibg='#ebdbb2' guifg='#282828'
"highlight User4 guibg='#ebdbb2' guifg='#282828'
"highlight User5 guibg='#ebdbb2' guifg='#282828'
"highlight User6 guibg='#ebdbb2' guifg='#282828'
"highlight User7 guibg='#ebdbb2' guifg='#282828'


let s:modes = {
	\ 'n' : ['%3*', 'NORMAL'],
	\ 'i' : ['%4*', 'INSERT'],
	\ 'v' : ['%5*', 'VISUAL'],
	\ 'r' : ['%6*', 'REPLACE'],
	\ 'c' : ['%7*', 'COMMAND'],
	\}

function! ModeColor() abort
	return get(s:modes, tolower(mode()), '%*')[0]
endfunction

function! CurrentMode() abort
	return ' ' . get(s:modes, tolower(mode()), '-')[1] . ' '
endfunction

function! Statusline()
	let status=""
	let status.=ModeColor()
	let status.=CurrentMode()
	let status.="%1* %f"
	let status.="%2* %m"
	let status.="%= "
	let status.=" [buf %-1.3n]"
	let status.="%2* [%04.l:%03.c]"
	return status
endfunction

set statusline=%!Statusline()

" LSP 
filetype plugin on

function! s:on_lsp_buffer_enabled() abort
	"setlocal omnifunc=lsp#complete
	"setlocal signcolumn=yes
	"if exists('+tagfunc') | setlocal tagfunc=lsp#tagfunc | endif

	let g:lsp_format_sync_timeout = 100
endfunction
