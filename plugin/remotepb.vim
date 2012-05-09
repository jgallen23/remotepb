" File: remotepb.vim
" Author: Greg Allen 
" Version: 0.0.1
" Last modified: May 8th 2012 

if !exists('g:remotepb_server')
	let g:remotepb_server = 'localhost'
endif

function! s:pbcopy()
  call system("ssh " . g:remotepb_server . " pbcopy", getreg(""))
endfunction

command! -nargs=0 -bar RemotePBCopy call s:pbcopy()

function! s:pbpaste()
  call setreg("", system("ssh " . g:remotepb_server . " pbpaste"))
endfunction

command! -nargs=0 -bar RemotePBPaste call s:pbpaste()
