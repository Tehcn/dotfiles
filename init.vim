" plugins will be downloaded under the specified director
call plug#begin(has('nvim') ?  stdpath('data') . '/plugged' : '~/.vim/plugged')

" list of my plugins

Plug 'joshdick/onedark.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" list ends here
call plug#end()

" use color scheme
colorscheme onedark

" use <tab> to trigger completion and navigate to the next complete item
function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()

" enable line numbering
set number
set relativenumber

" enable mouse
set mouse=a

" set tab size
set sts=4
set ts=4
set sw=4
