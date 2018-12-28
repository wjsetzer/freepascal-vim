" Vim syntax file
" Language: FreePascal
" Maintainer: William Setzer
" Latest Revision: 27 December 2018

if exists("b:current_syntax")
  finish
endif

" Keywords
syn keyword fpConditional if then else

hi def link fpConditional Keyword

let b:current_syntax = "freepascal"
