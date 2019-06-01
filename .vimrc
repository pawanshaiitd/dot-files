" BASIC CONFIGURATION

if &compatible " only if not set before
  set nocompatible " vim, not vi
endif

set autoread " auto read current unmodified file on modification elsewhere
set noautowrite " don't automagically write on :next




" VIM PLUGIN CONFIG

"execute pathogen#infect()
""call pathogen#runtime_append_all_bundles()
""call pathogen#helptags()


""""" scrooloose syntastic plugin settings
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 1
""let g:syntastic_warning_symbol = "!"


""""" supertab plugin settings
"let g:SuperTabDefaultCompletionType = "context"


""""" solarize plugin settings
"set t_Co=256
"
"set background=dark
"let g:solarized_termtrans=1
"let g:solarized_termcolors=256
""let g:solarized_contrast="high"
""let g:solarized_visibility="high"
"colorscheme solarized




" PERSONAL PREFERENCE

"""" display settings
set background=dark
highlight Normal ctermfg=Grey ctermbg=Black
set nowrap " dont wrap lines
set scrolloff=2 " keep at least 2 lines above/below
set sidescrolloff=5 " keep at least 5 lines left/right
set number " line numbers needed
set showmatch  " show matching bracket
set matchtime=2 " show matching bracket for 0.2 seconds
set showmode " show current mode
set showcmd " visible control commands
set ruler " show the line number on the bar
set title " show file in titlebar
set wildmenu " completion with menu
set wildignore=*.o,*.obj,*.bak,*.exe,*.py[co],*.swp,*~,*.pyc,.svn
set laststatus=2 " always have status line for multiple windows
set statusline=%F%m%r%h%w\ (%{&ff}){%Y}\ [%l,%v][%p%%]
set ttyfast " we have a fast terminal

"""" editor settings
set esckeys " map missed escape sequences (enables keypad keys)
set autoindent " automatically copy current line indent
"set smartindent " smart indent for C programs; better use 'cindent'
                 " remember :set paste and :set nopaste
set smarttab " TAB and BS are smart
set backspace=indent,eol,start " boundaries allowed for BS to cross
set fileformats=unix " choose <EOL> as in UNIX
set cmdheight=1 " command line two lines high
set undolevels=1000 " 1000 undos
set shell=bash " shell for ! commands
set cursorline " show cursor line

"""" search settings
syntax on " enable syntax highlighting
set incsearch  " search as you type
set hlsearch   " highlight search pattern
set ignorecase " case insensitive searching
set magic " change the way backslashes are used in search patterns
set smartcase " but become case sensitive if you type uppercase characters
" this unsets the 'last search pattern' register by hitting return
nnoremap <C-L> :nohlsearch<CR><C-L>

"""" system settings
set lazyredraw " no redraws in macros
"set confirm " get a dialog when :q, :w, or :wq fails
set nobackup " no backup files
set viminfo='20,\"5000 " remember copy registers after quitting in thei
                      " .viminfo file: 20 jump links, regs up to 500 lines
"set hidden " remember undo after quitting
set history=100 " history of : commands
"set mouse=a " enable mouse usage
"set mousemodel=popup_setpos " right-click is pop-up menu; SHIFT-LEFT is drag
set noerrorbells " no error bells
filetype on        " enable filetype detection
filetype indent on " enable filetype-specific indenting
filetype plugin on " enable filetype-specific plugins

"""" vimdiff settings
set diffopt=filler,vertical " display everything
" space will toggle folds!
nnoremap <space> za
" Convenient command to see the difference between the current buffer and the
" file it was loaded from, thus the changes you made.
" Only define it when not defined already.
if !exists(":DiffOrig")
    command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis
                \ | wincmd p | diffthis
endif

"""" clipboard settings
"clipboard=autoselect,exclude:cons\|linux " my original settings
set clipboard=autoselect " VIM owns the global clipboard
" other options: unnamed,unnamedplus




" CISCO CODING GUIDELINES

set colorcolumn=80 " 80 column rule; dont cross the red line

set tabstop=4 " expand existing TAB to these many SPACE characters
set softtabstop=4 " on TAB key insert these many SPACE characters
set shiftwidth=4 " autoindent SPACE insertions

set expandtab " new TAB replased by SPACE

set cindent " indent style for C programs; customizable
"set equalprg=cindent " use '=' key for triggering cindent
" ref: http://vimdoc.sourceforge.net/htmldoc/indent.html#cinoptions-values

"" highlight groups
"highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
"highlight ExtraWhitespace ctermbg=grey guibg=grey
"" match groups
"match ExtraWhitespace /\t\|\s\+$/
" to trim trailing SPACEs
":%s/\s\+$//gc
" to replace TAB with SPACE
":retab 4
" OR for confirm and replace version of ':retab'
":%s/\t/    /gc

" ref: http://stackoverflow.com/questions/563616/vim-and-ctags-tips-and-tricks
" To use cscope along with ctags; cscope file should be in your current source
" tree root where your ctags file should also be present
if has("cscope")
    "set csprg=/auto/andatcd/cscope/15.5/bin/cscope " #$ which cscope
    " set csto=0 " search cscope first, then ctags
    set csto=1 " search ctags first, then cscope
    set cst " always use :cstag instead of the default :tag behavior
    set nocsverb " non-verbose on :cs command results here on
    " add any database in current directory
    if filereadable("cscope.out")
        cs add cscope.out
        " else add database pointed to by environment
    elseif $CSCOPE_DB != ""
        cs add $CSCOPE_DB
    endif
    set csverb " verbose on :cs command results here on
endif




" ////////////////////////////////// REVIEWED TILL HERE

