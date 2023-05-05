" ================ SYSTEM ================
" THE BASICS
set t_Co=256               " Make sure terminal is 256 colors
set clipboard+=unnamedplus " Set the system clipboard
set mouse=a                " Enable Mouse Support
set belloff=all            " Disable bell
set shell=zsh              " Shell is ZSH

" =========== SYNTAX HIGHLIGHTING =============
" THE BASICS
" Enable It
syntax on

" COLOR SCHEME
colorscheme gruvbox
" Dark Background
set background=dark

" =============== VIEW SETTINGS ===============
" THE BASICS
" Enable Line Numbering
set nu
" Wrap text
set lbr
" Use a Visual Bell
set visualbell

" FOOTER AREA
" Minimize Command Window Height
set cmdheight=1
" Display Cursor Position
set ruler

" =============== EDITOR OPTIONS ===============
" FOLDING
" Fold Based Upon Indent
set foldmethod=indent
" Deepest Fold Allowed Is 10 Levels
set foldnestmax=10
" Don't Fold by Default
set nofoldenable
" Allow Folding At One Line
set foldlevel=1

" Indentation
" Enable indenting and filetype detection
filetype plugin indent on
set autoindent
" Sane tabstop
set tabstop=2
set shiftwidth=2
" Use spaces instead of tabs
set expandtab

" DELETING
" Make Backspace Act Normal
set backspace=2

" SPLITTING
" Open splits intuitively
set splitbelow
set splitright

" HIGHLIGHTING
" Transparent background
hi Normal guibg=NONE ctermbg=NONE

" UPDATES
" Set update time to 250ms
set updatetime=250
