" Switch to whatever colorscheme you like
colorscheme gruvbox

" gray comments
hi Comment guifg=#5C6370 ctermfg=59
" this will show italics if your terminal supports that
hi Comment cterm=italic

" checks if your terminal has 24-bit color support
if (has("termguicolors"))
  set termguicolors
  hi LineNr ctermbg=NONE guibg=NONE
endif
