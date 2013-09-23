""""""""""""""""""
" Paul's .vimrc
""""""""""""""""""
" Installed pathogen bundles - git@github.com:tpope/vim-pathogen.git
"  - NERDTree - git@github.com:scrooloose/nerdtree.git
"  - Molokai color scheme - git@github.com:tomasr/molokai.git
"
" CONTENTS
" 1. Plugin and Basic Setup
" 2. Vim UI
" 3. Colors and Fonts
" 4. Text, Tabs, Indents
" 5. Navigation and Keymapping
" 6. Status Bar
" 7. Spell Checking
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

" turns line numbers on
set number

""""""""""""""""""
" 3. Colors and Fonts
""""""""""""""""""

" syntax highlighting on
syntax on
colorscheme molokai

" set extra options for GUI
if has("gui_running")
	set guioptions-=T
	set guioptions+=e
	set t_Co=256
	set guitablabel=%M\ %t
endif

""""""""""""""""""
" 4. Text, Tabs, Indents
""""""""""""""""""
" modernize tab behavior
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" smarter indents
set ai
set si
set wrap

" show hidden characters in Vim
set list

" settings for hidden chars
" what particular chars they are displayed with
set lcs=tab:▒░,trail:▓
" or
set listchars=tab:▒░,trail:▓

" stomp whitespace function
function! <SID>StripTrailingWhitespace()
	" save last search and cursor position
	let _s=@/
	let l=line(".")
	let c=col(".")
	" do it
	%s/\s\+$//e
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

