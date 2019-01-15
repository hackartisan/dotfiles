" Sean says this needs to go at the top.
" https://github.com/junegunn/vim-plug
call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'
Plug 'othree/yajs.vim', { 'for': 'javascript' }
Plug 'janko-m/vim-test'

call plug#end()

" associate *.es6 with javascript filetype
au BufRead,BufNewFile *.es6 setfiletype javascript

set nocompatible      " We're running Vim, not Vi!

" os x backspace fix
set backspace=indent,eol,start
fixdel
set modelines=0   " dont need modelines and the potential security hazard
"set t_kb

" Setup term color support
if $TERM == "xterm-256color" || $TERM == "screen-256color" || $COLORTERM == "gnome-terminal"
  set t_Co=256
endif

"" show trailing whitespace chars
"set list
"set listchars=tab:>-,trail:.,extends:#,nbsp:.

set history=100
" Default history is only 20
set undolevels=100  " Use more levels of undo

" tab -> spaces
set expandtab
set tabstop=2 " a tab is 2 spaces
set softtabstop=2   " tab size when insterting/pasting
set shiftwidth=2    " number of spaces to use for autoindenting
set shiftround " use multiple of shiftwidth when indenting with '<' and '>'
set smarttab " insert tabs on the start of a line according to shiftwidth, not tabstop

set autoindent
 " always set autoindenting on
set copyindent
 " copy the previous indentation on autoindenting

syntax on " Enable syntax highlighting
filetype on " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins

"" Uncomment the following to have Vim jump to the last position when
"" reopening a file
"if has("autocmd")
"  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"endif
"
"" default indent / tab stuff
"set expandtab "converts tabs to spaces
"set autoindent " turn it on
""set shiftwidth=4
""set tabstop=4
""set softtabstop=4
"
"" Uncomment the following to have Vim load indentation rules and plugins
"" according to the detected filetype.
"if has("autocmd")
"  filetype plugin indent on
"endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
set showcmd     " Show (partial) command in status line.
set showmatch      " Show matching brackets.
"set autowrite      " Automatically save before commands like :next and :make
set hidden             " Hide buffers when they are abandoned
"set mouse=a        " Enable mouse usage (all modes)

" Search Settings
set incsearch   " show search matches as you type
set ignorecase  " case insensitive search
set smartcase   " If a capital letter is included in search, make it case-sensitive
set hlsearch  " highlight search results

""" Change indenting for css, html
""autocmd FileType css,html,htmldjango,phtml
""  \ setlocal shiftwidth=2 |
""  \ setlocal tabstop=2
"
"let loaded_matchparen = 1  " Don't highlight brackets

set ruler " ruler on
set nu " Line numbers on
set noerrorbells  " don't beep
set vb t_vb= " stops the beeping

"status line
set laststatus=2

"map ctrl-space to no-op b/c i use it with screen
imap <Nul> <Nop>
map  <Nul> <Nop>
vmap <Nul> <Nop>
cmap <Nul> <Nop>
nmap <Nul> <Nop>

" Mappings to access buffers (don't use "\p" because a
" delay before pressing "p" would accidentally paste).
" \l       : list buffers
" \b \f \g : go back/forward/last-used
" \1 \2 \3 : go to buffer 1/2/3 etc
nnoremap <Leader>l :ls<CR>
nnoremap <Leader>b :bp<CR>
nnoremap <Leader>f :bn<CR>
nnoremap <Leader>g :e#<CR>
nnoremap <Leader>1 :1b<CR>
nnoremap <Leader>2 :2b<CR>
nnoremap <Leader>3 :3b<CR>
nnoremap <Leader>4 :4b<CR>
nnoremap <Leader>5 :5b<CR>
nnoremap <Leader>6 :6b<CR>
nnoremap <Leader>7 :7b<CR>
nnoremap <Leader>8 :8b<CR>
nnoremap <Leader>9 :9b<CR>
nnoremap <Leader>0 :10b<CR>
" It's useful to show the buffer number in the status line.
set laststatus=2 statusline=%02n:%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P

" tab completion for filenames
set wildmode=longest,list,full
set wildmenu

"" java syntax highlighting for beanshell scripts
"au BufWinEnter,BufRead,BufNewFile *.bsh set filetype=java
"
"" automatically fold based on syntax files
"let php_folding = 1
"set foldmethod=syntax
"set foldcolumn=2
"set foldclose=all

" window splitting and switching
" save a keystroke; instead of ctrl-w then j, it's just ctrl-j
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Open new split panes to right and bottom; feels more natural than Vim's default
set splitbelow
set splitright

" fix illegibility problem in vimdiff
set background=dark

" local leader - for use in filetype specific things
let maplocalleader=" "

" mappings for vim-test
" normal mode noremap (as opposed to insert mode noremap)
nnoremap <localleader>tf :TestFile<CR>
nnoremap <localleader>tn :TestNearest<CR>

" mapping for fuzzy file search
nnoremap <localleader>f :Files<CR>
