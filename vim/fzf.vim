" Search a file
nnoremap <leader>ff :Files<CR>
nnoremap <leader>pf :Files<CR>

nnoremap <leader>fo :History<CR>
nnoremap <leader>fb :Buffers<CR>

" Search a git file
nnoremap <C-p> :GFiles<CR>

" Navigate through the telescope with j and k instead of ctrl p and ctrl n
nnoremap <C-j> :cnext<CR>
nnoremap <C-k> :cprev<CR>

" Search for a specific text
nnoremap <leader>fg :Rg<Space>
