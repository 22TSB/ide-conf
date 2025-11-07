let mapleader = " "

" Use netr file explorer
nnoremap <leader>cd :Ex<CR>
nnoremap <leader>pv :Vex<CR>

" Remove highlight
nnoremap <C-l> :noh<CR><C-l>

" Paste below
" nnoremap <leader>p o<esc>Pk<CR>

" Copy to clipboard (broken)
vnoremap <leader>y "+y

" Move lines of code
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv

" Format code
nnoremap <leader>f :Prettier<CR>
autocmd BufWritePre *.js,*.ts,*.jsx,*.tsx,*.json,*.css,*.md PrettierAsync

" Copy to clipboard
vnoremap Y "+y

" Select all
nnoremap <C-a> ggVG 

" Access terminal
nnoremap <leader>` :<C-u>term<CR>

" Auto closing Bracket
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

" Tab selected context
vnoremap <Tab> >gv
vnoremap <S-Tab> <gv
