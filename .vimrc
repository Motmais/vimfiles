call pathogen#infect()
syntax on
filetype plugin indent on

set autoindent
set cindent

set expandtab
set shiftwidth=4
set softtabstop=4
set textwidth=80

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
if has ("gui_running")
  set lines=999 columns=171
endif

au FileType coffee setlocal shiftwidth=2 softtabstop=2
let g:pyindent_open_paren = '&sw'

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
