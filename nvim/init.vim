runtime init/core.vim
runtime init/keybaind.vim
runtime init/colortheme.vim

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

lua << EOF
    local on_attach = function (client, bufnr)
        vim.api.nvim_buf_set_keymap(bufnr, 'n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', {noremap = true, silent = true})
        vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', {noremap = true, silent = true})
        vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', {noremap = true, silent = true})
        require('completion').on_attach(client)
    end

    require'lspconfig'.rust_analyzer.setup({on_attach = on_attach})
    require'lspconfig'.solargraph.setup{}
    require'lspconfig'.gopls.setup{}
EOF

" Use <Tab> and <S-Tab> to navigate through popup menu
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Set completeopt to have a better completion experience
set completeopt=menuone,noinsert,noselect

" Avoid showing message extra message when using completion
set shortmess+=c
