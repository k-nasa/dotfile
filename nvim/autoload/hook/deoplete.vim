function! hook#deoplete#load() abort
  let g:deoplete#enable_at_startup = 1

  " 一つ目の候補を選択状態にする
  set completeopt+=noinsert

  let g:deoplete#auto_complete_delay = 0
  let g:deoplete#auto_complete_start_length = 1
  let g:deoplete#enable_camel_case = 0
  let g:deoplete#enable_ignore_case = 0
  let g:deoplete#enable_refresh_always = 0
  let g:deoplete#enable_smart_case = 1
  let g:deoplete#file#enable_buffer_path = 1
  let g:deoplete#max_list = 10000
endfunction
