"  行数
set number

"ノーマルモード時にコロンとセミコロンを入れ替える
nnoremap ; :
nnoremap : ;

set mouse=a

imap >> \|><Space>

" for accelerated-jk
nmap j <Plug>(accelerated_jk_gj)
nmap k <Plug>(accelerated_jk_gk)


" insertモードから抜ける
inoremap <silent> jj <ESC>

inoremap <silent><C-y><C-y> <C-y>,

" " コンマの後に自動的にスペースを挿入
" inoremap , ,<Space>

"タブをスペースに
set tabstop=2
set shiftwidth=2
set expandtab
"スワップファイルを作らない
set noswapfile

" for deoplete.vim
" 一つ目の候補を選択状態にする
set completeopt+=noinsert
"補完を使う
let g:deoplete#enable_at_startup = 1
"htmlのタグ閉じ
let g:loadedInsertTag = 1

set formatprg=stylish-haskell

" ".jsxだけではなく、.jsファイルにもシンタックスを有効
" let g:jsx_ext_required = 1

"ダグジャンプ用設定 --------------
set fileformats=unix,dos,mac
set fileencodings=utf-8,sjis
" tagsジャンプの時に複数ある時は一覧表示
nnoremap <C-]> g<C-]>

nnoremap <C-h> :vsp<CR> :exe("tjump ".expand('<cword>'))<CR>
nnoremap <C-k> :split<CR> :exe("tjump ".expand('<cword>'))<CR>
"----------------------------------

"上８行を確保
set scrolloff=8

"カラースキーム
syntax on
set t_Co=256
colorscheme lucius
set background=dark

noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>


"余分な空白削除
autocmd BufWritePre * :FixWhitespace

" 対応括弧の表示秒数を3秒にする
set matchtime=3
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
"タブ移動
nnoremap <C-n> gt
nnoremap <C-p> gT

" <Space>i でコードをインデント整形
nnoremap <Space>i gg=<S-g><C-o><C-o>zzk
"NERDTreeをctrl+tで開く
nnoremap <silent><C-t> :NERDTreeToggle<CR>

:command Ga Gwrite
:command Gs Gstatus
"------------------------------


"unit.vimの設定 ------------------------------------------------
noremap ff :Unite -buffer-name=file file<CR> " ファイル一覧
noremap fr :Unite file_mru<CR> " 最近使ったファイル一覧

"unit.vim-railsの設定
noremap rff :Unite rails/
noremap rm :Unite rails/model<cr>
noremap rc :Unite rails/controller<cr>
noremap rv :Unite rails/view<cr>
noremap rr :Unite rails/route<cr>
"---------------------------------------------------------------


"markdown
nnoremap <C-P> :PrevimOpen<CR>

set diffopt+=vertical

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

  " call dein#add('slim-template/vim-slim')
  " 設定終了
  call dein#end()

  "カラースキームの設定
  filetype plugin indent on

endif

" もし、未インストールものものがあったらインストール
if dein#check_install()
  call dein#install()
endif
