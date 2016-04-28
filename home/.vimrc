set nocompatible

set autoindent
set backspace=start,indent,eol
set expandtab
set laststatus=2
set nobackup
set noswapfile
set nowritebackup
set ruler
set shiftwidth=2
set t_vb=
set tabstop=2
set viminfo=
set visualbell

syntax enable

let g:netrw_dirhistmax=0

autocmd BufWritePre * :%s/\s\+$//e
