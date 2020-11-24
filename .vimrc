"Set(){
set history=500
set autoread
set fileencodings=utf-8,gb2312,gb18030,gbk,ucs-bom,cp936,latin1
set termencoding=utf-8
set encoding=utf-8
"设置（软）制表符宽度为4
set tabstop=4               
set softtabstop=4           
"设置缩进的空格数为4 
set shiftwidth=4              
"设置自动缩进：即每行的缩进值与上一行相等；使用 noautoindent 取消设置
set autoindent
"去除VI一致性,必须
set nocompatible             
"设置包括vundle和初始化相关的runtime path
set rtp+=~/.vim/bundle/Vundle.vim
"}

"Map(){
"设置自动格式化"
noremap <F3> :Autoformat<CR>
"设置代码调试"
nnoremap <F5> :call Debugging()<CR>
func! Debugging()
    if &filetype == 'python'
        exec "!ipdb3 %"
    endif
	if &filetype == 'sh'
		exec "!time bash %"
	endif
endfunc
"}

"Appearence(){
syntax enable
colorscheme space-vim-dark 
"}

"VundlePlugin(){
call vundle#begin()
"custom plugin
" 另一种选择, 指定一个vundle安装插件的路径
"call vundle#begin('~/some/path/here')
" 让vundle管理插件版本,必须
Plugin 'VundleVim/Vundle.vim'
"Markdown文本语法高亮插件
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
"彩虹色括号插件
Plugin 'luochen1990/rainbow'
"代码结构展示
Plugin 'taglist.vim'
"AutoFormat
Plugin 'Chiel92/vim-autoformat'
"NedTree
Plugin 'preservim/nerdtree'
"Space Dark Theme
Plugin 'liuchengxu/space-vim-dark'
"Flake8
Plugin 'nvie/vim-flake8'
call vundle#end() 
"}

"Plugins Configureation(){
"Vim markdown(){{
let g:vim_markdown_folding_disabled = 1 
"}}

"Flake8(){{
"let g:flake8_cmd="/opt/strangebin/flake8000
"}}

"Taglist(){{
let Tlist_Ctags_Cmd='ctags'
let Tlist_Show_One_File=1           "不同时显示多个文件的tag，只显示当前文件的
let Tlist_WinWidt =25               "设置taglist的宽度
let Tlist_Exit_OnlyWindow=1         "如果taglist窗口是最后一个窗口，则退出vim
let Tlist_Use_Right_Window=1        "在右侧窗口中显示taglist窗口
"let Tlist_Use_Left_Windo =1
map <leader>l :Tlist<CR>
"}}

"Rainbow(){{
"0 if you want to enable it later via :RainbowToggle
let g:rainbow_active = 1 
"}}
"}

"Filetype(){
filetype off                  " 必须
"必须 加载vim自带和插件相应的语法和文件类型相关脚本
filetype plugin indent on    
"忽视插件改变缩进,可以使用以下替代:
"filetype plugin on
"}

" 简要帮助文档
" :PluginList       - 列出所有已配置的插件
" :PluginInstall    - 安装插件,追加 `!` 用以更新或使用 :PluginUpdate
" :PluginSearch foo - 搜索 foo ; 追加 `!` 清除本地缓存
" :PluginClean      - 清除未使用插件,需要确认; 追加 `!` 自动批准移除未使用插件
" 查阅 :h vundle 获取更多细节和wiki以及FAQ
" 将你自己对非插件片段放在这行之后
