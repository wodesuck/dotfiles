set tabstop=8
set shiftwidth=8
set smarttab
set noexpandtab
compiler gcc

if &filetype=="c"
	set makeprg=gcc\ %\ -o\ %<\ -g\ -Wall\ -lm
elseif &filetype=="cpp"
	set makeprg=g++\ %\ -o\ %<\ -g\ -Wall
endif

let g:SuperTabContextDefaultCompletionType="<c-x><c-u>"
let g:clang_complete_auto=0
let g:clang_use_library=1
let g:clang_hl_errors=0
"let g:clang_snippets=1
"let g:clang_snippets_engine="snipmate"
