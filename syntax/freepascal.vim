" Vim syntax file
" Language: FreePascal
" Maintainer: William Setzer
" Latest Revision: 27 December 2018

if exists("b:current_syntax")
  finish
endif

" Keywords
syn keyword fpTodo contained TODO
syn keyword fpBlock begin end

" Conditional
syn keyword fpConditional case of on if then else

" Comment
syn region fpComment start="(\*" end="\*)" contains=fpTodo
syn region fpComment start="{" end="}" contains=fpTodo
syn region fpComment start="//" end="$" contains=fpTodo

hi def link fpBlock Keyword
hi def link fpConditional Conditional
hi def link fpComment Comment

let b:current_syntax = "freepascal"
