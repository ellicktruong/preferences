" =====TABS=====
set tabstop=4 " When vim opens a file and reads TAB character, it will be replaced with 4 visual spaces
set expandtab " When editing, turns <TAB> into spaces
set softtabstop=4 " When editing, <TAB> will insert 4 spaces | <Backspace> will also remove 4 spaces

" =====COLORS=====
syntax on " enable syntax processing

set cursorline " highlight the current line
highlight cursorline cterm=bold ctermbg=lightmagenta ctermfg=none
highlight error cterm=reverse ctermbg=white ctermfg=red
 
set hlsearch " highlight search matches
highlight search cterm=bold

set showmatch " highlight matching brackets, parents, & braces

" =====MISC=====
set number " show line numbers
set wildmenu " changes autocomplete in vim to a graphical menu
set showcmd " shows the last command entered in teh very bottom right

" =====FOLDING=====
set foldmethod=syntax " predefine folds by syntax 
set foldlevelstart=10 " folds are always open to start

" =====LEADER=====
let mapleader="\<space>"

" insert new line below cursor, advance cursor to new line, and get back into normal mode
nnoremap <leader>o o<esc>

" insert a space at the cursor (do not advance cursor), and get back into normal mode
nnoremap <leader>i i<space><esc>

" toggle folding
" notes: zM to close all, zm to fold deepest level under cursor
" notes2: zR to open all, zr to open shallowest level under cursor
nnoremap <leader>z za 
