" General startup stuff
set number
set wrap
set lazyredraw
set backspace=indent
set laststatus=2
highlight LineNr ctermfg=2

let g:lightline = {
      \ 'colorscheme': 'landscape',
      \ }

" git clone https://github.com/africavoid/lightline.vim

" yuck
syntax off 

" Re/mappings 
nnoremap <C-p> :Lexplore<Enter>
nnoremap <C-s> :terminal ++rows=10<Enter>
