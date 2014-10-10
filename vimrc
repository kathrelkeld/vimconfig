" Pathogen specific calls
call pathogen#infect()
syntax on
filetype plugin indent on

" Tab settings
set tabstop=4
set shiftwidth=4 
set softtabstop =4
set expandtab

" Default window size
set lines=50 columns=93

" General settings
set encoding=utf-8
set scrolloff=5                 " Lines to show above/below current
set autoindent                  " New lines start at indentation of last
set showmode                    " Indicate input or replace mode
set showcmd                     " Show command as it's entered
set hidden                      " Hide, not close buffers on switch
set wildmenu                    " Enables menu at bottom of window
set wildmode=list:longest,full  " Better tab completion for cmds
set noerrorbells                " Disable beep
set ttyfast                     " Fast terminal connection
set ruler                       " Always show cursor
set backspace=indent,eol,start  " Allow backspace for these
set laststatus=2                " Always enables status line
set relativenumber              " Line numbers on side are relative
" set undofile                    " Creates *.un~ file for each

" Search settings
nnoremap / /\v
vnoremap / /\v
set incsearch
set ignorecase 
set hlsearch
set gdefault
set smartcase
set showmatch
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %

" Longer line settings
" set wrap
set textwidth=100
let &wrapmargin=&textwidth
set formatoptions=qrn1
let &colorcolumn=&textwidth

" Disable arrow keys :(
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk

" Remove vi functionality
set nocompatible

" Misc key mappings
nnoremap ; :
let mapleader = ","
nnoremap <space> :call NERDComment("n","toggle")<cr>

" Disable modelines
" set modelines

" Window split remaps
nnoremap <leader>w <C-w>v<C-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Show invisible characters
set list
nmap <leader>l :set list!<CR>
set listchars=tab:▸\ ,eol:¬

" Colors
set t_Co=256
set background=light
colorscheme peaksea
highlight NonText None
highlight NonText ctermfg=grey
highlight NonText guifg=grey
highlight SpecialKey None
highlight SpecialKey ctermfg=grey
highlight SpecialKey guifg=grey

" NERDCommenter config
let NERDShutUp=1

" CtrlP config
let g:ctrlp_map = ''
nnoremap <leader>pp :CtrlP<cr>
nnoremap <leader>pb :CtrlPBuffer<cr>
nnoremap <leader>pm :CtrlPMRU<cr>
let g:ctrlp_root_markers = ['Makefile']
let g:ctrlp_working_path_mode = 'r'

" Language specific settings
augroup golang
    au!
    au FileType go set noexpandtab
augroup END
