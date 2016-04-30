set nocompatible

set autoindent
set backspace=start,indent,eol
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

syntax enable

let g:netrw_dirhistmax=0
let mapleader=","

nnoremap <Leader>1 :only<CR>
nnoremap <Leader><Leader> :edit #<CR>
nnoremap <Leader>f :edit .<CR>
nnoremap <Leader>p :set paste<CR>"+p<CR>:set nopaste<CR>
xnoremap <Leader>s :sort<CR>
xnoremap <Leader>y "+y<CR>

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
