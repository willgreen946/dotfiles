" General startup stuff
set number
set wrap
set lazyredraw
set backspace=indent
set laststatus=2
set showtabline=2
set noshowmode

" Guy on the internet said it's good for C programming 
set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent
set smartindent

" Line numbers need to be white
highlight LineNr ctermfg='white'

" Don't like syntax highlighting
syntax off

" Re/mappings 
nnoremap <C-p> :bprevious <Enter>
nnoremap <C-n> :bnext <Enter>
nnoremap <C-w> :tabNext <Enter>
nnoremap <C-e> :tabprevious <Enter>
nnoremap <C-a> :Lexplore<Enter>
nnoremap <C-l> :Lexplore<Enter>
nnoremap <C-s> :terminal ++rows=10<Enter>

" Status line config
highlight User1 ctermbg=0
highlight User2 ctermbg=0 ctermfg=2
highlight User3 ctermbg=2 ctermfg=0
highlight User4 ctermbg=2 ctermfg=0
highlight User5 ctermbg=2 ctermfg=0
highlight User6 ctermbg=2 ctermfg=0
highlight User7 ctermbg=2 ctermfg=0

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
	let status.="%1* [%04.l:%03.c]"
	return status
endfunction

set statusline=%!Statusline()

" Tab line config
hi TabLineFill ctermfg=0 ctermbg=2
hi TabLine ctermfg=0 ctermbg=2
hi TabLineSel ctermfg=0 ctermbg=2
