function! hook#lightline#load() abort
  let g:lightline = {
        \ 'colorscheme': 'wombat',
        \ 'active': {
        \ 'left': [ ['mode', 'paste'], ['readonly', 'filepath', 'modified'] ]
        \ },
        \ 'component_function':{
        \ 'filepath': 'FilePath'
        \ }
        \ }

  function! FilePath()
    if winwidth(0) > 90
      return expand("%:s")
    else
      return expand("%:t")
    endif
  endfunction
endfunction
