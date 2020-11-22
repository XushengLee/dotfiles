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
Plug 'itchyny/lightline.vim'
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

"  
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Initialize plugin system
call plug#end()

" Colorscheme
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
colorscheme gruvbox
set background=dark
" Lightline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" --INSERT-- is unncessary because of lightline
set noshowmode
set laststatus=2  " without this, iterm2 will not display status bar
if isdirectory($HOME . "/.vim/plugged/coc.nvim")
    let g:coc_custom_config = '1'
    " let g:coc_disable_startup_warning = 1
    let g:vista_default_executive = 'coc'
    source ~/.vim/coc.vim
    " Use autocmd to force lightline update.
    autocmd User CocStatusChange,CocDiagnosticChange call lightline#update()
    " Lightline mods for CoC compatibility
    let g:lightline = {
          \ 'active': {
          \   'left': [ [ 'mode', 'paste' ],
          \             [ 'cocstatus', 'currentfunction', 'readonly', 'filename', 'modified', 'fugitive' ] ],
          \   'right': [ [ 'lineinfo' ],
		  \              [ 'percent' ],
		  \              [ 'linter_checking', 'linter_errors', 'linter_warnings', 'linter_infos', 
                                 \ 'linter_ok', 'filetype', 'fileencoding'] ]
          \ },
          \ 'component_function': {
          \   'filename': 'LightlineFilename',
          \   'cocstatus': 'coc#status',
          \   'currentfunction': 'CocCurrentFunction'
          \ },
          \ }
    function! LightlineFilename()
      return expand('%:t') !=# '' ? @% : '[No Name]'
    endfunction

    function! CocCurrentFunction()
        return get(b:, 'coc_current_function', '')
    endfunction

let g:lightline.component_expand = {
      \  'linter_checking': 'lightline#ale#checking',
      \  'linter_infos': 'lightline#ale#infos',
      \  'linter_warnings': 'lightline#ale#warnings',
      \  'linter_errors': 'lightline#ale#errors',
      \  'linter_ok': 'lightline#ale#ok',
      \ }

let g:lightline.component_expand = {
      \  'linter_checking': 'lightline#ale#checking',
      \  'linter_infos': 'lightline#ale#infos',
      \  'linter_warnings': 'lightline#ale#warnings',
      \  'linter_errors': 'lightline#ale#errors',
      \  'linter_ok': 'lightline#ale#ok',
      \ }
endif
set cmdheight=1  " without this, bottom line will use extra space

"----------- Permanent undo --------------
set noswapfile  " some people say this is a bad idea, need more thoughts
set nobackup
set undofile
set undodir=~/.vim/undodir

" ---------- UI Config -------------------
" https://github.com/JJGO/dotfiles/blob/master/vim/.vimrc
set number              " show line numbers
set relativenumber      " show relative numbering
set showcmd             " show command in bottom bar
set cursorline          " highlight current line
set wildmenu            " visual autocomplete for command menu
set showmatch           " highlight matching [{()}]
set mouse+=a            " A necessary evil, mouse support
set scrolloff=12        " Keep cursor in approximately the middle of the screen
set noerrorbells visualbell t_vb=    "Disable annoying error noises
set linebreak           " Have lines wrap instead of continue off-screen, opposite to set nowrap
" still need figuring out
" filetype indent on      " load filetype-specific indent files
" filetype plugin on      " load filetype specific plugin files
" set laststatus=2        " already set in order to make lightline work, Show the status line at the bottom
" set splitbelow          " Open new vertical split bottom
" set splitright          " Open new horizontal splits right
" set updatetime=100      " Some plugins require fast updatetime
" set ttyfast             " Improve redrawing


" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif
