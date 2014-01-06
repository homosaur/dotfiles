""""""""""""""""""
" Paul's .vimrc
""""""""""""""""""
" CONTENTS
" 1. Plugin and Basic Setup
" 2. Vim UI
" 3. Colors and Fonts
" 4. Text, Tabs, Indents
" 5. Navigation and Keymapping
" 6. Status Bar
" 7. Spell Checking
" 8. Plugin Options
""""""""""""""""""

""""""""""""""""""
" 1. Plugin and Basic Setup
""""""""""""""""""
" pathogen runs all my plugins
execute pathogen#infect()

" UTFin
set encoding=utf8

" filetype default
set ffs=unix,dos,mac

" enable filetype plugins
filetype plugin on
filetype indent on

" map leader set to comma
let mapleader   = ","
let g:mapleader = ","

" quicksave
nmap <leader>w :w!<cr>

""""""""""""""""""
" 2. Vim UI
""""""""""""""""""
" turns on the wildmenu which enhances tab completion
set wildmenu

" set height of command bar
set cmdheight=2

" show current line and column in command bar
set ruler

" fixes backspace in most cases
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" smarter search options
set ignorecase
set smartcase
set hlsearch
set incsearch

" keep Vim from shitting pants in macros
set lazyredraw

" I'm sure you'll use a regexp someday, right?
set magic

" match up the brackets
set showmatch
set mat=2

" cleanup
	let @/=_s
	call cursor(l, c)
endfunction

nmap <Leader>w :call <SID>StripTrailingWhitespace()<cr>

""""""""""""""""""
" 5. Navigation and Keymapping
""""""""""""""""""
" faster escape from modes
imap jj <Esc>

""""""""""""""""""
" 6. Status Bar
""""""""""""""""""
" Always show status
set laststatus=2

" should configure this later

""""""""""""""""""
" 7. Spell Checking
""""""""""""""""""
" set ,ss to spell check
map <leader>ss :setlocal spell!<cr>

""""""""""""""""""
" 8. Plugin Options
""""""""""""""""""
" hide dotfiles in NERDTree by default
let NERDTreeShowHidden=0
