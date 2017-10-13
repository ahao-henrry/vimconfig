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

call vundle#end()           " 必须 
filetype plugin indent on   " 必须


set nu
set showmode
set ruler
set autoindent
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
