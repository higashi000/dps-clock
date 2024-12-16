function clock#winOpen(expedition) abort
  let buf = nvim_create_buf(v:false, v:true)
  call nvim_buf_set_lines(buf, 0, -1, v:true, ["遠征オワタ", a:expedition])
  let opts = {'relative': 'cursor', 'width': 20, 'height': 2, 'col': 0, 
    \ 'row': 0, 'anchor': 'NW', 'style': 'minimal'}
  let s:winId = nvim_open_win(buf, 0, opts)
  call nvim_set_option_value('winhl', 'Normal:MyHighlight', {'win': s:winId})

  return s:winId
endfunction

function clock#winClose(winId) abort
  call nvim_win_close(a:winId, v:true)
endfunction
