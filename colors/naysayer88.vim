set background=dark

highlight clear
if exists("syntax_on")
	syntax reset
endif

let s:black = "#000000"
let s:gray = "#888888"
let s:light_gray = "#878787"

let s:comment = "#31B72C"
let s:text = "#d6b48b"
let s:string = "#2ca198"
let s:background = "#042327"
let s:overlay = "#0a4e57"
let s:ruler = "#053036"
let s:some = "#875f5f"
let s:some2 = "#dfaf87"
let s:muted = "#6e6a86"

let g:colors_name="naysayer88_mine"

let g:naysayer_underline = get(g:, "naysayer_underline", 1)
let s:underline = (g:naysayer_underline == 0) ? "NONE," : "underline,"

function! s:hi(group, guifg, guibg, ctermfg, ctermbg, attr, guisp)
  let cmd = ""
  if a:guifg != ""
    let cmd = cmd . " guifg=" . a:guifg
  endif
  if a:guibg != ""
    let cmd = cmd . " guibg=" . a:guibg
  endif
  if a:ctermfg != ""
    let cmd = cmd . " ctermfg=" . a:ctermfg
  endif
  if a:ctermbg != ""
    let cmd = cmd . " ctermbg=" . a:ctermbg
  endif
  if a:attr != ""
    let cmd = cmd . " gui=" . a:attr . " cterm=" . substitute(a:attr, "undercurl", s:underline, "")
  endif
  if a:guisp != ""
    let cmd = cmd . " guisp=" . a:guisp
  endif
  if cmd != ""
    exec "hi " . a:group . cmd
  endif
endfunction

"+===============+
"+ UI Components +
"+===============+
"+--- Attributes ---+
call s:hi("Bold", "", "", "", "", "", "")
call s:hi("italic", "", "", "", "", "", "")
call s:hi("underline", "", "", "", "", "", "")

"+--- Editor ---+
call s:hi("ColorColumn", "", s:ruler, "NONE", "", "", "")
call s:hi("Cursor", s:black, s:text, "", "NONE", "", "")
"  call s:hi("CursorLine", "", s:black, "NONE", s:nord1_term, "NONE", "")
"  call s:hi("Error", s:nord4_gui, s:nord11_gui, "", s:nord11_term, "", "")
"  call s:hi("iCursor", s:nord0_gui, s:nord4_gui, "", "NONE", "", "")
call s:hi("LineNr", s:overlay, "NONE", "", "NONE", "", "")
"  call s:hi("MatchParen", s:nord8_gui, s:nord3_gui, s:nord8_term, s:nord3_term, "", "")
"  call s:hi("NonText", s:nord2_gui, "", s:nord3_term, "", "", "")
"  call s:hi("Normal", s:nord4_gui, s:nord0_gui, "NONE", "NONE", "", "")
call s:hi("Pmenu", s:text, s:background, "NONE", "NONE", "NONE", "")
call s:hi("PmenuSbar", s:some, s:some2, "NONE", "", "", "")
call s:hi("PmenuSel", s:some2, s:some, "", "", "", "")
call s:hi("PmenuThumb", s:text, s:gray, "NONE", "", "", "")
"  call s:hi("SpecialKey", s:nord3_gui, "", s:nord3_term, "", "", "")
"  call s:hi("SpellBad", s:nord11_gui, s:nord0_gui, s:nord11_term, "NONE", "undercurl", s:nord11_gui)
"  call s:hi("SpellCap", s:nord13_gui, s:nord0_gui, s:nord13_term, "NONE", "undercurl", s:nord13_gui)
"  call s:hi("SpellLocal", s:nord5_gui, s:nord0_gui, s:nord5_term, "NONE", "undercurl", s:nord5_gui)
"  call s:hi("SpellRare", s:nord6_gui, s:nord0_gui, s:nord6_term, "NONE", "undercurl", s:nord6_gui)
call s:hi("Visual", "", s:text, "", "", "", "")
"  call s:hi("VisualNOS", "", s:nord2_gui, "", s:nord1_term, "", "")

if has('nvim')
	"+--- Gutter ---+
	call s:hi("CursorColumn", "", s:background, "NONE", "", "", "")
	call s:hi("CursorLineNr", s:background, s:background, "NONE","", "NONE", "")
	call s:hi("Folded", s:background, s:background, "", "", "", "")
	call s:hi("FoldColumn", s:background, s:some, "", "NONE", "", "")
	call s:hi("SignColumn", s:background, s:background, "", "NONE", "", "")
endif

call s:hi("Default", s:text, s:background, "NONE", "", "", "")
call s:hi("Normal", s:text, s:background, "NONE", "", "", "")
call s:hi("Comment", s:comment, "", "", "", "", "")
call s:hi("Statement", "#ffffff", "", "", "", "", "")
call s:hi("Comment", s:comment, "", "", "", "", "")
call s:hi("String", s:string, "", "", "", "", "")
call s:hi("Number", "#70c5bf", "", "", "", "", "")
call s:hi("PreProc", "#9DE3C0", "", "", "", "", "")
call s:hi("SpecialComment", "#87875f", "", "", "", "", "")
call s:hi("Underlined", "#af5f5f", "", "", "", "", "")

highlight! link Character Number
highlight! link Boolean Number
highlight! link Float Number
highlight! link Identifier Default
highlight! link Operator Default
highlight! link Special Default
highlight! link Title Default
highlight! link Constant Statement
highlight! link Type PreProc
highlight! link SpecialChar String
highlight! link Todo Comment