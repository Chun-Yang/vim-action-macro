" vim-action-macro
" Maintainer:   Chun Yang <http://github.com/Chun-Yang>
" Version:      1.0

if exists("g:loaded_vim_action_macro ") || &cp || v:version < 700
  finish
endif
let g:loaded_vim_action_macro = 1

function! s:macro(mode) abort
  echom 'RUNING'
  if a:mode == 'V' || a:mode == ''
    silent execute "'<,'>normal @q"
  else
    silent execute "'[,']normal @q"
  endif
endfunction

vnoremap <silent> <Plug>ActionMacroVisual :<C-U>call <SID>macro(visualmode())<CR>
nnoremap <silent> <Plug>ActionMacro :<C-U>set opfunc=<SID>macro<CR>g@

vmap gm <Plug>ActionMacroVisual
nmap gm <Plug>ActionMacro
nnoremap gmm @q
