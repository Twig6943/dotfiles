" ========== BASIC SETTINGS ==========
set nocompatible              " Disable Vi compatibility
set backspace=indent,eol,start
set number                    " Show line numbers
set mouse=a                   " Enable mouse support
syntax on                     " Enable syntax highlighting

" Colorscheme (make sure 'termschool' is installed or available)
colorscheme evergreen

" Arrow keys wrapping
set whichwrap+=<,>,[,]

" Select entire buffer with Ctrl+a
map <C-a> <esc>gg0VG<CR>

" Insert mode backspace and word delete
inoremap <C-h> <C-w>
inoremap <C-BS> <C-w>
