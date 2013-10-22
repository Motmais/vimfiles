set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

if has("gui_running")
  Bundle 'Valloric/YouCompleteMe'
endif

Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic'

Bundle 'othree/html5.vim'
Bundle 'derekwyatt/vim-scala'
Bundle 'jdevera/vim-protobuf-syntax'
Bundle 'kchmck/vim-coffee-script'
Bundle 'nathanaelkane/vim-indent-guides'

syntax on
filetype plugin indent on

set encoding=utf-8

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
set cursorline

set autochdir
set wildmode=longest,list
set wildmenu
set path=.
set autoread

set splitright

colorscheme Tomorrow-Night

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
  set vb

  if has("gui_gtk2")
    set guifont=Inconsolata\ 12
  elseif has("gui_win32")
    set guifont=Consolas:h11:cANSI
    map <F11> <Esc>:call libcallnr("gvimfullscreen.dll", "ToggleFullScreen", 0)<CR>
  else
    set guifont=Consolas:h14
  endif
endif

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_mode_map = { 'mode': 'active',
                           \ 'active_filetypes': [],
                           \ 'passive_filetypes': ['html'] }
let g:syntastic_python_checkers = ['flake8']
let g:syntastic_echo_current_error=1
let g:syntastic_stl_format = '[%E{Err: %fe #%e}%B{, }%W{Warn: %fw #%w}]'
let g:syntastic_python_flake8_post_args="--ignore=E221,E501,E251,E203,W291,W293,E231,E123,E702,E241,E127,E302,E272,E126,E261,E128,E122,E202,W391,E262,E225,E124,E303,E301"
let g:syntastic_stl_format = '[%E{Err: %fe #%e}%B{, }%W{Warn: %fw #%w}]'

set completeopt=menuone
