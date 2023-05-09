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
" map <Leader>f :NERDTreeToggle<CR><C-l>
map <Leader>f :NvimTreeToggle<CR><C-l>
" Open current file in NerdTree
" map <Leader>n :NERDTreeFind <CR>

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

" Language Server Config
inoremap <silent><expr> <cr> coc#pum#visible() ? coc#_select_confirm() : "\<C-g>u\<CR>"

" use <tab> to trigger completion and navigate to the next complete item
function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()

inoremap <expr> <Tab> coc#pum#visible() ? coc#pum#next(1) : "\<Tab>"
inoremap <expr> <S-Tab> coc#pum#visible() ? coc#pum#prev(1) : "\<S-Tab>"

" File auto-format on save
autocmd FileType haskell autocmd call CocAction('format')
let g:haskell_indent_disable=1

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Don't open scratch buffers for hints
set completeopt-=preview
" GoTo code navigation
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction
