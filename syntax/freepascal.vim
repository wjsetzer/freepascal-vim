" Vim syntax file
" Language: FreePascal
" Maintainer: William Setzer
" Latest Revision: 27 December 2018

if exists("b:current_syntax")
  finish
endif

" Keywords
syn keyword fpBlock begin end
syn keyword fpConditional case of on if then else

hi def link fpBlock Keyword
hi def link fpConditional Conditional

let b:current_syntax = "freepascal"
