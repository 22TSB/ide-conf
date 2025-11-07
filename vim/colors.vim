set termguicolors

set laststatus=2
let g:lightline = {'colorscheme' : 'tokyonight'}

colorscheme sorbet 

" Transparent background
hi Normal guibg=NONE ctermbg=NONE
hi NormalNC guibg=NONE ctermbg=NONE
hi VertSplit guibg=NONE
hi StatusLine guibg=NONE
hi LineNr guibg=NONE

" Floating windows (Telescope, LSP)
hi NormalFloat guibg=NONE
hi FloatBorder guibg=NONE
