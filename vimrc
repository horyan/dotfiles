" All system-wide defaults are set in $VIMRUNTIME/debian.vim and sourced by
" the call to :runtime you can find below.  If you wish to change any of those
" settings, you should do it in this file (/etc/vim/vimrc), since debian.vim
" will be overwritten everytime an upgrade of the vim packages is performed.
" It is recommended to make changes after sourcing debian.vim since it alters
" the value of the 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim             " set nocompatible, among other things

"""" Apperance:
set background=dark             " apply colorscheme for dark background
colorscheme industry	          " set colorscheme
set title                       " display file path in the Title bar

"""" Behavior:
syntax enable			              " syntax highlighting
filetype plugin on		          " filetype detection (netrw, indent)
set number			                " line numbers
set mouse=a			                " mouse support
set visualbell                  " replace audio alert with cursor blink

"""" Tab Settings:
set expandtab		        	      " replace tabs with white spaces
set tabstop=2		        	      " tab size 2
set softtabstop=2	      	      " single press to delete tabstop
set shiftwidth=2                " number spaces for (auto)indent 
set autoindent			            " apply current indent to next line
set smartindent			            " match code

"""" Key Bindings:
" don't skip wrapped lines when moving vertically by visual line
nmap j gj
nmap k gk

"""" Finding Files:
set path+=**                    " drill into subfolders
set wildmenu                    " :find all matching files
" consider :ls to see open files
" :b autocomplete open buffers

"""" Tag Jumping: ^] cursor, g^] ambiguous, ^t previous, ^p/^n back and forth
" create `tags` file
command! MakeTags !ctags -R .

" File Browser Settings:        :edit ., <CR> h, v, t tab split, :help
" netrw-browse-maps
let g:netrw_banner=0            " remove banner
let g:netrw_browse_split=4      " open in prior window
let g:netrw_altv=1	          	" open splits to the right
let g:netrw_liststyle=3		      " tree view

" Uncomment the following to have Vim jump to the last position when
" reopening a file
"if has("autocmd")
"  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
"if has("autocmd")
"  filetype plugin indent on
"endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
"set showcmd		" Show (partial) command in status line.
"set showmatch		" Show matching brackets.
"set ignorecase		" Do case insensitive matching
"set smartcase		" Do smart case matching
"set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make
"set hidden		" Hide buffers when they are abandoned
"set mouse=a		" Enable mouse usage (all modes)

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

