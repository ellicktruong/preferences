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
set relativenumber number " show relative line #s (replace relative line 0 with current line #)
set wildmenu " changes autocomplete in vim to a graphical menu
set showcmd " shows the last command entered in the bottom right

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
" notes: zR to open all, zr to open shallowest level under cursor
nnoremap <leader>z za 

" =====MAPPING=====
" move the cursor up and down visually (don't skip over wrapped lines)
nnoremap j gj
nnoremap k gk

" toggle highlight search with +
" regardless of the current state of hls, next search will always be highlighted
nnoremap <expr> + (&hls && v:hlsearch ? ':nohls' : ':set hls')."\n"

" toggle relative number
nnoremap <F2> :set relativenumber!<CR>

