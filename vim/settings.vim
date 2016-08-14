" -- general ----------------------------------------------------

syntax on
set ruler title laststatus=2 
set backspace=2
set list 
set listchars=tab:▸\ ,eol:¬,nbsp:⋅,trail:•
set pastetoggle=<F10>
set autoread
set encoding=utf-8
set showmatch

"set t_Co=256

if has('mouse')
	set mouse=a
	set ttymouse=xterm2
endif

set clipboard=unnamed

set ttyfast
set lazyredraw

set noswapfile
set nobackup
set nowb

set autowrite

" Allow us to use Ctrl-s and Ctrl-q as keybinds
silent !stty -ixon

" " Restore default behaviour when leaving Vim.
autocmd VimLeave * silent !stty ixon


" -- search -----------------------------------------------------
set ignorecase
set smartcase
set gdefault
set incsearch
set hlsearch


" -- window size ------------------------------------------------
" set winheight=5
" set winheight=999
" set winminheight=5




 

