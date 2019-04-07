" Ref: https://dougblack.io/words/a-good-vimrc.html
" Ref: https://github.com/amix/vimrc/blob/master/vimrcs/basic.vim

let mapleader=","       " leader is comma instead of \

syntax enable                     " enable syntax processing
set tabstop=4                     " Indent using four spaces
set softtabstop=4                 " number of spaces in tab when editing
set expandtab                     " tabs are spaces
set number                        " show line numbers
set showcmd                       " show command in bottom bar
set cursorline                    " highlight current line
set wildmenu                      " visual autocomplete for command menu
set lazyredraw                    " redraw only when we need to.
set showmatch                     " highlight matching [{()}]
set incsearch                     " search as characters are entered
set hlsearch                      " highlight matches
set smartcase                     " When searching try to be smart about cases
set backspace=indent,eol,start    " Allow backspacing over indention, line breaks and insertion start
set ruler                         " Always show current position
set foldcolumn=1                  " Add a bit extra margin to the left
set smarttab                      " Insert “tabstop” number of spaces when the “tab” key is pressed
set spell                         " Enable spellchecking
set autoread                      " Automatically re-read files if unmodified inside Vim
set confirm                       " Display a confirmation dialog when closing an unsaved file
set history=1000                  " Increase the undo limit
set foldmethod=indent             " Fold based on indention levels
set foldnestmax=3                 " Only fold up to three nested levels
set nofoldenable                  " Disable folding by default
set mouse=a                       " Enable mouse for scrolling and resizing.
set laststatus=2                  " Always display the status bar
" set relativenumber                " Show line number on the current line and relative numbers on all other lines
set scrolloff=1                   " The number of screen lines to keep above and below the cursor
set display+=lastline             " Always try to show a paragraph’s last line
set linebreak                     " Avoid wrapping a line in the middle of a word
set sidescrolloff=5               " The number of screen columns to keep to the left and right of the cursor
set shiftwidth=4                  " When shifting, indent using four spaces
set shiftround                    " When shifting lines, round the indentation to the nearest multiple of “shiftwidth.”
" set autoindent                    " New lines inherit the indentation of previous lines.


" Enable filetype plugins
filetype plugin on
filetype indent on

" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>

" Ability to cancel a search with Escape:
" nnoremap <silent> <Esc> :nohlsearch<Bar>:echo<CR>

nnoremap <C-l> :nohl<CR><C-l>:echo "Search Cleared"<CR>
nnoremap <C-c> :set norelativenumber<CR>:set nonumber<CR>:echo "Line numbers turned off."<CR>
nnoremap <C-n> :set relativenumber<CR>:set number<CR>:echo "Line numbers turned on."<CR>

" move vertically by visual line
nnoremap j gj
nnoremap k gk

" Make : commands easier
nnoremap ; :

" Extreme h-j-k-l
nnoremap H 0
nnoremap L $
nnoremap J G
nnoremap K gg

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" For regular expressions turn magic on
set magic

" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile

" General Vim settings
"	set autoindent
"	set shiftwidth=4
"	set dir=/tmp/
"	set relativenumber 
"
"	autocmd Filetype html setlocal sw=2 expandtab
"	autocmd Filetype javascript setlocal sw=4 expandtab
"
"	nnoremap n nzzzv
"	nnoremap N Nzzzv
"
"	map <tab> %
"
"	nnoremap <Space> za
"	nnoremap <leader>z zMzvzz
"
"	nnoremap vv 0v$
"
"	set listchars=tab:\|\ 
"	nnoremap <leader><tab> :set list!<cr>
"	set pastetoggle=<F2>
"	set mouse=a
"	set incsearch

" Language Specific
"	" Tabs
"		so ~/dotfiles/vim/tabs.vim
"
"	" General
"		inoremap <leader>for <esc>Ifor (int i = 0; i < <esc>A; i++) {<enter>}<esc>O<tab>
"		inoremap <leader>if <esc>Iif (<esc>A) {<enter>}<esc>O<tab>
"		
"
"	" Java
"		inoremap <leader>sys <esc>ISystem.out.println(<esc>A);
"		vnoremap <leader>sys yOSystem.out.println(<esc>pA);
"
"	" Java
"		inoremap <leader>con <esc>Iconsole.log(<esc>A);
"		vnoremap <leader>con yOconsole.log(<esc>pA);
"
"	" C++
"		inoremap <leader>cout <esc>Istd::cout << <esc>A << std::endl;
"		vnoremap <leader>cout yOstd::cout << <esc>pA << std:endl;
"
"	" C
"		inoremap <leader>out <esc>Iprintf(<esc>A);<esc>2hi
"		vnoremap <leader>out yOprintf(, <esc>pA);<esc>h%a
"
"	" Typescript
"		autocmd BufNewFile,BufRead *.ts set syntax=javascript
"		autocmd BufNewFile,BufRead *.tsx set syntax=javascript
"
"	" Markup
"		inoremap <leader>< <esc>I<<esc>A><esc>yypa/<esc>O<tab>


" File and Window Management 
"	inoremap <leader>w <Esc>:w<CR>
"	nnoremap <leader>w :w<CR>
"
"	inoremap <leader>q <ESC>:q<CR>
"	nnoremap <leader>q :q<CR>
"
"	inoremap <leader>x <ESC>:x<CR>
"	nnoremap <leader>x :x<CR>
"
"	nnoremap <leader>e :Ex<CR>
"	nnoremap <leader>t :tabnew<CR>:Ex<CR>
"	nnoremap <leader>v :vsplit<CR>:w<CR>:Ex<CR>
"	nnoremap <leader>s :split<CR>:w<CR>:Ex<CR>

" Return to the same line you left off at
"	augroup line_return
"		au!
"		au BufReadPost *
"			\ if line("'\"") > 0 && line("'\"") <= line("$") |
"			\	execute 'normal! g`"zvzz' |
"			\ endif
"	augroup END

" Auto load
"	" Triger `autoread` when files changes on disk
"	" https://unix.stackexchange.com/questions/149209/refresh-changed-content-of-file-opened-in-vim/383044#383044
"	" https://vi.stackexchange.com/questions/13692/prevent-focusgained-autocmd-running-in-command-line-editing-mode
"	autocmd FocusGained,BufEnter,CursorHold,CursorHoldI * if mode() != 'c' | checktime | endif
"	set autoread 
"	" Notification after file change
"	" https://vi.stackexchange.com/questions/13091/autocmd-event-for-autoread
"	autocmd FileChangedShellPost *
"	  \ echohl WarningMsg | echo "File changed on disk. Buffer reloaded." | echohl None

" Future stuff
	"Swap line
	"Insert blank below and above

" Fix for: https://github.com/fatih/vim-go/issues/1509
