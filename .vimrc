"Basic settings
set nocompatible
set backspace=indent,eol,start
set hidden
set wildmenu
set mouse=a
set nomousehide
set mousemodel=popup
set ruler
set history=1000
set showcmd
set showmode
"set scrolloff=10
set autoindent
syntax on

"Tabs
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab

"Search options
"clear highlighted search on pressing Ctrl + l
nnoremap <C-l> :nohlsearch<CR><C-l>
autocmd InsertEnter * :setlocal nohlsearch
autocmd InsertLeave * :setlocal hlsearch

"Bottom status bar
set laststatus=2
set statusline+=%F
set title
set hlsearch
set statusline=%F       "tail of the filename
"set statusline+=[%{strlen(&fenc)?&fenc:'none'}, "file encoding
"set statusline+=%{&ff}] "file format
"set statusline+=%h      "help file flag
"set statusline+=%m      "modified flag
"set statusline+=%r      "read only flag
"set statusline+=%y      "filetype
set statusline+=%=      "left/right separator
set statusline+=%c,     "cursor column
set statusline+=%l/%L   "cursor line/total lines
set statusline+=\ %P    "percent through file

"Line numbering
set number
nmap <silent> <F2> :set invnumber<cr>

"Undo settings
"persistant undo
set undofile
"maximum number of changes that can be undone
set undolevels=9999 
"maximum number lines to save for undo on a buffer reload
set undoreload=9999 
"create and set undo dir
silent !mkdir -p $HOME/.vimundo >/dev/null 2>&1
set undodir=$HOME/.vimundo/

"set bg color of column 81 onwards
"hi ColorColumn ctermbg=lightgrey guibg=lightgrey
"let &colorcolumn=join(range(81,999),",")

"Paste multiple times: paste, select originally selected text and yank again.
xnoremap p pgvy

"Line highlighter - draws a line across screen where present cursor is
nmap <silent> <F3> :set invcursorline<cr>
