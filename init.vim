call plug#begin()
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'

Plug 'kyazdani42/nvim-web-devicons' " for file icons
Plug 'kyazdani42/nvim-tree.lua'

Plug 'mhartington/formatter.nvim'

" For vsnip users.
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'

call plug#end()
" 基础设置
lua require('lsp')
lua require('tree')
lua require('format')
"
let mapleader = " "
let nmapleader = " "
"显示行号"
set number
"语法高亮"
syntax on
"显示光标所在行"
set cursorline
"显示相对距离"
set relativenumber
"搜索结果高亮显示"
set hlsearch
set ts=4
set shiftwidth=4
" 按下 tab 自动输入 4 个空格
set expandtab
set wrap
set showcmd
set wildmenu
set nocompatible
"开启实时搜索
set incsearch
set conceallevel=0
" tab 自动展开为空格
set expandtab
set encoding=utf-8
set tags+=~/.vim/systags
filetype plugin indent on

"insert 模式的映射"
"自动匹配打括号
inoremap {<CR> {<ESC>o}<ESC>ko
inoremap (<CR> (<ESC>o)<ESC>ko
inoremap [<CR> [<ESC>o]<ESC>ko
inoremap "<CR> "<ESC>o"<ESC>ko
"normal 模式的映射"
nnoremap <leader>r :source $MYVIMRC<CR>
nnoremap <C-j> :belowright terminal<CR>
"esc 关闭搜索高亮
nnoremap <leader>c :nohlsearch<CR><esc>
" 格式化
nnoremap <silent> <leader>f :Format<CR>
