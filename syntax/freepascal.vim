" Vim syntax file
" Language: FreePascal
" Maintainer: William Setzer
" Latest Revision: 27 December 2018

if exists("b:current_syntax")
  finish
endif

" Macros

" Keywords
syn keyword fpTodo contained TODO
syn keyword fpBlock begin end

" Conditional
syn keyword fpConditional case of on if then else

" Comment
syn region fpComment start="(\*" end="\*)" contains=fpTodo
syn region fpComment start="{" end="}" contains=fpTodo
syn region fpComment start="//" end="$" contains=fpTodo

" Must come after comment?
syn region fpDefine start="{\$" end="}"

hi def link fpBlock Keyword
hi def link fpConditional Conditional
hi def link fpComment Comment
hi def link fpDefine Macro

let b:current_syntax = "freepascal"
