" Vim color file
" Converted from Textmate theme Monokai Bright using Coloration v0.3.3 (http://github.com/sickill/coloration)

set background=dark
highlight clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "MonokaiBright"

hi Cursor ctermfg=235 ctermbg=231 cterm=NONE guifg=#272822 guibg=#f8f8f0 gui=NONE
hi Visual ctermfg=NONE ctermbg=130 cterm=NONE guifg=NONE guibg=#9d550f gui=NONE
hi CursorLine ctermfg=NONE ctermbg=237 cterm=NONE guifg=NONE guibg=#3c3d37 gui=NONE
hi CursorColumn ctermfg=NONE ctermbg=237 cterm=NONE guifg=NONE guibg=#3c3d37 gui=NONE
hi ColorColumn ctermfg=NONE ctermbg=237 cterm=NONE guifg=NONE guibg=#3c3d37 gui=NONE
hi LineNr ctermfg=102 ctermbg=237 cterm=NONE guifg=#90908a guibg=#3c3d37 gui=NONE
hi VertSplit ctermfg=241 ctermbg=241 cterm=NONE guifg=#64645e guibg=#64645e gui=NONE
hi MatchParen ctermfg=197 ctermbg=NONE cterm=underline guifg=#f92672 guibg=NONE gui=underline
hi StatusLine ctermfg=231 ctermbg=241 cterm=NONE guifg=#f8f8f2 guibg=#64645e gui=NONE
hi StatusLineNC ctermfg=231 ctermbg=241 cterm=NONE guifg=#f8f8f2 guibg=#64645e gui=NONE
hi Pmenu ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi PmenuSel ctermfg=NONE ctermbg=130 cterm=NONE guifg=NONE guibg=#9d550f gui=NONE
hi IncSearch ctermfg=235 ctermbg=186 cterm=NONE guifg=#272822 guibg=#e6db74 gui=NONE
hi Search ctermfg=NONE ctermbg=NONE cterm=underline guifg=NONE guibg=NONE gui=underline
hi Directory ctermfg=141 ctermbg=NONE cterm=NONE guifg=#ae81ff guibg=NONE gui=NONE
hi Folded ctermfg=95 ctermbg=235 cterm=NONE guifg=#75715e guibg=#272822 gui=NONE

