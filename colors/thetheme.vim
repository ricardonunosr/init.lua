set bg=dark
hi clear
if exists("syntax_on")
	syntax reset
endif

let colors_name = "thetheme"

syntax match _Operator "[-+&|<>=!~.:*%&^?]"
hi link _Operator Operator

syntax match dark_Operator "(\|)\|,\|;"
hi dark_Operator guifg=#6f583e

hi Normal		guifg=#b99468 guibg=#222425						ctermfg=gray ctermbg=black
hi ErrorMsg		guifg=#ffffff guibg=#287eff						ctermfg=white ctermbg=lightblue
hi Visual		guifg=#1e1f20 guibg=fg		gui=reverse				ctermfg=lightblue ctermbg=fg cterm=reverse
hi VisualNOS	guifg=#1e1f20 guibg=fg		gui=reverse,underline	ctermfg=lightblue ctermbg=fg cterm=reverse,underline
hi Todo			guifg=#dc7575 guibg=#222425						ctermfg=red	ctermbg=darkblue
hi Search		guifg=#90fff0 guibg=#1e1f20						ctermfg=white ctermbg=darkblue cterm=underline term=underline
hi IncSearch	guifg=#b0ffff guibg=#1e1f20							ctermfg=darkblue ctermbg=gray

hi SpecialKey		guifg=cyan			ctermfg=darkcyan
hi Directory		guifg=cyan			ctermfg=cyan
hi Title			guifg=magenta gui=none ctermfg=magenta cterm=bold
hi WarningMsg		guifg=red			ctermfg=red
hi WildMenu			guifg=yellow guibg=black ctermfg=yellow ctermbg=black cterm=none term=none
hi ModeMsg			guifg=#22cce2		ctermfg=lightblue
hi MoreMsg			ctermfg=darkgreen	ctermfg=darkgreen
hi Question			guifg=green gui=none ctermfg=green cterm=none
hi NonText			guifg=#0030ff		ctermfg=darkblue

hi StatusLine	guifg=blue guibg=darkgray gui=none		ctermfg=blue ctermbg=gray term=none cterm=none
hi StatusLineNC	guifg=black guibg=darkgray gui=none		ctermfg=black ctermbg=gray term=none cterm=none
hi VertSplit	guifg=#404040 guibg=#404040 gui=none		ctermfg=black ctermbg=gray term=none cterm=none

hi Folded	guifg=#808080 guibg=#000040			ctermfg=darkgrey ctermbg=black cterm=bold term=bold
hi FoldColumn	guifg=#808080 guibg=#000040			ctermfg=darkgrey ctermbg=black cterm=bold term=bold
hi LineNr	guifg=#404040			ctermfg=green cterm=none

hi DiffAdd	guibg=darkblue	ctermbg=darkblue term=none cterm=none
hi DiffChange	guibg=darkmagenta ctermbg=magenta cterm=none
hi DiffDelete	ctermfg=blue ctermbg=cyan gui=bold guifg=Blue guibg=DarkCyan
hi DiffText	cterm=bold ctermbg=red gui=bold guibg=Red

hi Cursor	guifg=#00EE00 guibg=#00EE00 ctermfg=black ctermbg=yellow
hi lCursor	guifg=#00EE00 guibg=#00EE00 ctermfg=black ctermbg=white

hi Comment	guifg=#9ba290 ctermfg=darkred
hi Constant	ctermfg=magenta guifg=#d67d4e cterm=none
hi String  guifg=#ffa900
hi Float guifg=#ffa900
hi Number guifg=#ffa900
hi Boolean guifg=#ffa900
hi Special	ctermfg=brown guifg=Orange cterm=none gui=none
hi Identifier	ctermfg=cyan guifg=#b99468 cterm=none
hi Function guifg=#d67d4e
hi Keyword guifg=#f0c674
hi Operator guifg=#dc7575
hi Statement	ctermfg=yellow cterm=none guifg=#f0c674 gui=none
hi PreProc	ctermfg=magenta guifg=#dc7575 gui=none cterm=none
hi type		ctermfg=green guifg=#f0c674 gui=none cterm=none
hi Underlined	cterm=underline term=underline
hi Ignore	guifg=bg ctermfg=bg
" suggested by tigmoid, 2008 Jul 18
hi Pmenu guifg=#c0c0c0 guibg=#404080
hi PmenuSel guifg=#c0c0c0 guibg=#2050d0
hi PmenuSbar guifg=blue guibg=darkgray
hi PmenuThumb guifg=#c0c0c0
