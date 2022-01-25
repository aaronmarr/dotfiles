" Plugins
call plug#begin('~/.vim/plugged')

Plug 'logico/typewriter-vim'
Plug 'scrooloose/nerdtree'
Plug 'sonph/onehalf', {'rtp': 'vim/'}
Plug 'airblade/vim-gitgutter'
Plug 'editorconfig/editorconfig-vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdcommenter'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

syntax on
set t_Co=256

" Config
set number
set mouse=a
filetype plugin on

" Color scheme
colorscheme typewriter-night
" colorscheme typewriter

let g:airline#extensions#tabline#show_buffers = 0
let g:airline_theme='typewriter'

" Nerdtree
nnoremap <silent> <C-k><C-B> :NERDTreeToggle<CR>

" Nerdcommenter
let g:NERDSpaceDelims = 1
let g:NERDDefaultAlign = 'left'
let g:NERDAltDelims_javascript = 1
let g:NERDCustomDelimiters = { 'javascript': { 'left': '//' } }

" Coc
source $HOME/.config/nvim/plug-config/coc.vim