hi Normal ctermfg=231 ctermbg=235 cterm=NONE guifg=#f8f8f2 guibg=#272822 gui=NONE
hi Boolean ctermfg=141 ctermbg=NONE cterm=NONE guifg=#ae81ff guibg=NONE gui=NONE
hi Character ctermfg=141 ctermbg=NONE cterm=NONE guifg=#ae81ff guibg=NONE gui=NONE
hi Comment ctermfg=95 ctermbg=NONE cterm=NONE guifg=#75715e guibg=NONE gui=NONE
hi Conditional ctermfg=197 ctermbg=NONE cterm=NONE guifg=#f92672 guibg=NONE gui=NONE
hi Constant ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi Define ctermfg=197 ctermbg=NONE cterm=NONE guifg=#f92672 guibg=NONE gui=NONE
hi DiffAdd ctermfg=231 ctermbg=64 cterm=NONE guifg=#f8f8f2 guibg=#46830c gui=NONE
hi DiffDelete ctermfg=88 ctermbg=NONE cterm=NONE guifg=#8b0807 guibg=NONE gui=NONE
hi DiffChange ctermfg=231 ctermbg=23 cterm=NONE guifg=#f8f8f2 guibg=#243955 gui=NONE
hi DiffText ctermfg=231 ctermbg=24 cterm=NONE guifg=#f8f8f2 guibg=#204a87 gui=NONE
hi ErrorMsg ctermfg=231 ctermbg=197 cterm=NONE guifg=#f8f8f0 guibg=#f92672 gui=NONE
hi WarningMsg ctermfg=231 ctermbg=197 cterm=NONE guifg=#f8f8f0 guibg=#f92672 gui=NONE
hi Float ctermfg=141 ctermbg=NONE cterm=NONE guifg=#ae81ff guibg=NONE gui=NONE
hi Function ctermfg=148 ctermbg=NONE cterm=NONE guifg=#a6e22e guibg=NONE gui=NONE
hi Identifier ctermfg=81 ctermbg=NONE cterm=NONE guifg=#66d9ef guibg=NONE gui=italic
hi Keyword ctermfg=197 ctermbg=NONE cterm=NONE guifg=#f92672 guibg=NONE gui=NONE
hi Label ctermfg=186 ctermbg=NONE cterm=NONE guifg=#e6db74 guibg=NONE gui=NONE
hi NonText ctermfg=59 ctermbg=236 cterm=NONE guifg=#3b3a32 guibg=#31322c gui=NONE
hi Number ctermfg=141 ctermbg=NONE cterm=NONE guifg=#ae81ff guibg=NONE gui=NONE
hi Operator ctermfg=197 ctermbg=NONE cterm=NONE guifg=#f92672 guibg=NONE gui=NONE
hi PreProc ctermfg=197 ctermbg=NONE cterm=NONE guifg=#f92672 guibg=NONE gui=NONE
hi Special ctermfg=231 ctermbg=NONE cterm=NONE guifg=#f8f8f2 guibg=NONE gui=NONE
hi SpecialKey ctermfg=59 ctermbg=237 cterm=NONE guifg=#3b3a32 guibg=#3c3d37 gui=NONE
hi Statement ctermfg=197 ctermbg=NONE cterm=NONE guifg=#f92672 guibg=NONE gui=NONE
hi StorageClass ctermfg=81 ctermbg=NONE cterm=NONE guifg=#66d9ef guibg=NONE gui=italic
hi String ctermfg=186 ctermbg=NONE cterm=NONE guifg=#e6db74 guibg=NONE gui=NONE
hi Tag ctermfg=197 ctermbg=NONE cterm=NONE guifg=#f92672 guibg=NONE gui=NONE
hi Title ctermfg=231 ctermbg=NONE cterm=NONE guifg=#f8f8f2 guibg=NONE gui=NONE
hi Todo ctermfg=95 ctermbg=NONE cterm=inverse guifg=#75715e guibg=NONE gui=inverse
hi Type ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi Underlined ctermfg=NONE ctermbg=NONE cterm=underline guifg=NONE guibg=NONE gui=underline
hi rubyClass ctermfg=197 ctermbg=NONE cterm=NONE guifg=#f92672 guibg=NONE gui=NONE
hi rubyFunction ctermfg=148 ctermbg=NONE cterm=NONE guifg=#a6e22e guibg=NONE gui=NONE
hi rubyInterpolationDelimiter ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubySymbol ctermfg=141 ctermbg=NONE cterm=NONE guifg=#ae81ff guibg=NONE gui=NONE
hi rubyConstant ctermfg=81 ctermbg=NONE cterm=NONE guifg=#66d9ef guibg=NONE gui=italic
hi rubyStringDelimiter ctermfg=186 ctermbg=NONE cterm=NONE guifg=#e6db74 guibg=NONE gui=NONE
hi rubyBlockParameter ctermfg=208 ctermbg=NONE cterm=NONE guifg=#fd971f guibg=NONE gui=italic
hi rubyInstanceVariable ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubyInclude ctermfg=197 ctermbg=NONE cterm=NONE guifg=#f92672 guibg=NONE gui=NONE
hi rubyGlobalVariable ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubyRegexp ctermfg=186 ctermbg=NONE cterm=NONE guifg=#e6db74 guibg=NONE gui=NONE
hi rubyRegexpDelimiter ctermfg=186 ctermbg=NONE cterm=NONE guifg=#e6db74 guibg=NONE gui=NONE
hi rubyEscape ctermfg=141 ctermbg=NONE cterm=NONE guifg=#ae81ff guibg=NONE gui=NONE
hi rubyControl ctermfg=197 ctermbg=NONE cterm=NONE guifg=#f92672 guibg=NONE gui=NONE
hi rubyClassVariable ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubyOperator ctermfg=197 ctermbg=NONE cterm=NONE guifg=#f92672 guibg=NONE gui=NONE
hi rubyException ctermfg=197 ctermbg=NONE cterm=NONE guifg=#f92672 guibg=NONE gui=NONE
hi rubyPseudoVariable ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubyRailsUserClass ctermfg=81 ctermbg=NONE cterm=NONE guifg=#66d9ef guibg=NONE gui=italic
hi rubyRailsARAssociationMethod ctermfg=81 ctermbg=NONE cterm=NONE guifg=#66d9ef guibg=NONE gui=NONE
hi rubyRailsARMethod ctermfg=81 ctermbg=NONE cterm=NONE guifg=#66d9ef guibg=NONE gui=NONE
hi rubyRailsRenderMethod ctermfg=81 ctermbg=NONE cterm=NONE guifg=#66d9ef guibg=NONE gui=NONE
hi rubyRailsMethod ctermfg=81 ctermbg=NONE cterm=NONE guifg=#66d9ef guibg=NONE gui=NONE
hi erubyDelimiter ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi erubyComment ctermfg=95 ctermbg=NONE cterm=NONE guifg=#75715e guibg=NONE gui=NONE
hi erubyRailsMethod ctermfg=81 ctermbg=NONE cterm=NONE guifg=#66d9ef guibg=NONE gui=NONE
hi htmlTag ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi htmlEndTag ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi htmlTagName ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi htmlArg ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi htmlSpecialChar ctermfg=141 ctermbg=NONE cterm=NONE guifg=#ae81ff guibg=NONE gui=NONE
hi javaScriptFunction ctermfg=81 ctermbg=NONE cterm=NONE guifg=#66d9ef guibg=NONE gui=italic
hi javaScriptRailsFunction ctermfg=81 ctermbg=NONE cterm=NONE guifg=#66d9ef guibg=NONE gui=NONE
hi javaScriptBraces ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi yamlKey ctermfg=197 ctermbg=NONE cterm=NONE guifg=#f92672 guibg=NONE gui=NONE
hi yamlAnchor ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi yamlAlias ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi yamlDocumentHeader ctermfg=186 ctermbg=NONE cterm=NONE guifg=#e6db74 guibg=NONE gui=NONE
hi cssURL ctermfg=208 ctermbg=NONE cterm=NONE guifg=#fd971f guibg=NONE gui=italic
hi cssFunctionName ctermfg=81 ctermbg=NONE cterm=NONE guifg=#66d9ef guibg=NONE gui=NONE
hi cssColor ctermfg=141 ctermbg=NONE cterm=NONE guifg=#ae81ff guibg=NONE gui=NONE
hi cssPseudoClassId ctermfg=148 ctermbg=NONE cterm=NONE guifg=#a6e22e guibg=NONE gui=NONE
hi cssClassName ctermfg=148 ctermbg=NONE cterm=NONE guifg=#a6e22e guibg=NONE gui=NONE
hi cssValueLength ctermfg=141 ctermbg=NONE cterm=NONE guifg=#ae81ff guibg=NONE gui=NONE
hi cssCommonAttr ctermfg=81 ctermbg=NONE cterm=NONE guifg=#66d9ef guibg=NONE gui=NONE
hi cssBraces ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE

