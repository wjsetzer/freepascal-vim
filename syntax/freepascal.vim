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
syn keyword fpKeyword requires reset rewrite seek write writeln
syn keyword fpKeyword unit uses var const type

" symbols (assignment, comparators)
syn match fpAssignment ":="
syn keyword fpAssignment assign

syn keyword fpComparator in is
syn match cpComparator "="
syn match cpComparator "<"
syn match cpComparator ">"

" Constants
syn keyword fpConstant true false nil maxint

" Conditional
syn keyword fpConditional case of on if then else

" Functions
syn keyword fpFunction record constructor destructor property

" Comment
syn region fpComment start="(\*" end="\*)" contains=fpTodo
syn region fpComment start="{" end="}" contains=fpTodo
syn region fpComment start="//" end="$" contains=fpTodo

syn keyword fpLabel label

" Must come after comment regions
syn region fpDefine start="{\$" end="}"

hi def link fpAssignment Operator
hi def link fpComment Comment
hi def link fpComparator Conditional
hi def link fpConditional Conditional
hi def link fpConstant Statement
hi def link fpFunction Function
hi def link fpKeyword Keyword
hi def link fpLabel Label
hi def link fpDefine Macro

let b:current_syntax = "freepascal"
