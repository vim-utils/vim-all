" ============================================================================
" File: all.vim
" Author: Bruno Sutic
" Version: 0.0.1
" WebPage: https://github.com/bruno-/vim-all
" ============================================================================

if exists('g:loaded_all') && g:loaded_all
  finish
endif
let g:loaded_all = 1

let s:save_cpo = &cpo
set cpo&vim

function! s:is_current_line_empty()
  return !len(getline('.'))
endfunction

function! all#inside()
  keepj norm! gg0
  if s:is_current_line_empty()
    call search('.')
    keepj norm! 0
  endif
  keepj norm! vGg_
  if s:is_current_line_empty()
    call search('.', 'b')
    keepj norm! g_
  endif
endfunction

function! all#around()
  keepj norm! gg0vG$
endfunction

onoremap <silent> <Plug>(inside_all) :<C-U>call all#inside()<CR>
xnoremap <silent> <Plug>(inside_all) :<C-U>call all#inside()<CR>
onoremap <silent> <Plug>(around_all) :<C-U>call all#around()<CR>
xnoremap <silent> <Plug>(around_all) :<C-U>call all#around()<CR>

if get(g:, 'all_default_mappings', 1)
  omap <silent> i<CR> <Plug>(inside_all)
  xmap <silent> i<CR> <Plug>(inside_all)
  omap <silent> a<CR> <Plug>(around_all)
  xmap <silent> a<CR> <Plug>(around_all)
  omap <silent> <CR> <Plug>(around_all)
  xmap <silent> <CR> <Plug>(around_all)
endif

let &cpo = s:save_cpo
unlet s:save_cpo