" Modifications below
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
command -nargs=* Hi hi! def link <args>

hi YELLOW ctermfg=186 ctermbg=NONE cterm=NONE guifg=#e6db74 gui=NONE
hi VIOLET ctermfg=141 ctermbg=NONE cterm=NONE guifg=#ae81ff gui=NONE
hi BLUE ctermfg=81 ctermbg=NONE cterm=NONE guifg=#66d9ef gui=NONE
hi GREEN ctermfg=148 ctermbg=NONE cterm=NONE guifg=#a6e22e gui=NONE
hi RED ctermfg=197 ctermbg=NONE cterm=NONE guifg=#f92672 gui=NONE
hi ORANGE ctermfg=130 ctermbg=NONE cterm=NONE guifg=#fd9720 gui=italic
hi WHITE ctermfg=231 ctermbg=235 cterm=NONE guifg=#CCCCCC guibg=#272822 gui=NONE

" hi Normal ctermfg=231 ctermbg=235 cterm=NONE guifg=#eeeeee guibg=#272822 gui=NONE
Hi Normal WHITE

hi Cursor ctermfg=148 ctermbg=NONE cterm=NONE guifg=#39FF14 guibg=black gui=inverse
hi iCursor ctermfg=235 ctermbg=231 cterm=NONE guifg=#272822 guibg=#f8f8f0 gui=NONE

