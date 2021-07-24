runtime init/core.vim
runtime init/keybaind.vim
runtime init/colortheme.vim
runtime lsp.vim

"  行数
set number

filetype on
set mouse=a
" for accelerated-jk
nmap j <Plug>(accelerated_jk_gj)
nmap k <Plug>(accelerated_jk_gk)

"タブをスペースに
set tabstop=2
set shiftwidth=2
set expandtab

"スワップファイルを作らない
set noswapfile
"他で書き換えられたらautoloadする
set autoread
"上16行を確保
set scrolloff=16
" クリップボード共有
set clipboard+=unnamedplus
" 行末1文字までカーソルを移動できるようにする
set virtualedit=onemore
" ウィンドウの幅より長い行は折り返され、次の行に続けて表示される
set wrap
"文字のないところにカーソル移動できるようにする"
set virtualedit=block
"横にdiffを出すやつ
set diffopt+=vertical

" 言語設定 これがないとclipbordに日本語文字列を格納すると文字化けしちゃう
lang en_US.UTF-8

"余分な空白削除
autocmd BufWritePre * :FixWhitespace
autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescript.tsx
let NERDTreeShowHidden=1

" Use <Tab> and <S-Tab> to navigate through popup menu
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Set completeopt to have a better completion experience
set completeopt=menuone,noselect

" Avoid showing message extra message when using completion
set shortmess+=c

" 補完が効くようになるらしい。とりあえず入れてみるぞい
autocmd FileType go setlocal omnifunc=v:lua.vim.lsp.omnifunc

let g:compe = {}
let g:compe.enabled = v:true
let g:compe.autocomplete = v:true
let g:compe.debug = v:false
let g:compe.min_length = 1
let g:compe.preselect = 'enable'
let g:compe.throttle_time = 80
let g:compe.source_timeout = 200
let g:compe.resolve_timeout = 800
let g:compe.incomplete_delay = 400
let g:compe.max_abbr_width = 100
let g:compe.max_kind_width = 100
let g:compe.max_menu_width = 100
let g:compe.documentation = v:true

let g:compe.source = {}
let g:compe.source.path = v:true
let g:compe.source.buffer = v:true
let g:compe.source.calc = v:true
let g:compe.source.nvim_lsp = v:true
let g:compe.source.nvim_lua = v:true
let g:compe.source.vsnip = v:true
let g:compe.source.ultisnips = v:true
let g:compe.source.luasnip = v:true
let g:compe.source.emoji = v:true
