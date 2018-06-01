set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" You complete me  <3
" NERDTree for browsing
Plugin 'scrooloose/nerdtree'

" You Complete Me (YCM)
"Plugin 'Valloric/YouCompleteMe'

" perl highlight
"Plugin 'vim-perl/vim-perl'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"
" --- Plug ---

"call plug#begin('~/.vim/plugged')

" completions
"Plug 'roxma/nvim-completion-manager'

"call plug#end()


"----------Latex settings----------

" REQUIRED. This makes vim invoke Latex-Suite when you open a tex file.
" filetype plugin on
"
" IMPORTANT: win32 users will need to have 'shellslash' set so that latex
" can be called correctly.
" set shellslash

" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $*

" OPTIONAL: This enables automatic indentation as you type.
filetype indent on

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults
" to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
 let g:tex_flavor='latex'

"-------------- my stuff----------
 "-- NERD tree stuff --
map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeDirArrows=0
let NERDTreeShowLineNumbers=1
autocmd FileType nerdtree setlocal relativenumber
":NerdTreeToggle "simply start vim up with nerd tree
set encoding=utf-8 "to make nerd tree work properly


"set background=dark
colorscheme wombat256i
syntax on
" General settings
set autoindent
set number
set relativenumber
set noexpandtab
autocmd FileType hs setlocal expandtab
map <C-n> :NERDTreeToggle<CR>
set backspace=indent,eol,start
set secure
set mouse=a
set wm=2
set wildmode=longest:full,full
set wildmenu
set splitright
set guitablabel=\[%N\]\ %t\ %M
set textwidth=110
set fo=cqt
set smartindent
"set cpo+=x
set smartcase
set clipboard+=unnamed

"bells
set noerrorbells
set vb t_vb=

"folding
set foldmethod=syntax
set foldlevel=1
set foldclose=all
set foldopen=all
set foldnestmax=1
set colorcolumn=+1
highlight ColorColumn ctermbg=brown
set fo+=t
set fo-=l
set hlsearch

"remaps
nnoremap space zz
nnoremap Y y$
noremap <Tab> :tabn <CR>
noremap <S-Tab> :tabp <CR>
noremap <S-H> <C-w>h
noremap <S-L> <C-w>l
noremap <S-K> <C-w>k
noremap <S-J> <C-w>j

" tab settings. Work uses 2 instead of 4
"nnoremap <A-Tab> :set tabstop=4|:set shiftwidth=4|:set softtabstop=4 <CR>
"nnoremap <C-Tab> :set tabstop=2|:set shiftwidth=2|:set softtabstop=2 <CR>
set tabstop=2
set shiftwidth=2
set softtabstop=2
