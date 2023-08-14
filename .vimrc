" General startup stuff
set number
set wrap
set lazyredraw
set backspace=indent
set laststatus=2
set showtabline=2
set noshowmode
filetype indent plugin on

" Guy on the internet said it's good for C programming 
set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent
set smartindent

" So lex isn't fucking huge
let g:netrw_winsize=20

" Line numbers need to be white
highlight LineNr ctermfg=white
highlight LineNr guifg='white'

" Don't like syntax highlighting
syntax off

" Re/mappings 
" Normal mode
nnoremap <C-p> :bprevious <Enter>
nnoremap <C-n> :bnext <Enter>
nnoremap <C-x> :tabNext <Enter>
nnoremap <C-c> :tabprevious <Enter>
nnoremap <C-l> :vert Lexplore<Enter>
nnoremap <C-s> :bo horizontal terminal ++rows=10<Enter>

" Terminal
tnoremap <C-s> <C-\><C-n> "this is to escape terminal hell

" Status line config
highlight User1 ctermbg=black ctermfg=white
highlight User2 ctermbg=black ctermfg=white
highlight User3 ctermbg=white ctermfg=black
highlight User4 ctermbg=white ctermfg=black
highlight User5 ctermbg=white ctermfg=black
highlight User6 ctermbg=white ctermfg=black
highlight User7 ctermbg=white ctermfg=black

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

" Tab line config
hi TabLineFill ctermfg=black ctermbg=white
hi TabLine ctermfg=black ctermbg=white
hi TabLineSel ctermfg=black ctermbg=white
