set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

if has("gui_running")
  Bundle 'Valloric/YouCompleteMe'
endif

Bundle 'scrooloose/nerdtree'

Bundle 'othree/html5.vim'
Bundle 'derekwyatt/vim-scala'
Bundle 'jdevera/vim-protobuf-syntax'
Bundle 'kchmck/vim-coffee-script'

syntax on
filetype plugin indent on

set autoindent
set cindent

set expandtab
set shiftwidth=2
set softtabstop=2
set tw=0

set ic
set scs

set number
set ruler

set autochdir
set wildmode=longest,list
set wildmenu
set path=.

set autoread

set splitright

colorscheme Tomorrow-Night-Bright

set guioptions=ai

au FileType python setlocal shiftwidth=4 softtabstop=4
let g:pyindent_open_paren = '&sw * 2'

au BufRead,BufNewFile *.mak setlocal textwidth=0
au BufRead,BufNewFile *.mak setlocal nowrap
au BufRead,BufNewFile *.mak set filetype=mako
au BufRead,BufNewFile *.flex,*.lex set filetype=lex
au BufRead,BufNewFile *.scss set filetype=scss

au Syntax mako so ~/.vim/syntax/mako.vim
au Syntax lex so ~/.vim/syntax/lex.vim

if has("gui_running")
  if has("gui_gtk2")
    set guifont=Inconsolata\ 12
  elseif has("gui_win32")
    set guifont=Consolas:h11:cANSI
    map <F11> <Esc>:call libcallnr("gvimfullscreen.dll", "ToggleFullScreen", 0)<CR>
  else
    set guifont=Consolas:h14
  endif
endif
