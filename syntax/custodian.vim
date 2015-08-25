" Vim syntax file
" Language: Sentinel/Custodian
" Maintaner: Nathan Lasseter
" Latest Revision: 09 December 2014

if exists("b:current_syntax")
  finish
endif

syn keyword hostKeywords is are and fetched from
syn keyword ruleKeywords must run on not otherwise

syn match bytemarkMacros '__\w\+__'
syn match endStatement '\.\s*$'
syn match withKeyword 'with\(out\)\?\s\+\w\+'
syn match comment '#.*$'
syn match url /https\?:\/\/\(\w\+\(:\w\+\)\?@\)\?\([A-Za-z][-_0-9A-Za-z]*\.\)\{1,}\(\w\{2,}\.\?\)\{1,}\(:[0-9]\{1,5}\)\?\S*/

let b:current_syntax = "custodian"

hi def link hostKeywords Statement
hi def link ruleKeywords Statement
hi def link withKeyword Statement
hi def link endStatement Statement
hi def link bytemarkMacros Todo
hi def link comment Comment
hi def link url Constant
