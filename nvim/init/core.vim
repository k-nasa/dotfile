" ===========================================================
" core
" pluginマネージャ && pluginsの読み込み
" ===========================================================

" 設定開始
call plug#begin('~/.vim/plugged')

" ===========================================================
" core plugins
" これがないと悲しくなるやつ
" ===========================================================

Plug 'neovim/nvim-lspconfig'

Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'

"ファイルツリーのやつ
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" ファイラー
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Track the engine.
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'quangnguyen30192/cmp-nvim-ultisnips'

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"

" =====================================================
" カラースキーム
" =====================================================
Plug 'tomasr/molokai'
Plug 'joshdick/onedark.vim'
Plug 'chriskempson/base16-vim'
Plug 'wadackel/vim-dogrun'
Plug 'ghifarit53/tokyonight-vim'

" =====================================================
" neovimをすこしいい感じにするやつ
" TODO ここにプラグインを足すときは説明コメントをすること(忘れちゃうから)
" =====================================================

" vimでテストをかんたんに走らせるやつ
Plug 'vim-test/vim-test'

" 自動でカッコを付けてくれるやつ
Plug 'mattn/vim-lexiv'

" wakatimeを使ってコーディング時間を見る
" Plug 'wakatime/vim-wakatime'

" vimの行横に+や-で差分を表示してくれる．
Plug 'airblade/vim-gitgutter'

" :ToGithubでgithub上でコードが開ける
Plug 'tonchis/vim-to-github'

" コメントON/OFFを手軽に実行 ON/OFFはCtrl+-を二回
Plug 'tomtom/tcomment_vim'

" インデントを可視化
Plug 'Yggdroot/indentLine'

" j, k移動高速化
Plug 'rhysd/accelerated-jk'

" 検索終了後にハイライトを消す
Plug 'romainl/vim-cool'
let g:CoolTotalMatches = 1

" github copilot
Plug 'github/copilot.vim', { 'branch': 'release' }

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
" TODO 'for': '言語' を書いて適用範囲を制限すること
" =====================================================
" Rust -----------
Plug 'rust-lang/rust.vim', {'for': 'rust' }
let g:rustfmt_autosave = 1
let g:rustfmt_command = '$HOME/.cargo/bin/rustfmt'

" zig -----------
 Plug 'ziglang/zig.vim'

" ruby用 ---------
Plug 'fishbullet/deoplete-ruby', { 'for': 'ruby' }

" endを自動で入れてくれるやる
Plug 'tpope/vim-endwise', { 'for': 'ruby' }

" # show statusbar
set laststatus=2
" # hide --INSERT--
set noshowmode

call plug#end()
