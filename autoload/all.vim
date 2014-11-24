function! s:is_current_line_empty()
  return !len(getline('.'))
endfunction

function! all#inside()
  mark '
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
  mark '
  keepj norm! gg0vG$
endfunction
