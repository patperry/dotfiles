" Vim syntax file
" Language:	Box
"
" Modified from Bram Moolenaar's c.vim.

" Quit when a (custom) syntax file was already loaded
if exists("b:current_syn")
    finish
endif

" keywords
syn keyword boxStatement goto break return continue panic
syn keyword boxLabel case default
syn keyword boxConditional if else match unless
syn keyword boxRepeat for repeat until while
syn keyword boxKeyword module import export from
syn keyword boxKeyword let var with
syn keyword boxKeyword forall

syn keyword	boxTodo		contained TODO FIXME XXX

" boxCommentGroup allows adding matches for special things in comments
syn cluster	boxCommentGroup	contains=boxTodo

" String and Character constants
syn match	boxSpecial	display contained "\\\(x\x\+\|\o\{1,3}\|.\|$\)"
syn region	boxType	start=+L\="+ skip=+\\\\\|\\"+ end=+"+ contains=boxSpecial,@Spell
syn region	boxString	start=+L\='+ skip=+\\\\\|\\'+ end=+'+ contains=boxSpecial,@Spell


syn keyword boxStructure struct enum class

syn keyword boxTypedef type instance

" Operators
syn match boxOperator "\V~"
syn match boxOperator "\V|"
syn match boxOperator "\V||"
syn match boxOperator "\V^"
syn match boxOperator "\V\\"
syn match boxOperator "\V@"
syn match boxOperator "\V>"
syn match boxOperator "\V>>"
syn match boxOperator "\V>="
syn match boxOperator "\V="
syn match boxOperator "\V=="
syn match boxOperator "\V<"
syn match boxOperator "\V<="
syn match boxOperator "\V<<"
syn match boxOperator "\V:"
syn match boxOperator "\V/"
syn match boxOperator "\V."
syn match boxOperator "\V.."
syn match boxOperator "\V..."
syn match boxOperator "\V-"
syn match boxOperator "\V+"
syn match boxOperator "\V*"
syn match boxOperator "\V**"
syn match boxOperator "\V&"
syn match boxOperator "\V&&"
syn match boxOperator "\V%"
syn match boxOperator "\V#"
syn match boxOperator "\V!"
syn match boxOperator "\V!="
syn keyword boxOperator as in is new not

" Comments
syn match boxComment "\v\/\/.*$"
syn region boxComment start="\v\/\*" end="\v\*\/"
hi def link boxComment Comment

syn match boxType "\v[A-Z][a-zA-Z0-9_]*"
syn match boxIdentifier "\v[a-z][a-zA-Z0-9_]*"

" Booleans
syn keyword boxBoolean True False

" Delimiter
syn match boxDelimiter "\V;"
syn match boxDelimiter "\V,"
syn match boxDelimiter "\V|"
syn match boxDelimiter "\V{"
syn match boxDelimiter "\V}"
syn match boxDelimiter "\V->"
syn match boxDelimiter "\V=>"

hi def link boxIdentifier Identifier
hi def link boxStatement Statement
hi def link boxLabel Label
hi def link boxConditional Conditional
hi def link boxRepeat Repeat
hi def link boxKeyword Keyword
hi def link boxTodo Todo
hi def link boxSpecial Special
hi def link boxString String
hi def link boxType Type
hi def link boxStructure Structure
hi def link boxTypedef Typedef
hi def link boxOperator Operator
hi def link boxBoolean Boolean
hi def link boxDelimiter Delimiter


let b:current_syn = "box"