hi CursorLine ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE gui=none
hi CursorLineNr ctermfg=102 ctermbg=237 guifg=#888888 guibg=#333435 gui=none
hi CursorLineNr guibg=#414243 gui=NONE guifg=#888888
hi Comment ctermfg=102 ctermbg=NONE cterm=NONE guifg=#75715e guibg=NONE gui=italic
hi LineNr guifg=#888888 guibg=NONE ctermbg=NONE
hi StatusLine guibg=#414243 gui=NONE guifg=#E6E1DC
hi StatusLineNC guibg=#414243 gui=NONE
hi NonText ctermfg=102 ctermbg=NONE cterm=NONE guifg=#444444 guibg=NONE gui=NONE
hi SpecialKey ctermfg=59 ctermbg=NONE cterm=NONE guifg=#3b3a32 guibg=NONE gui=NONE
hi Question gui=NONE
hi MoreMsg gui=NONE
hi ModeMsg gui=NONE
hi FoldColumn ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi FoldMarker guifg=#888888 guibg=NONE ctermbg=NONE gui=inverse

hi Visual ctermfg=231 ctermbg=130 cterm=NONE guifg=#f8f8f2 guibg=#9d550f gui=NONE
hi Search ctermbg=white ctermfg=235 guibg=#cccccc guifg=#2b2b2b gui=NONE
" hi Search ctermfg=231 ctermbg=235 cterm=NONE guifg=gray guibg=#272822 gui=inverse
hi Error ctermfg=231 ctermbg=197 cterm=NONE guifg=#f8f8f0 guibg=#f92672 gui=NONE
hi Todo ctermbg=235 guibg=#2B2B2B ctermfg=81 guifg=#66D9EF
hi MatchParen ctermfg=102 ctermbg=237 cterm=NONE guifg=#90908a guibg=#3c3d37 gui=inverse,bold
hi Todo ctermfg=235 ctermbg=186 cterm=NONE guifg=#272822 guibg=#e6db74 gui=NONE

hi Pmenu ctermbg=white ctermfg=235 guibg=white guifg=#2b2b2b
hi PmenuSel ctermfg=235 ctermbg=81 guibg=#97b5dc guifg=#2B2B2B
hi VertSplit guibg=#414243 gui=NONE guifg=#414243

hi SignColumn ctermbg=NONE guibg=NONE
hi SyntasticWarningSign ctermfg=186 ctermbg=NONE cterm=NONE guifg=#e6db74 guibg=NONE gui=inverse

Hi Type BLUE

hi DiffText ctermfg=148 ctermbg=NONE cterm=inverse guifg=#a6e22e guibg=NONE gui=inverse
hi DiffChange ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
Hi DiffAdd GREEN
Hi DiffDelete RED

" hi Folded guifg=#888888 guibg=NONE ctermbg=NONE gui=NONE
hi Folded guifg=#999999 guibg=NONE ctermbg=NONE gui=italic

Hi jsFunctionKey GREEN
Hi jsFuncArgs ORANGE
Hi jsFuncCall BLUE
Hi jsSpecial VIOLET

Hi htmlTag WHITE
Hi htmlTagName RED
Hi htmlTagN RED
Hi htmlEndTag WHITE
Hi htmlArg GREEN

Hi xmlTag WHITE
Hi xmlTagName RED
Hi xmlEndTag RED
Hi xmlEndTagName RED
Hi xmlAttrib GREEN

Hi cssTagName GREEN
Hi cssAttr BLUE
Hi cssSelectorOp RED

Hi lessNestedSelector GREEN
Hi lessClass GREEN

Hi CtrlPMode1 BLUE
Hi CtrlPMatch YELLOW
Hi CtrlPNoEntries RED

Hi gitcommitDiscardedType RED
Hi gitcommitSelectedType GREEN
hi gitcommitHeader ctermfg=102 ctermbg=NONE cterm=NONE guifg=#75715e guibg=NONE gui=NONE

Hi qfFileName YELLOW
Hi mustacheHelpers VIOLET
Hi mustacheConditionals VIOLET
Hi mustacheString WHITE

hi SpellBad ctermfg=231 ctermbg=197 cterm=NONE guifg=#f8f8f0 guibg=#f92672 gui=NONE
hi SpellCap ctermfg=231 ctermbg=197 cterm=NONE guifg=#f8f8f0 guibg=#f92672 gui=NONE

delcommand Hi

match Todo /FIXME\|TODO\|fixme\|todo/
