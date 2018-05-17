" decrease delay in 'O' command
set noesckeys

" indent style
set tabstop=8
set expandtab
set smartindent
set shiftwidth=2
set softtabstop=2
set autoindent

" make sure to indent correctly in C
set cinoptions+=t0

" help ctags find definition
set cscopetag

" vim-plug
call plug#begin('~/.vim/plugged')
Plug 'editorconfig/editorconfig-vim'
Plug 'flazz/vim-colorschemes'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'rust-lang/rust.vim'
call plug#end()

" set color scheme
set t_Co=256
colorscheme heroku-terminal
"colorscheme molokai_dark
"colorscheme blacklight
"colorscheme onedark

" set transparent background
hi Normal guibg=NONE ctermbg=NONE
