" プラグインがインストールされるディレクトリ
let s:dein_dir = expand('~/.cache/dein')

" dein.vim 本体
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'


" dein.vim がなければ github から落としてくる ----------------------
if &runtimepath !~# '/dein.vim'
  if !isdirectory(s:dein_repo_dir)
    execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
  endif
  execute 'set runtimepath^=' . fnamemodify(s:dein_repo_dir, ':p')
endif
"--------------------------------------------------------------------


" 設定開始
if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)


  " プラグインリストを収めた TOML ファイル
  " 予め TOML ファイルを用意しておく
  let g:rc_dir    = expand("~/.config/nvim/")
  let s:toml      = g:rc_dir . '/dein.toml'
  let s:lazy_toml = g:rc_dir . '/dein_lazy.toml'

  " TOML を読み込み、キャッシュしておく
  call dein#load_toml(s:toml,      {'lazy': 0})
  call dein#load_toml(s:lazy_toml, {'lazy': 1})

  call dein#add('dart-lang/dart-vim-plugin')
  " 設定終了
  call dein#end()

  "カラースキームの設定
  filetype plugin indent on

endif

" もし、未インストールものものがあったらインストール
if dein#check_install()
  call dein#install()
endif


"  行数
set number

"=================
"filetype
"=================
filetype on
au BufNewFile,BufRead *.dart :set filetype=dart

set mouse=a

" for accelerated-jk
nmap j <Plug>(accelerated_jk_gj)
nmap k <Plug>(accelerated_jk_gk)


" insertモードから抜ける
inoremap <silent> jj <ESC>

"タブをスペースに
set tabstop=2
set shiftwidth=2
set expandtab
"スワップファイルを作らない
set noswapfile
set autoread "他で書き換えられたらautoloadする

"上16行を確保
set scrolloff=16

"カラースキーム
syntax on
" use 24-bit color
set termguicolors

if !exists('g:colors_name')
  let g:lightline.colorscheme = 'onedark'
  set background=dark
  colorscheme onedark
endif

" 矢印キーでの移動を禁ずる！
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" クリップボード共有
set clipboard+=unnamedplus
" 行末1文字までカーソルを移動できるようにする
set virtualedit=onemore
" ウィンドウの幅より長い行は折り返され、次の行に続けて表示される
set wrap

"文字のないところにカーソル移動できるようにする"
set virtualedit=block

" 構文チェックプラグイン ALE関係の設定
let g:ale_lint_on_enter = 1


"画面分割--------------------
nnoremap ss :sp<CR>
nnoremap sv :vs<CR>
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sh <C-w>h
nnoremap tt :tabe<CR>
"---------------------------

"alias色々 -------------------
" <Space>i でコードをインデント整形
nnoremap <Space>i gg=<S-g><C-o><C-o>zzk
"NERDTreeをctrl+tで開く
nnoremap <silent><C-t> :NERDTreeToggle<CR>

:command Ga Gwrite
:command Gs Gstatus
"------------------------------

" vim.fzfのショートカット追加
nnoremap ff :Files<CR>
nnoremap fg :GFiles<CR>
nnoremap fr :History<CR>
"------------------------------

set diffopt+=vertical
