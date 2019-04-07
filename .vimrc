set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

if has("gui_running")
  Plugin 'Valloric/YouCompleteMe'
endif

Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'kien/ctrlp.vim'
Plugin 'xolox/vim-misc'

Plugin 'othree/html5.vim'
Plugin 'derekwyatt/vim-scala'
Plugin 'jdevera/vim-protobuf-syntax'
Plugin 'kchmck/vim-coffee-script'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'hynek/vim-python-pep8-indent'
Plugin 'saltstack/salt-vim'
Plugin 'lambdatoast/elm.vim'
Plugin 'elixir-lang/vim-elixir'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'

call vundle#end()

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
set wildignore+=*.pyc,*/node_modules/*,.git/*

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

let g:jsx_ext_required = 0

let g:syntastic_mode_map = { 'mode': 'active',
                           \ 'active_filetypes': [],
                           \ 'passive_filetypes': ['html'] }
let g:syntastic_python_checkers = ['flake8']
let g:syntastic_echo_current_error=1
let g:syntastic_stl_format = '[%E{Err: %fe #%e}%B{, }%W{Warn: %fw #%w}]'
let g:syntastic_python_flake8_post_args="--ignore=E501"
let g:syntastic_stl_format = '[%E{Err: %fe #%e}%B{, }%W{Warn: %fw #%w}]'
let g:syntastic_javascript_checkers = ['eslint']

let g:easytags_auto_highlight = 0 
let g:easytags_async = 1

set completeopt=menuone

set laststatus=2
set t_Co=256

map <C-n> :NERDTreeToggle<CR>
let NERDTreeIgnore = ['\.pyc$']

set rtp+=~/.vim/bundle/ctrlp.vim
