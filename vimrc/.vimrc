" alias ipdb
iabbrev ipdb import ipdb;ipdb.set_trace()

" save when enter is pressed in normal mode
nmap <CR> :w<CR>

" Exc mapped to jk
:imap jk <Esc>

" use fzf fuzzy search while in vim by ctrl f
nnoremap <silent> <C-f> :Files<CR>

" highlight syntax given file extensions
syntax on
set synmaxcol=100000

" do not wrap code
set nowrap

" keep cursor centered when searching
set so=5

set nocursorline

" faster regex engine
set re=1

" display line numbers
set nu
" set rnu

set shiftwidth=4

set tabstop=4
set smartcase
set smartindent

" enable selecting in normal mode
set mouse=i

" set hls is
set ignorecase

" fix copy paste - this requires macvim, neovim, or vim-gnome to work
set clipboard=unnamed

call plug#begin('~/.vim/autoload')

" search across directories
Plug 'scrooloose/nerdtree'

" linter
Plug 'w0rp/ale'

Plug 'Chiel92/vim-autoformat'
Plug 'godlygeek/tabular'
Plug 'tpope/vim-commentary' " this is for uncommenting lines
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'majutsushi/tagbar'
" Plug 'tpope/vim-fugitive'
" Plug 'mileszs/ack.vim'

" Language support
Plug 'derekwyatt/vim-scala'
Plug 'elzr/vim-json'
Plug 'fatih/vim-go'
Plug 'jalvesaq/Nvim-R'
Plug 'julialang/julia-vim'
Plug 'kchmck/vim-coffee-script'
Plug 'keith/swift.vim'
Plug 'msanders/cocoa.vim'
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-rails'
Plug 'tshirtman/vim-cython'

" Colors
Plug 'flazz/vim-colorschemes'
Plug 'junegunn/seoul256.vim'

" Colour Schemes
Plug 'romainl/flattened'

" Startify
Plug 'mhinz/vim-startify'

call plug#end()

syntax enable
color summerfruit256   " this is white yay!

" :colorscheme molokai   ## dark theme i think

" USEFUL EXTENSIONS
" nerdtree show/hide directory overview
" ctrl n and t
nnoremap <C-n> :NERDTree<CR>   
nnoremap <C-s> :NERDTreeToggle<CR>

" Ctags - go to function definition functionality
set tags+=$HOME/.git/tags
nnoremap <leader>] <C-]>
nnoremap <leader>[ <C-t>

" Autoformat
let g:autoformat_autoindent = 0
let g:autoformat_retab = 0
let g:autoformat_remove_trailing_spaces = 0
nnoremap <localleader>f :Autoformat<CR>

" Initialize Project dependant settings
augroup work
    autocmd!
    autocmd FileType ruby        setlocal shiftwidth=2 softtabstop=2 expandtab nospell
    autocmd FileType yaml        setlocal shiftwidth=2 tabstop=2 expandtab
    autocmd Filetype sql         setlocal shiftwidth=2 tabstop=2 expandtab
    autocmd Filetype html        setlocal shiftwidth=2 tabstop=2 expandtab spell
    autocmd Filetype htmldjango  setlocal shiftwidth=2 tabstop=2 expandtab spell
    autocmd Filetype css         setlocal shiftwidth=2 tabstop=2 expandtab

    autocmd Filetype python      setlocal nosmartindent
augroup END
