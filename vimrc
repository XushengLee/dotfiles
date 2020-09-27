" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" comment functionality
" usage: gc+motion (gcap to commend a para), or gc in visual mode 
Plug 'tpope/vim-commentary'

" replace the surrounding pair of symbols
" cs'( to make 'xyz' => (xyz)  
" for more usages, visit https://github.com/tpope/vim-surround
Plug 'tpope/vim-surround'

" ----------- Status bar ------------------
Plug 'itchyny/lightline.vim'          " Better Status Bar
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
" ----------- Colorschemes ----------------
Plug 'morhetz/gruvbox'
Plug 'chriskempson/base16-vim'         " Base16 themes
" Plug 'gerw/vim-hilinktrace'            " Syntax Highlighting Tracer
Plug 'tomasr/molokai'                  " Monokai and friends
" Plug 'crusoexia/vim-monokai'
" Plug 'phanviet/vim-monokai-pro'
Plug 'patstockwell/vim-monokai-tasty'
" Plug 'erichdongubler/vim-sublime-monokai'
" Plug 'flazz/vim-colorschemes'          " Bunch of color schemes
Plug 'sainnhe/sonokai'                 " Monokai Pro-like scheme

" Initialize plugin system
call plug#end()

set rnu
set nu
syntax on



" Colorscheme
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

colorscheme gruvbox





