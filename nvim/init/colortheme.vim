" ===========================================================
" colorscheme
" カラースキーム系の設定
" ===========================================================

"カラースキーム
syntax on
" use 24-bit color
set termguicolors

if !exists('g:colors_name')
  let g:lightline.colorscheme = 'dogrun'
  set background=dark
  colorscheme dogrun
endif

