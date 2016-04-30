set nocompatible

filetype plugin indent on

syntax enable

set autoindent
set backspace=indent,eol,start
set expandtab
set hidden
set laststatus=2
set nobackup
set noswapfile
set nowritebackup
set ruler
set shiftwidth=2
set showcmd
set t_vb=
set tabstop=2
set viminfo=
set visualbell
set wildmenu

let g:netrw_dirhistmax=0
let mapleader=","

nnoremap <Leader>. :edit .<CR>
nnoremap <Leader>1 :only<CR>
nnoremap <Leader><Leader> :edit #<CR>
nnoremap <Leader>= gg=G
nnoremap <Leader>p :call PasteFromClipboard()<CR>
xnoremap <Leader>s :call SortVisualSelection()<CR>
xnoremap <Leader>y :call CopyToClipboard()<CR>

autocmd BufWritePre * :%s/\s\+$//e

command! OpenConfig call OpenConfig()
command! ReloadConfig call ReloadConfig()

function! OpenConfig()
  edit ~/.vimrc
endfunction

if !exists("*ReloadConfig")
  function ReloadConfig()
    source ~/.vimrc
  endfunction
endif

function! CopyToClipboard() range
  silent normal! gv"+y
  echo "Copied!"
endfunction

function! PasteFromClipboard()
  set paste
  silent normal! "+p
  set nopaste
  echo "Pasted!"
endfunction

function! SortVisualSelection() range
  '<,'>sort
  echo "Sorted!"
endfunction
