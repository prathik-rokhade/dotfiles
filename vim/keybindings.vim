" -- general ----------------------------------------------------
noremap ;             :
imap ;                 <ESC>:
let mapleader =       ","
let maplocalleader =  "-"

" Escape characters {{{
inoremap <leader>~    `
inoremap <leader>1    `
inoremap …            ;
inoremap Ú            :
nnoremap <Bslash> ;
nnoremap \| ,
" }}}

" -- wordmovement -----------------------------------------------
" Arrow keys movement <Ctrl>-<Left> , <Ctrl>-<Right> {{{
" http://superuser.com/questions/123937/how-to-jump-to-the-beginning-or-end-of-line-in-vim-os-x ; http://stackoverflow.com/questions/5345612/vim-in-mac-os-x-terminal-move-cursor-word-by-word; http://superuser.com/questions/614553/is-there-any-way-to-go-word-by-word-using-ctrl/614555#614555; http://stackoverflow.com/questions/81272/is-there-any-way-in-the-os-x-terminal-to-move-the-cursor-word-by-word; http://superuser.com/questions/635482/why-does-optionleft-arrow-work-in-vim-but-not-right-arrow-on-mac-os-x; http://apple.stackexchange.com/questions/1626/os-x-terminal-equivalent-of-ctrlleft-ctrlright
"nnoremap <C-Left> B
map <C-Right>         E
imap <C-Right>        <C-o>E
" }}}

" Option Left = ESC b, Option Right = ESC f {{{
map <ESC>f            el
map <ESC>b            b
imap <ESC>b           <C-o>b
imap <ESC>f           <C-o>e
cmap <ESC>f           <End>
cmap <ESC>b           <Home>
" }}}

" Nativation
map 1           $
map 2           ^
"map 2           $
map 9           ^
"map 3           ^

" -- tabs / splits ----------------------------------------------
" Tab opening/closing {{{
noremap <C-t>         :tabnew<CR>
nnoremap <C-w>        :tabclose!<CR>
noremap  <C-x>        :tabclose!<CR>
" }}}

" Tab navigation {{{
nnoremap –            gT
nnoremap ≠            gt
inoremap –            <C-o>gT
inoremap ≠            <C-o>gt
" }}}

" Vertical split and move to new window {{{
nnoremap <leader>t    <C-W>v<C-W>l
" create a new tab
"nnoremap <silent> <leader>t :tabnew<CR>
" }}}

" Horizontal split and move to new window
nnoremap <leader>h    :split<CR><C-W>j

" Easier split navigation {{{
nnoremap <C-n>        <C-W><C-W>
inoremap <C-n>        <C-w><C-w>
" }}}

" -- functions --------------------------------------------------
" {{{
"<F2 is NERDTree
"map  <F2>             :Require!<CR>  " why is this here? I forgot
"map! <F2>             :Require!<CR>
map  <F1>             :call PrettierAsync()<CR>
map! <F1>             :call PrettierAsync()<CR>
map  <F2>             :call LoadClojurePlugins()<CR>
map! <F2>             :call LoadClojurePlugins()<CR>
nnoremap <silent><F3>  :NERDTreeToggle<CR>
map  <F4>             :call TrimWhiteSpace()<CR>
map! <F4>             :call TrimWhiteSpace()<CR>
map  <F5>             :retab<CR>
map! <F5>             :retab<CR>
map  <F8>             :call Indent()<CR>
map! <F8>             :call Indent()<CR>
map  <F9>             :noh<return><esc>
map! <F9>             :noh<return><esc>
"<F10 is nopaste - FYI only
" }}}

" -- Normal-mode mappings ---------------------------------------

" Center the display line after searches. (This makes it *much* easier to see the line {{{
nnoremap n            nzz
nnoremap N            Nzz
" }}}

" -- All-mode mappings -------------------------------------

" Quick save {{{
map <leader>s         :w<CR>
imap <leader>s        <ESC>:w<CR>
map <leader>w         :w<CR>
imap <leader>w        <ESC>:w<CR>
map <leader>q         :q!<CR>
imap <leader>q        <ESC>:q!<CR>
map <leader>x         :x<CR>
imap <leader>x        <ESC>:x<CR>
" }}}

" Insert mode {{{
imap <leader>i        <ESC>
" }}}

" Control+Z is Undo, in Normal and Insert mode. {{{
noremap  <C-Z>        u
inoremap <C-Z>        <C-O>u
" }}}

" Control+A is select all {{{
noremap  <C-A>        ggVG
inoremap <C-A>        <ESC>ggVG
cnoremap <C-A>        <C-C>gggH<C-O>G
onoremap <C-A>        <C-C>gggH<C-O>G
snoremap <C-A>        <C-C>gggH<C-O>G
xnoremap <C-A>        <C-C>ggVG
" }}}

" -- visual-mode mappings ------------------------------------

" Make shifted cursor keys work to select text {{{
nmap <S-Up>           <Esc>V<Up>
nmap <S-Down>         V<Down>
nmap <S-Left>         V<Left>
nmap <S-Right>        V<Right>
vmap <S-Up>           <Up>
vmap <S-Down>         <Down>
vmap <S-Left>         <Left>
vmap <S-Right>        <Right>
imap <S-Up>           <Esc>v<Up>
imap <S-Down>         <Esc>v<Down>
imap <S-Left>         <Esc>v<Left>
imap <S-Right>        <Esc>v<Right>
" }}}

" Ctrl-C for visual block mode inserts {{{
vmap <C-c>            <Esc>
" }}}

" Tab in visual (or select) mode indents the selected block (and keeps it selected) {{{
vnoremap <Tab>        >gv
vnoremap <S-Tab>      <gv
" }}}

" Backspace in Visual mode deletes selection {{{
vnoremap <BS>         d
" }}}

" Control+S saves     the current file (if it's been changed). Not working. {{{
noremap  <C-S>        :update<CR>
vnoremap <C-S>        <C-C>:update<CR>
inoremap <C-S>        <C-o>:update<CR>
noremap  <C-x>        :exit<CR>
vnoremap <C-x>        <C-C>:exit<CR>
inoremap <C-x>        <C-o>:exit<CR>
" }}}

" -- command-mode mappings ------------------------------------
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'
