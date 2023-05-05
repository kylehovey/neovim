" =============== EDITOR MACROS ===============
" SPACE LEADER
let mapleader="\<Space>"
" Navigate up and down through wrapped lines naturally
nnoremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
nnoremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')

" Timeout for key codes

" FILE I/O
" Save
nnoremap ; :w<CR>
" Save As
map <Leader>W :w<Space>
" Quit Vim
map <Leader>q :q<CR>
map <Leader>Q :q!<CR>

" SPELL CHECKING
map <Leader>w z=1<CR>

" SESSIONS
" Create new session
map <Leader>sc :mks ~/.vim/sessions/.vim<Left><Left><Left><Left>
" Save session
map <Leader>ss :mks!<CR>
" Load session
map <Leader>sl :source ~/.vim/sessions/

" FILE SHORTCUTS
" Edit .vimrc
map <Leader>ev :e ~/.vimrc<CR>

" TAB MANAGEMENT
" Open a New Tab
map <Leader>t :tabe<CR>

" SPLIT CREATION
" Enable splitting in each direction
nnoremap <Leader>sh :sp<CR>
nnoremap <Leader>sv :vsp<CR>

" SPLIT MANAGEMENT
" Zoom / Restore window.
" https://stackoverflow.com/a/26551079/9843390
function! s:ZoomToggle() abort
    if exists('t:zoomed') && t:zoomed
        execute t:zoom_winrestcmd
        let t:zoomed = 0
    else
        let t:zoom_winrestcmd = winrestcmd()
        resize
        vertical resize
        let t:zoomed = 1
    endif
endfunction
command! ZoomToggle call s:ZoomToggle()

" Navigate Up
nnoremap <Leader>k <C-w>k
" Navigate Down
nnoremap <Leader>j <C-w>j
" Navigate Left
nnoremap <Leader>h <C-w>h
" Navigate Right
nnoremap <Leader>l <C-w>l
" Zoom/Unzoom Split
nnoremap <Leader><CR> :ZoomToggle<CR>
" Equalize Splits
nnoremap <Leader>= <C-w>=
" Minimize Split
nnoremap <Leader>- :vertical resize 0<CR>

" BUFFER MANAGEMENT
" Navigate to Next Buffer
nnoremap <Leader>H :bprev<CR>
" Navigate to Previous Buffer
nnoremap <Leader>L :bnext<CR>
" Reload Buffer
map <Leader>e :edit<CR>

" NERD TREE
" Go to NERD Tree
map <Leader>f :NERDTreeToggle<CR><C-l>
" Open current file in NerdTree
map <Leader>n :NERDTreeFind <CR>

" TELESCOPE
" File Browser
" map <Leader>f <cmd>Telescope file_browser<cr>
" Fuzzy-Find Files
map <Leader>F <cmd>Telescope find_files<cr>
" Search Staged Files
map <Leader>G <cmd>Telescope git_status<cr>
" Grep
map <Leader>a <cmd>Telescope live_grep<cr>
" Treesitter
map <Leader>T <cmd>Telescope treesitter<cr>

" GIT
" Show/Hide GitGutter
map <Leader>gg :GitGutterToggle<CR>
" Show Hunk Changes
map <Leader>gs <Plug>(GitGutterPreviewHunk)
" Open Lazygit
map <Leader>gl :LazyGit<CR>

" COMPILING/RUNNING
" Compile Pandoc
map <Leader>P :!pandoc --from markdown+fancy_lists *.md --variable urlcolor=cyan -o out.pdf<CR>
" Run In Python 3
map <Leader>p :w !python3<CR>
" Run In Node
map <Leader>N :w !node<CR>
" Run In Ruby
map <Leader>bb :w !ruby<CR>
" Compile C++
map <Leader>c :make<CR>
" Compile Rust
map <Leader>ru :!rustc ./*.rs -o run<CR>
" Run Rust
map <Leader>rr :!./run<CR>
" Run Compiled C++
map <Leader>R :!./run<CR>
" Generate cout from comment
map <Leader>o 0/\/<CR>velcstd::cout << "<esc>$a\n";<esc>:nohl<CR><C-l>
" Turn cout into comment
map <Leader>O 0/std<CR>v5ec// <esc>$v3hx:nohl<CR><C-l>
" Open in GLSL Viewer
map <Leader>s :GlslView<CR>
" Send File to Julia REPL
map <Leader>jR :JuliaCellRun<CR>
" Send Cell to Julia REPL
map <Leader>jr :JuliaCellExecuteCell<CR>

" SEARCHING/HIGHLIGHTING
" Clear Highlights and Redraw
map <Leader>d :nohl<CR><C-l>

" CALCULATION
" Replace visual selection with result of calculation
vmap <Leader>c :!bc<CR>

" VIEW CHANGING
" Toggle indent lines
map <Leader>i :IndentLinesToggle<CR>

" Config
map <Leader>r :so ~/.vimrc<CR>
