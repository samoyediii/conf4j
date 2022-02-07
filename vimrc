set nocompatible
filetype plugin on
syntax on

call plug#begin()
Plug 'sheerun/vim-polyglot'
Plug 'preservim/vim-pencil'
Plug 'neomake/neomake'
Plug 'easymotion/vim-easymotion'
Plug 'ntpeters/vim-better-whitespace'
Plug 'preservim/tagbar'
Plug 'preservim/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'preservim/nerdcommenter'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-sensible'
Plug 'itchyny/lightline.vim'
Plug 'vim-ruby/vim-ruby'
Plug 'rust-lang/rust.vim'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'dracula/vim'
Plug 'joshdick/onedark.vim'
Plug 'chriskempson/base16-vim'
Plug 'preservim/vim-colors-pencil'
call plug#end()


" Spaces & Tabs
set tabstop=2
set softtabstop=2
set shiftwidth=2
set shiftround
set expandtab

" UI Config
set ruler               " show cursor position in status bar
set title               " show file in titlebar
set number              " show line numbers
set showcmd             " show command in bottom bar
set cursorline          " highlight current line
set wildmenu            " visual autocomplete for command menu
set lazyredraw          " redraw only when we need to.
set showmatch           " highlight matching [{()}]
set laststatus=2        " always show status line
set virtualedit=block,onemore
colorscheme onedark

" put files in .vim
set directory=~/.vim/swap
set backupdir=~/.vim/backup
set undodir=~/.vim/undo
set viminfo+=n~/.vim/.viminfo

" gvim options
set guioptions-=M  " extreme version of removing menu bar
set guioptions-=m  " remove menu bar
set guioptions-=T  " remove toolbar
set guioptions-=r  " remove right-hand scroll bar
set guioptions-=L  " remove left-hand scroll bar

""" NERDTree Options
" Create default mappings
let g:NERDCreateDefaultMappings = 1

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not
let g:NERDToggleCheckAllLines = 1
""" NERDTree Options

""" Lightline Options
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }
""" Lightline Options
