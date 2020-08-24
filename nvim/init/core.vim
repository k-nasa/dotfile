" ===========================================================
" core
" pluginマネージャ && pluginsの読み込み
" ===========================================================

" 設定開始
call plug#begin('~/.vim/plugged')

" TODO プラグイン読み込み用のファイルを作っても良いかも
" ===========================================================
" core plugins
" これがないと悲しくなるやつ
" ===========================================================

" おなじみcocちゃん
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
call hook#coc#load() " FIXME ここうまい感じvim-plugでできそう(たぶん)

"ファイルツリーのやつ
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" ファイラー
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'

" Track the engine.
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" =====================================================
" カラースキーム
" =====================================================
Plug 'tomasr/molokai'
Plug 'joshdick/onedark.vim'
Plug 'chriskempson/base16-vim'
Plug 'wadackel/vim-dogrun'

" =====================================================
" neovimをすこしいい感じにするやつ
" TODO ここにプラグインを足すときは説明コメントをすること(忘れちゃうから)
" =====================================================

" 自動でカッコを付けてくれるやつ
Plug 'mattn/vim-lexiv'

" wakatimeを使ってコーディング時間を見る
Plug 'wakatime/vim-wakatime'

" vimの行横に+や-で差分を表示してくれる．
Plug 'airblade/vim-gitgutter'

Plug 'hoshinotsuyoshi/vim-to-github'

" コメントON/OFFを手軽に実行 ON/OFFはCtrl+-を二回
Plug 'tomtom/tcomment_vim'

" インデントを可視化
Plug 'Yggdroot/indentLine'

" j, k移動高速化
Plug 'rhysd/accelerated-jk'

" 検索終了後にハイライトを消す
Plug 'romainl/vim-cool'
let g:CoolTotalMatches = 1

" vim起動画面を変更する
Plug 'mhinz/vim-startify'
let g:startify_custom_header = [
      \ 'config by nasa <https://github.com/k-nasa/dotfile>',
      \ ]


" 下のラインをカスタマイズするやつ
Plug 'itchyny/lightline.vim',
call hook#lightline#load()

" 行末の半角スペースを可視化FixWhitespaceで削除
Plug 'bronson/vim-trailing-whitespace'

" =====================================================
" 言語ごとのプラグイン
" シンタックスハイライト、Linter等
" TODO for = '言語' を書いて適用範囲を制限すること
" =====================================================
" Rust -----------
Plug 'rust-lang/rust.vim', {'for': 'rust' }
let g:rustfmt_autosave = 1
let g:rustfmt_command = '$HOME/.cargo/bin/rustfmt'

" ruby用 ---------
Plug 'fishbullet/deoplete-ruby', { 'for': 'ruby' }

" endを自動で入れてくれるやる
Plug 'tpope/vim-endwise', { 'for': 'ruby' }

" golang用 --------------------
Plug  'fatih/vim-go', { 'for': 'go' }
let g:go_fmt_command = "goimports"

let g:go_def_mapping_enabled = 0
let g:go_doc_keywordprg_enabled = 0

" # show statusbar
set laststatus=2
" # hide --INSERT--
set noshowmode

call plug#end()
