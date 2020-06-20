call plug#begin('~/.local/share/nvim/plugged')

" color scheme
Plug 'lifepillar/vim-gruvbox8', { 'as': 'gruvbox8' }
Plug 'drewtempelmeyer/palenight.vim'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

" highlight yank area
Plug 'machakann/vim-highlightedyank'

" fzf
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" ALE linting
Plug 'dense-analysis/ale'

" commenting
Plug 'tpope/vim-commentary'

" surround
Plug 'tpope/vim-surround'

" status line
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

color palenight

