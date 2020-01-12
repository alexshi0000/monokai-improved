" Deep Space - An intergalactically friendly color scheme for Vim
" Author: Brandon Siders
" License: MIT

highlight clear

if exists('syntax_on')
    syntax reset
endif

set background=dark
let g:colors_name = 'monokai-improved'

let g:deepspace_italics = get(g:, 'deepspace_italics', 0)

" Color Palette
let s:gray0     = '#161616'
let s:gray1     = '#1b1b1b'
let s:gray2     = '#242424'
let s:gray3     = '#363636'
let s:gray4     = '#545454'
let s:gray5     = '#F5F6F9'
let s:red       = '#FF5794'
let s:green     = '#B2E64C'
let s:yellow    = '#E6DB7A'
let s:blue      = '#5596F1'
let s:purple    = '#AA7DFC'
let s:cyan      = '#66CCE1'
let s:orange    = '#FAA23D'
let s:brown     = '#CC8D66'

function! s:HL(group, fg, bg, attr)
    let l:attr = a:attr
    if !g:deepspace_italics && l:attr ==# 'italic'
        let l:attr = 'none'
    endif

    if !empty(a:fg)
        exec 'hi ' . a:group . ' guifg=' . a:fg
    endif
    if !empty(a:bg)
        exec 'hi ' . a:group . ' guibg=' . a:bg
    endif
    if !empty(a:attr)
        exec 'hi ' . a:group . ' gui=' . l:attr . ' cterm=' . l:attr
    endif
endfun

hi ExtraWhitespace guifg=#232730 guibg=#232730

" Editor Highlights
call s:HL('ExtraWhitespace',                s:brown,     s:brown,     '')
call s:HL('NERDTreeOpenable',               s:gray4,    s:gray0,    '')
call s:HL('NERDTreeClosable',               s:gray5,    s:gray0,    '')
call s:HL('NERDTreeCWD',                    s:cyan,     s:gray0,    '')
call s:HL('ColorColumn',                    '',         s:gray1,    '')
call s:HL('Cursor',                         s:gray2,    s:gray5,    '')
call s:HL('CursorColumn',                   '',         s:gray2,    '')
call s:HL('CursorLine',                     '',         s:gray1,    'none')
call s:HL('Directory',                      s:green,     '',         '')
call s:HL('DiffAdd',                        s:gray3,    s:green,    'none')
call s:HL('DiffChange',                     s:gray5,    s:yellow,   'none')
call s:HL('DiffDelete',                     s:gray5,    s:red,      'none')
call s:HL('DiffText',                       s:gray0,    s:cyan,     'none')
call s:HL('ErrorMsg',                       s:red,      s:gray0,    'bold')
call s:HL('VertSplit',                      s:gray4,    s:gray0,    'none')
call s:HL('Folded',                         s:gray5,     s:gray4,    '')
call s:HL('FoldColumn',                     s:brown,     s:gray2,    '')
call s:HL('SignColumn',                     s:gray2,    s:gray0,    '')
call s:HL('LineNr',                         s:gray4,    s:gray1,         '')
call s:HL('CursorLineNr',                   s:gray5,    s:gray2,    'none')
call s:HL('MatchParen',                     s:gray0,    s:gray5,     'underline')
call s:HL('ModeMsg',                        s:cyan,    '',         '')
call s:HL('MoreMsg',                        s:cyan,    '',         '')
call s:HL('NonText',                        s:gray3,    s:gray0,         '')
call s:HL('Normal',                         s:gray5,    s:gray0,    'none')
call s:HL('Pmenu',                          s:gray5,    s:gray2,    '')
call s:HL('PmenuSel',                       s:gray0,    s:cyan,     '')
call s:HL('PmenuSbar',                      s:gray2,    s:gray3,    '')
call s:HL('PmenuThumb',                     s:gray3,    s:gray4,    '')
call s:HL('Question',                       s:green,    '',         '')
call s:HL('Search',                         s:gray0,    s:brown,   '')
call s:HL('SpecialKey',                     s:brown,    '',         '')
call s:HL('SpellCap',                       s:cyan,     '',         'undercurl')
call s:HL('SpellBad',                       s:red,      '',         'undercurl')
call s:HL('StatusLine',                     s:gray5,    s:gray3,    'none')
call s:HL('StatusLineNC',                   s:gray4,    s:gray4,    '')
call s:HL('TabLine',                        s:gray5,    s:gray3,    'none')
call s:HL('TabLineFill',                    s:gray4,    s:gray0,    'none')
call s:HL('TabLineSel',                     s:gray0,    s:cyan,    '')
call s:HL('Title',                          s:yellow,   '',         'none')
call s:HL('Visual',                         '',         s:gray3,    '')
call s:HL('WarningMsg',                     s:red,      '',         '')
call s:HL('WildMenu',                       s:gray0,    s:cyan,     '')

