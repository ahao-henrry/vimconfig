set nocompatible             "必须
filetype off                "必须
" 设置路径
set rtp+=/home/ahao/.vim/bundle/Vundle.vim
call vundle#begin()

" 所有的插件必须在begin()和end()之间
" 插件安装工具
Plugin 'VundleVim/Vundle.vim'
" 自动补全工具
Plugin 'Valloric/YouCompleteMe'
" solarized主题
Plugin 'altercation/vim-colors-solarized'

call vundle#end()           " 必须 
filetype plugin indent on   " 必须


set nu
set showmode
set ruler
set autoindent

" 将选中文本复制到系统剪切版
vnoremap <Leader>y "+y
" 将系统剪切版复制到vim
nmap <Leader>p "+p

" 开启语法高亮
syntax enable
syntax on

" 代码折叠
set foldmethod=indent
set foldlevel=99
" 使用空格代替za
nnoremap <space> za 

" 代码缩进PEP8标准
au BufNewFile,BufRead *.py
\ set tabstop=4 |
\ set softtabstop=4 |
\ set shiftwidth=4 |
\ set textwidth=79 |
\ set expandtab |
\ set autoindent |
\ set fileformat=unix
" 其他文件缩进
au BufNewFile,BufRead *.js, *.html, *.css
\ set tabstop=2 |
\ set softtabstop=2 |
\ set shiftwidth=2

" 提示不必要的空白字符
au BufRead,BufNewFile *.py,*.pyw match Error /\s\+$/

" 设置编码集为utf-8
set encoding=utf-8

" 设置配色方案 
set background=dark
" set background=light
colorscheme solarized

" 禁止光标闪烁
set gcr=a:block-blinkon0

" 禁止显示滚动条
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R

" 禁止显示菜单栏和工具条
set guioptions-=m
set guioptions-=T

" 高亮显示搜索结果
set hlsearch

