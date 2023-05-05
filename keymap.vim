" SPACE LEADER
let mapleader="\<Space>"
" Navigate up and down through wrapped lines naturally
nnoremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
nnoremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')

" File Operations
nnoremap ; :w<CR>
map <Leader>q :q<CR>
map <Leader>Q :q!<CR>
" Edit init.lua
map <Leader>ev :e ~/.config/nvim/init.lua<CR>
" Go to NERD Tree
map <Leader>f :NERDTreeToggle<CR><C-l>
" Open current file in NerdTree
map <Leader>n :NERDTreeFind <CR>
" Fuzzy-Find Files
map <Leader>F <cmd>Telescope find_files<cr>
" Search Staged Files
map <Leader>G <cmd>Telescope git_status<cr>
" Grep
map <Leader>a <cmd>Telescope live_grep<cr>
" Treesitter
map <Leader>T <cmd>Telescope treesitter<cr>

" Spell Checking
map <Leader>w z=1<CR>

" Tabs, Splits, and Buffers
" Open a New Tab
map <Leader>t :tabe<CR>
" Enable splitting in each direction
nnoremap <Leader>sh :sp<CR>
nnoremap <Leader>sv :vsp<CR>

" Zoom / Restore window: https://stackoverflow.com/a/26551079/9843390
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

" Navigate up, down, left, and right
nnoremap <Leader>k <C-w>k
nnoremap <Leader>j <C-w>j
nnoremap <Leader>h <C-w>h
nnoremap <Leader>l <C-w>l
" Zoom/Unzoom Split
nnoremap <Leader><CR> :ZoomToggle<CR>
" Equalize Splits
nnoremap <Leader>= <C-w>=
" Minimize Split
nnoremap <Leader>- :vertical resize 0<CR>

" Navigate to Next Buffer
nnoremap <Leader>H :bprev<CR>
" Navigate to Previous Buffer
nnoremap <Leader>L :bnext<CR>
" Reload Buffer
map <Leader>e :edit<CR>

" Git
" Show/Hide GitGutter
map <Leader>gg :GitGutterToggle<CR>
" Show Hunk Changes
map <Leader>gs <Plug>(GitGutterPreviewHunk)
" Open Lazygit
map <Leader>gl :LazyGit<CR>

" Language Macros
" Run In Python 3
map <Leader>p :w !python3<CR>
" Run In Node
map <Leader>N :w !node<CR>
" Open in GLSL Viewer
map <Leader>s :GlslView<CR>
" Send File to Julia REPL
map <Leader>jR :JuliaCellRun<CR>
" Send Cell to Julia REPL
map <Leader>jr :JuliaCellExecuteCell<CR>

" Searching
" Clear Highlights and Redraw
map <Leader>d :nohl<CR><C-l>

" View Changing
" Toggle indent lines
map <Leader>i :IndentLinesToggle<CR>

" Config
map <Leader>r :so ~/.vimrc<CR>