" Standard Syntax
call s:HL('Comment',                        s:gray4,    '',         'italic')
call s:HL('Constant',                       s:purple,   '',         '')
call s:HL('String',                         s:yellow,   '',         'italic')
call s:HL('Character',                      s:orange,   '',         '')
call s:HL('Identifier',                     s:red,   '',         'none')
call s:HL('Function',                       s:green,    '',         'italic')
call s:HL('Statement',                      s:red,      '',         'none')
call s:HL('Operator',                       s:red,     '',         'none')
call s:HL('PreProc',                        s:cyan,     '',         '')
call s:HL('Define',                         s:cyan,     '',         '')
call s:HL('Macro',                          s:cyan,     '',         'italic')
call s:HL('Type',                           s:cyan,     '',         'none')
call s:HL('Structure',                      s:cyan,     '',         '')
call s:HL('Special',                        s:orange,     '',         '')
call s:HL('Underlined',                     s:green,     '',         'none')
call s:HL('Error',                          s:red,      s:gray0,    'underline')
call s:HL('Todo',                           s:brown,     s:gray0,    'underline')

" CSS/Sass/Less
call s:HL('cssAttrComma',                   s:gray5,   '',         '')
call s:HL('cssAttributeSelector',           s:purple,  '',         '')
call s:HL('cssBraces',                      s:gray5,   '',         '')
call s:HL('cssClassName',                   s:green,   '',         '')
call s:HL('cssClassNameDot',                s:gray5,   '',         '')
call s:HL('cssIdentifier',                  s:red,     '',         '')
call s:HL('cssImportant',                   s:brown,   '',         '')
call s:HL('cssMediaType',                   s:orange,  '',         '')
call s:HL('cssProp',                        s:cyan,    '',         '')
call s:HL('cssSelectorOp',                  s:yellow,  '',         '')
call s:HL('cssSelectorOp2',                 s:yellow,  '',         '')

call s:HL('sassAmpersand',                  s:cyan,     '',         '')
call s:HL('sassClass',                      s:orange,   '',         '')
call s:HL('sassClassChar',                  s:orange,   '',         '')

call s:HL('lessAmpersand',                  s:cyan,     '',         '')
call s:HL('lessClass',                      s:orange,   '',         '')
call s:HL('lessClassChar',                  s:orange,   '',         '')
call s:HL('lessFunction',                   s:yellow,   '',         '')
call s:HL('lessCssAttribute',               s:gray5,    '',         '')

" Git
call s:HL('gitcommitComment',               s:gray4,    '',         'italic')
call s:HL('gitcommitOnBranch',              s:gray4,    '',         'italic')
call s:HL('gitcommitFile',                  s:cyan,     '',         '')
call s:HL('gitcommitHeader',                s:purple,   '',         '')
call s:HL('gitcommitBranch',                s:orange,   '',         '')
call s:HL('gitcommitUnmerged',              s:green,    '',         '')
call s:HL('gitcommitUntrackedFile',         s:cyan,     '',         '')
call s:HL('gitcommitSelectedFile',          s:green,    '',         '')
call s:HL('gitcommitDiscardedFile',         s:red,      '',         '')
call s:HL('gitcommitUnmergedFile',          s:yellow,   '',         '')
call s:HL('gitcommitSelectedType',          s:green,    '',         '')
call s:HL('gitcommitDiscardedType',         s:red,      '',         '')
hi link gitcommitNoBranch       gitcommitBranch
hi link gitcommitUntracked      gitcommitComment
hi link gitcommitDiscarded      gitcommitComment
hi link gitcommitSelected       gitcommitComment
hi link gitcommitDiscardedArrow gitcommitDiscardedFile
hi link gitcommitSelectedArrow  gitcommitSelectedFile
hi link gitcommitUnmergedArrow  gitcommitUnmergedFile

" HTML
call s:HL('htmlArg',                        s:green,   '',         '')
call s:HL('htmlEndTag',                     s:gray5,   '',         '')
call s:HL('htmlTag',                        s:gray5,   '',         '')
call s:HL('htmlTagName',                    s:red,     '',         '')
call s:HL('htmlTitle',                      s:yellow,    '',         '')

" Javascript
call s:HL('javaScriptBraces',               s:gray5,    '',         '')
call s:HL('javaScriptIdentifier',           s:purple,     '',         '')
call s:HL('javaScriptFunction',             s:purple,     '',         '')
call s:HL('javaScriptNumber',               s:red,      '',         '')
call s:HL('javaScriptReserved',             s:brown,     '',         '')
call s:HL('javaScriptRequire',              s:cyan,     '',         '')
call s:HL('javaScriptNull',                 s:orange,      '',         '')

