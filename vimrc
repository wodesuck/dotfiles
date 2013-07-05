" Not vi
set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'LargeFile'
Bundle 'kien/ctrlp.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'Lokaltog/vim-powerline'
Bundle 'Align'
Bundle 'matchit.zip'
Bundle 'mileszs/ack.vim'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'majutsushi/tagbar'
" Bundle 'scrooloose/nerdcommenter'
Bundle 'tomtom/tcomment_vim'
" Bundle 'vim-commentary'
Bundle 'scrooloose/syntastic'
Bundle 'tpope/vim-fugitive'
Bundle 'mattn/webapi-vim'
Bundle 'mattn/gist-vim'
Bundle 'sjl/gundo.vim'
Bundle 'ervandew/supertab'
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
" Bundle 'garbas/vim-snipmate'
" Bundle 'wodesuck/snipmate-snippets'
Bundle 'UltiSnips'
Bundle 'tpope/vim-surround'
Bundle 'Rip-Rip/clang_complete'
Bundle 'davidhalter/jedi-vim'
Bundle 'mattn/zencoding-vim'
Bundle 'pangloss/vim-javascript'
Bundle 'kchmck/vim-coffee-script'
Bundle 'digitaltoad/vim-jade'
Bundle 'nanotech/jellybeans.vim'
Bundle 'altercation/vim-colors-solarized'

" Encoding
set encoding=utf-8
set fileencodings=utf-8,gb18030,gbk,gb2312,cp936

" Enable filetype plugin
filetype plugin indent on

" Syntax & color scheme
syntax on
set background=dark
let g:jellybeans_use_lowcolor_black = 0
color jellybeans

" Tab completion
set wildmenu
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*

" Scrolloff
set scrolloff=5
set sidescrolloff=5

" Window spacing
set cmdheight=2
set laststatus=2
set ruler
set number

" Turn on auto indenting
set autoindent
set smartindent

" Tabstops & indents
set tabstop=8
set shiftwidth=8
set smarttab

" Searching
set showmatch
set incsearch

" Allow backspacing over indent, eol & start
set backspace=indent,eol,start

" Fonts
set guifont=DejaVu\ Sans\ Mono\ 10
set gfw=WenQuanYi\ Zen\ Hei\ Mono\ 10

" Gui without anything 
set guioptions=

" Undo & History
set undofile
set history=100

" Selecting mode
set selection=exclusive
set selectmode=

" Allow moving over lines
set whichwrap=b,s,<,>,[,]

" Dont't redraw while executing macros
set lazyredraw

" Paste without formatting
map <MouseMiddle> <esc>"*p

" Use the path of the current file
set autochdir

" Setting for tagbar
let g:tagbar_left = 1
let g:tagbar_autofocus = 1
let g:tagbar_autoclose = 1
let g:tagbar_sort = 0

" Setting for NERDTree
let NERDTreeQuitOnOpen=1

" Setting for gundo
let g:gundo_close_on_revert = 1

" Setting for CtrlP
let g:ctrlp_mruf_max = 1000
let g:ctrlp_use_caching = 1
let g:ctrlp_clear_cache_on_exit = 0

" Setting for gist
let g:gist_clip_command = 'xclip -selection clipboard'

" Setting for supertab
let g:SuperTabDefaultCompletionType = "context"
let g:SuperTabClosePreviewOnPopupClose = 1

" Setting for UltiSnips
let g:UltiSnipsSnippetDirectories = ["snippets"]
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
let g:UltiSnipsListSnippets = "<c-x><c-x>"

" Setting the leader key
let mapleader = ';'

" Mapping
map <F9> :make<CR>
map <C-F9> :!./%<<CR>
map <F8> :!gdb %<<CR>
map <F10> :TagbarToggle<CR>
map <F4> :NERDTreeToggle<CR>
map <F5> :GundoToggle<CR>
map <F3> :SyntasticToggleMode<CR>
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
