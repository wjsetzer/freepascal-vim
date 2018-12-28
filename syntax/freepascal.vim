" Vim syntax file
" Language: FreePascal
" Maintainer: William Setzer
" Latest Revision: 27 December 2018

if exists("b:current_syntax")
  finish
endif

" TODO
syn keyword fpTodo contained TODO

" Keywords
syn keyword fpKeyword asm begin
syn match fpKeyword "contains"
syn keyword fpKeyword delete dispose end forward get
syn keyword fpKeyword goto implementation inherited initialization finalization
syn keyword fpKeyword insert interface label
syn keyword fpKeyword library exports new package program put read readln
syn keyword fpKeyword requires reset rewrite seek unit uses write writeln

" Conditional
syn keyword fpConditional case of on if then else

" Comment
syn region fpComment start="(\*" end="\*)" contains=fpTodo
syn region fpComment start="{" end="}" contains=fpTodo
syn region fpComment start="//" end="$" contains=fpTodo

" Must come after comment regions
syn region fpDefine start="{\$" end="}"

hi def link fpKeyword Keyword
hi def link fpConditional Conditional
hi def link fpComment Comment
hi def link fpDefine Macro

let b:current_syntax = "freepascal"