" Ruby
call s:HL('rubyBlockParameterList',         s:purple,   '',         '')
call s:HL('rubyInterpolationDelimiter',     s:purple,   '',         '')
call s:HL('rubyStringDelimiter',            s:green,    '',         '')
call s:HL('rubyRegexpSpecial',              s:cyan,     '',         '')

" Java
call s:HL('javaConstant',                   s:red,     '',         '')
call s:HL('javaBoolean',                    s:purple,     '',         '')
call s:HL('javaStatement',                  s:red,     '',         '')
call s:HL('javaConditional',                s:red,     '',         '')
call s:HL('javaRepeat',                     s:red,     '',         '')
call s:HL('javaOperator',                   s:gray5,     '',         '')
call s:HL('javaAccessKeyword',              s:red,     '',         '')
call s:HL('javaException',                  s:red,     '',         '')
call s:HL('javaPreProc',                    s:green,     '',         '')
call s:HL('javaType',                       s:cyan,     '',         '')
call s:HL('javaStorage',                    s:red,     '',         '')
call s:HL('javaStructure',                  s:red,     '',         '')
call s:HL('javaError',                      s:brown,     '',         '')
call s:HL('javaTodoNote',                   s:brown,     '',         '')
call s:HL('javaTodoTask',                   s:brown,     '',         '')
call s:HL('javaTodoWarn',                   s:brown,     '',         '')
call s:HL('javaInclude',                    s:green,     '',         '')
call s:HL('javaPackagePath',                s:green,     '',         '')
call s:HL('javaIdentifier',                 s:gray5,     '',         '')
call s:HL('javaFunction',                   s:green,     '',         '')
call s:HL('javaString',                     s:yellow,     '',         '')
call s:HL('javaDelimiter',                  s:gray5,     '',         '')
call s:HL('javaSpecialChar',                s:gray5,     '',         '')
call s:HL('javaSpecial',                    s:gray5,     '',         '')
call s:HL('javaTag',                        s:gray5,     '',         '')
call s:HL('javaMacro',                      s:gray5,     '',         '')
call s:HL('javaDefine',                     s:gray5,     '',         '')

" Python
call s:HL('pythonRepeat',                   s:red,     '',         '')
call s:HL('pythonConditional',              s:red,     '',         '')
call s:HL('pythonInclude',                  s:red,     '',         '')
call s:HL('pythonTodo',                     s:brown,     '',         '')
call s:HL('pythonComment',                  s:gray4,     '',         '')
call s:HL('pythonStatement',                s:cyan,     '',         '')
call s:HL('pythonSelf',                     s:orange,     '',         '')
call s:HL('pythonClassParameters',          s:orange,     '',         '')
call s:HL('pythonFunctionParameters',       s:orange,     '',         '')
call s:HL('pythonConstant',                 s:purple,     '',         '')
call s:HL('pythonBuiltin',                  s:cyan,     '',         '')
call s:HL('pythonDecorator',                s:cyan,     '',         '')
call s:HL('pythonEscape',                   s:red,     '',         '')
call s:HL('pythonSpaceError',               s:red,     '',         '')
call s:HL('pythonException',                s:red,     '',         '')
call s:HL('pythonExceptions',               s:red,     '',         '')
call s:HL('pythonDoctest',                  s:red,     '',         '')
call s:HL('pythonDoctestValue',             s:red,     '',         '')
call s:HL('pythonAsync',                    s:purple,     '',         '')

" Vim-Fugitive
call s:HL('diffAdded',                      s:green,    '',         '')
call s:HL('diffRemoved',                    s:red,      '',         '')

" Vim-Gittgutter
hi link GitGutterAdd    SignifySignAdd
hi link GitGutterChange SignifySignChange
hi link GitGutterDelete SignifySignDelete
call s:HL('GitGutterChangeDelete',          s:orange,   '',         '')

" Vim-Signify
call s:HL('SignifySignAdd',                 s:green,    '',         '')
call s:HL('SignifySignChange',              s:yellow,   '',         '')
call s:HL('SignifySignDelete',              s:red,      '',         '')

" Ctrlp

hi! link CtrlPMatch TODO
hi! link CtrlPNoEntries SpellBad
hi! link CtrlPPrtBase Comment
hi! link CtrlPPrtCursor TabLineSel
hi! link CtrlPLinePre JavaScriptReserved

call s:HL('CtrlPMode1', s:cyan, s:gray3, '')
call s:HL('CtrlPMode2', s:gray3, s:cyan, '')
call s:HL('CtrlPStats', s:gray5, s:gray2,'')
