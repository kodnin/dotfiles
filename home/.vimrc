if empty(glob("~/.vim/autoload/plug.vim"))
  silent ! curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

call plug#begin('~/.vim/plugged')
Plug 'chriskempson/base16-vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
call plug#end()

if empty(glob("~/.vim/plugged"))
  execute "PlugInstall"
endif

set nocompatible

filetype plugin indent on

syntax enable

colorscheme base16-default

set autoindent
set autoread
set backspace=indent,eol,start
set encoding=utf-8
set expandtab
set hidden
set history=1000
set hlsearch
set incsearch
set laststatus=2
set lazyredraw
set nobackup
set noswapfile
set nowrap
set nowritebackup
set ruler
set scrolloff=1
set shell=/usr/local/bin/bash
set shiftwidth=2
set showcmd
set sidescrolloff=5
set smarttab
set t_vb=
set tabstop=2
set ttimeout
set ttimeoutlen=100
set ttyfast
set viminfo=
set visualbell
set wildmenu

let mapleader=","

let g:ctrlp_custom_ignore='.git\|node_modules\|tmp'
let g:ctrlp_map="<Leader>f"
let g:ctrlp_show_hidden=1
let g:netrw_dirhistmax=0

nnoremap <Leader>. :edit .<CR>
nnoremap <Leader>0 :quit<CR>
nnoremap <Leader>1 :only<CR>
nnoremap <Leader>2 :split<CR>
nnoremap <Leader>3 :vsplit<CR>
nnoremap <Leader><Leader> :edit #<CR>
nnoremap <Leader><Space> :nohlsearch<CR>
nnoremap <Leader>= gg=G
nnoremap <Leader>p :call PasteFromClipboard()<CR>
xnoremap <Leader>s :call SortVisualSelection()<CR>
xnoremap <Leader>y :call CopyToClipboard()<CR>

autocmd BufWritePre * :%s/\s\+$//e
autocmd QuickFixCmdPost *grep* cwindow
autocmd VimEnter * echo "Hacks and glory await!"

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
