" TODO:
"git branch in statusline
"tmux.conf support 256 color, remap prefix ctrl+a

" Scrolling:
set ttyfast                     " smoother redraw when scrolling

" Bindings:
" move vertically without skipping wrapped lines
nmap j gj
nmap k gk

" Apperance:
colorscheme industry            " industry, slate, torte
set background=dark             " brighter syntax highlight

" Behavior:
set nocompatible                " disable vi-compatibility
set backspace=indent,eol,start  " backspace over everything in insert mode
set ffs=dos,unix                " match file format and buffer to line endings
syntax enable                   " syntax highlighting
filetype plugin on              " filetype detection (netrw)
filetype indent on              " indentation support
set number                      " line numbers
set visualbell                  " no audio
"set mouse=a                     " mouse support

" Statusline:
set laststatus=2                " status line always visible
set ruler                       " display row, column, and relative screen position
set showmode                    " display mode
set showcmd                     " show partial commands at the bottom

" Indentation:
set autoindent                  " match indents on new lines
set smartindent                 " match code intelligently
set shiftwidth=2                " number spaces for (auto)indent 
set softtabstop=2               " single press to delete tabstop
set tabstop=2                   " tab size 2
set expandtab                   " replace tabs with spaces

" Searching:
set path+=**                    " drill into subfolders
set wildmenu                    " :find file, ^n and ^p to scroll through matches
set incsearch                   " search as you type
set ignorecase                  " case insensitive search..
set smartcase                   " ..unless a capital is specified
" consider :ls to see open files
" :b autocomplete open buffers

" Tag Jumping:                  ^] cursor, g^] ambiguous, ^t previous, ^p/^n back and forth
" create `tags` file
command! MakeTags !ctags -R .

" File Browsing:                :edit ., <CR> h, v, t tab split, :help netrw-browse-maps
let g:netrw_banner=0            " remove banner
let g:netrw_browse_split=4      " open in prior window
let g:netrw_altv=1              " open splits to the right
let g:netrw_liststyle=3         " tree view

" Security:
set modelines=0                 " don't parse modelines even if supported
set nomodeline                  " turn off modeline parsing
