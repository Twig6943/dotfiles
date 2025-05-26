" ========== BASIC SETTINGS ==========
set nocompatible              " Disable Vi compatibility
set backspace=indent,eol,start
set number                    " Show line numbers
set mouse=a                  " Enable mouse support
syntax on                    " Enable syntax highlighting

" ========== LEADER KEY ==========
let mapleader = " "

" ========== KEYBINDS ==========
" Delete previous word in insert mode with Ctrl+Backspace
inoremap <C-h> <C-w>

" Save with Ctrl+S
nnoremap <C-s> :w<CR>
inoremap <C-s> <Esc>:w<CR>a

" Quit with <leader>q
nnoremap <leader>q :q<CR>

" Escape insert mode with 'jk'
inoremap jk <Esc>

" Nano style Ctrl+x
function! NanoStyleExit()
  if &modified
    let answer = input("Save modified buffer? (y/n) ")
    if answer =~? '^y'
      if expand('%') == ''
        let fname = input("Save as: ")
        if fname == ''
          echo "No file name given, exit aborted."
          return
        endif
        execute 'saveas ' . fname
      else
        write
      endif
      quit
    elseif answer =~? '^n'
      quit!
    else
      echo "Exit aborted."
    endif
  else
    quit
  endif
endfunction

nnoremap <C-x> :call NanoStyleExit()<CR>
inoremap <C-x> <Esc>:call NanoStyleExit()<CR>
