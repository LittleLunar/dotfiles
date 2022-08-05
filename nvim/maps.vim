" Remapping

" telescope remapping
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" ESC mapping
inoremap <C-s> <Esc><cmd>w<cr>
nnoremap <C-s> <cmd>w<cr>
nnoremap <C-w> <cmd>wq<cr>
nnoremap <C-q> <cmd>q<cr>

" Toggle the tagbar
nmap <F8> <cmd>TagbarToggle<cr>

" move line or visually selected block - alt+j/k
inoremap <A-j> <Esc><cmd>m .+1<cr>==gi
inoremap <A-k> <Esc><cmd>m .-2<cr>==gi
vnoremap <A-j> <cmd>m '>+1<cr>gv=gv
vnoremap <A-k> <cmd>m '<-2<cr>gv=gv

" move split panes to left/bottom/top/right
nnoremap <A-h> <C-W>H
nnoremap <A-j> <C-W>J
nnoremap <A-k> <C-W>K
nnoremap <A-l> <C-W>L

" move between panes to left/bottom/top/right
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nnoremap <C-f> <cmd>NERDTreeFind<cr>
nnoremap <C-n> <cmd>NERDTree<cr>
nnoremap <C-t> <cmd>NERDTreeToggle<cr>

nnoremap <leader>ced <cmd>colorscheme eldar<cr>
nnoremap <leader>cel <cmd>colorscheme elflord<cr>

" Selected All
nmap <C-a> gg<S-v>G
" Tab controlling
nmap te :tabedit
nmap <S-Tab> :tabprev<Return>
nmap <Tab> :tabnext<Return>
