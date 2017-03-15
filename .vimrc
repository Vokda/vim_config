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
Plugin 'Valloric/YouCompleteMe'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.

" webbrowser plugin for VIM! YAY!
Plugin 'scrooloose/nerdtree'

"for a working color that looks nice on this computer
"Plugin 'chriskempson/base16-vim'

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
"
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
"set background=dark
colorscheme wombat256i
syntax on
set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent
set number
set relativenumber
set noexpandtab
autocmd FileType hs setlocal expandtab
map <C-n> :NERDTreeToggle<CR>
set backspace=indent,eol,start
set secure
set exrc
"set tw=80
set wm=2
set mouse=a

"ycm settings
let g:ycm_add_preview_to_completeopt = 0
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_complete_in_comments = 0
let g:ycm_semantic_triggers = 1
"let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
"let g:ycm_use_ultisnips_completer = 1
let g:ycm_auto_trigger = 1
let g:ycm_warning_symbol = '⚠'
"let g:ycm_min_num_of_chars_for_completion = 99
let g:ycm_filetype_blacklist = {'tex':1}
set cindent
"set cino=0(,0{,0},0),:,0#,!^F,o,O,e
let g:ycm_confirm_extra_conf = 0
au FileType c,cpp setlocal comments-=:// comments+=f://
