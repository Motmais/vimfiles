set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

if has("gui_running")
  Bundle 'Valloric/YouCompleteMe'
endif

Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic'
Bundle 'tpope/vim-fugitive'
Bundle 'airblade/vim-gitgutter'
Bundle 'Lokaltog/powerline'
Bundle 'kien/ctrlp.vim'
Bundle 'xolox/vim-misc'
Bundle 'xolox/vim-easytags'

Bundle 'othree/html5.vim'
Bundle 'derekwyatt/vim-scala'
Bundle 'jdevera/vim-protobuf-syntax'
Bundle 'kchmck/vim-coffee-script'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'hynek/vim-python-pep8-indent'
Bundle 'saltstack/salt-vim'
Bundle 'lambdatoast/elm.vim'
Bundle 'elixir-lang/vim-elixir'

syntax on
filetype plugin indent on

set encoding=utf-8

set autoindent
set cindent

set expandtab
set shiftwidth=2
set softtabstop=2
set tw=0
set nowrap
set nofoldenable

set ic
set scs

set number
set cursorline
set colorcolumn=90

set wildmode=longest,list
set wildmenu
set path=.
set autoread
set wildignore+=*.pyc

set splitright
set splitbelow

colorscheme atom-dark

set guioptions=ai
set mouse=a

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
    set guifont=Inconsolata\ for\ Powerline:h16
    map <A-Tab> <C-W>w 
  endif
endif

" FIX: PluginUpdate => git pull: git-sh-setup: No such file or directory in MacVim (OK in non-GUI version of Vim)
if has("gui_macvim")
    set shell=/bin/bash\ -l
endif

let g:syntastic_mode_map = { 'mode': 'active',
                           \ 'active_filetypes': [],
                           \ 'passive_filetypes': ['html'] }
let g:syntastic_python_checkers = ['flake8']
let g:syntastic_echo_current_error=1
let g:syntastic_stl_format = '[%E{Err: %fe #%e}%B{, }%W{Warn: %fw #%w}]'
let g:syntastic_python_flake8_post_args="--ignore=E501"
let g:syntastic_stl_format = '[%E{Err: %fe #%e}%B{, }%W{Warn: %fw #%w}]'

let g:easytags_auto_highlight = 0 
let g:easytags_async = 1

set completeopt=menuone

set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim
set laststatus=2
set t_Co=256

map <C-n> :NERDTreeToggle<CR>
let NERDTreeIgnore = ['\.pyc$']

set rtp+=~/.vim/bundle/ctrlp.vim
