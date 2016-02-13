"=========================================================================
"
" DesCRiption: devim for MacVim
" Last Change: 2015年11月11日 15时13分 
" Version: 0.03 
" 
"========================================================================= 
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Keep Plugin commands between vundle#begin/end.
" plugin from http://vim-scripts.org/vim/scripts.html
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
"Plugin 'wincent/Command-T'

" Git plugin not hosted on GitHub
Plugin 'L9'

" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
"Plugin 'easymotion/vim-easymotion'

" Shell utils
Plugin 'Shougo/vimproc.vim'
Plugin 'Shougo/vimshell.vim'

" ""File finder
Plugin 'kien/ctrlp.vim'

" ""grep finder
Plugin 'grep.vim'

" Plugin 'SirVer/ultisnips'
" Plugin 'honza/vim-snippets'

Plugin 'BufOnly.vim'
Plugin 'scrooloose/nerdtree'

"Plugin 'taglist.vim'
Plugin 'majutsushi/tagbar'

"Plugin 'powerline/powerline'
Plugin 'bling/vim-airline'
Plugin 'bling/vim-bufferline'

" For common language
Plugin 'ervandew/supertab'

" ""代码快捷注释插件nerdcommenter
Plugin 'scrooloose/nerdcommenter'

Plugin 'matchit.zip'
"Plugin 'kien/rainbow_parentheses.vim'

" dash for help
Plugin 'rizzatti/dash.vim'

Plugin 'scrooloose/syntastic'
Plugin 'Chiel92/vim-autoformat'

Plugin 'mattn/emmet-vim'

Plugin 'elzr/vim-json'
Plugin 'jelera/vim-JavaScript-syntax'

Plugin 'stephpy/vim-php-cs-fixer'
Plugin 'maksimr/vim-jsbeautify'
" Plugin 'einars/js-beautify'
Plugin 'ap/vim-css-color'

" Python mode
Plugin 'klen/python-mode'

"Plugin for developing of C and CPP
Plugin 'a.vim'
Plugin 'brookhong/cscope.vim'

Plugin 'evanmiller/nginx-vim-syntax'

"Plugin for markdown
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
"Plugin 'spf13/vim-preview'
"Plugin 'iamcco/markdown-preview.vim'

Plugin 'LaTeX-Box-Team/LaTeX-Box'

" Plugin 'tyru/open-browser.vim'

"Plugin 'xolox/vim-misc'
"Plugin 'xolox/vim-notes'

"Plugin task
"Plugin 'TaskList.vim'
Plugin 'itchyny/calendar.vim'

Plugin 'tomasr/molokai'
"Plugin 'altercation/vim-colors-solarized'

"Bundle 'winmanager'
"
" All of your Plugins must be added before the following line
call vundle#end()            " required
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"
" " 用户目录变量$VIMFILES 
" if CurSys() == "windows" 
" let $VIMFILES = $VIM.'/vimfiles' 
" elseif CurSys() == "linux" 
" let $VIMFILES = $HOME.'/.vim' 
" endif 
"
" " 设定doc文档目录 
" let helptags=$VIMFILES.'/doc' 
"
" " 设置字体 以及中文支持 
" if has("win32") 
" set guifont=Inconsolata:h12:cANSI 
" endif 
"
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 配色方案设置{{{
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set t_Co=256  
if has("gui_running")
	set guioptions-=T  
    let g:molokai_original = 1
    colorscheme molokai " 设定配色方案 
else
    "set background=dark
    "set background=light
    colorscheme darkblue
endif
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" }}}配色方案设置
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" return OS type, eg: windows, or linux, mac, et.st..{{{ 
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! CurSys() 
    if has("win16") || has("win32") || has("win64") || has("win95") 
        return "windows" 
    elseif has('mac')
        return "osx" 
    elseif has("unix") 
        return "linux" 
    endif 
endfunction 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" }}}return OS type, eg: windows, or linux, mac, et.st.. 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

filetype plugin on

autocmd BufNewFile,BufRead *.{md,mdwn,mkd,mkdn,mark*} set filetype=markdown
autocmd BufNewFile,BufRead *.{jsx} set filetype=javascript
"Set the tpl file as html file for better development.
autocmd BufNewFile,BufRead *.{tpl} set filetype=html
au! BufRead,BufNewFile *.json set filetype=json

au BufNewFile,BufRead *.jinja set syntax=htmljinja
au BufNewFile,BufRead *.mako set ft=mako


set nocompatible " 关闭 vi 兼容模式 
syntax on " 自动语法高亮 
set number " 显示行号 
set cursorline " 突出显示当前行 
set ruler " 打开状态栏标尺 

" To ignore plugin indent changes, instead use:
set autoindent
set cindent " 开启新行时使用智能自动缩进 
set smartindent " 开启新行时使用智能自动缩进 

set nobackup " 覆盖文件时不备份 
"set autochdir " 自动切换当前目录为当前文件所在的目录 
set helplang=cn
" set backupcopy=yes " 设置备份时的行为为覆盖 

" 搜索时忽略大小写，但在有一个或以上大写字母时仍保持对大小写敏感 
set ignorecase smartcase "
set wrapscan " 禁止在搜索到文件两端时重新搜索 
set incsearch " 输入搜索内容时就显示搜索结果 
set hlsearch " 搜索时高亮显示被找到的文本 

set noerrorbells " 关闭错误信息响铃 
" set novisualbell " 关闭使用可视响铃代替呼叫 
" set t_vb= " 置空错误铃声的终端代码 
" set showmatch " 插入括号时，短暂地跳转到匹配的对应括号 
" set matchtime=2 " 短暂跳转到匹配括号的时间 
set magic 
"set noautowrite
set hidden " 允许在有未保存的修改时切换缓冲区，此时的修改由 vim 负责保存 

set guioptions-=T " 隐藏工具栏 
set guioptions-=m " 隐藏菜单栏 
set backspace=indent,eol,start 
" 不设定在插入状态无法用退格键和 Delete 键删除回车符 
" " setting the status line
" set cmdheight=1 " 设定命令行的行数为 1 
set laststatus=2 " 显示状态栏 (默认值为 1, 无法显示状态栏) 
" set statusline=\ %<%F[%1*%M%*%n%R%H]%=\ %y\ %0(%{&fileformat}\ %{&encoding}\
" %c:%l/%L%)\ 

" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 选中状态下 Ctrl+c 复制 {{{
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
vmap <C-c> "+y 
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" }}}
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Mac only for clipboard{{{
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set clipboard=unnamed
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" }}}
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" source folding setting{{{
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set foldenable " 开始折叠 
set foldmethod=indent " 缺省用缩进折叠 
"set foldcolumn=0 " 设置折叠区域的宽度 
"set foldclose=all " 设置为自动关闭折叠 
set foldlevel=100 " 设置折叠层数为100,基本上等价于打开文件的时，缺省不折叠 
" use space to (un)fold the source fragment 
nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" }}}source folding setting
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set shiftwidth=4 " 设定 << 和 >> 命令移动时的宽度为 4 
set softtabstop=4 " 使得按退格键时可以一次删掉 4 个空格 
set tabstop=4 " 设定 tab 长度为 4 
set expandtab
filetype plugin indent on " 开启插件 
" " javascript file setting for javascript airbnb style guide
autocmd FileType javascript set tabstop=2 shiftwidth=2 softtabstop=2 expandtab 

" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" " source file syntax{{{
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd filetype javascript set dictionary=$VIMFILES/dict/javascript.dict 
autocmd filetype css set dictionary=$VIMFILES/dict/css.dict 
autocmd filetype php set dictionary=$VIMFILES/dict/php.dict 
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" " }}}
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 配置多语言环境{{{
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has("multi_byte") 
" UTF-8 编码 
set encoding=utf-8 
set termencoding=utf-8 
set formatoptions+=mM 
set fencs=utf-8,gbk 

if v:lang =~? '^\(zh\)\|\(ja\)\|\(ko\)' 
    set ambiwidth=double 
endif 

if has("win32") 
    source $VIMRUNTIME/delmenu.vim 
    source $VIMRUNTIME/menu.vim 
    language messages zh_CN.utf-8 
endif 
else 
    echoerr "Sorry, this version of (g)vim was not compiled with +multi_byte" 
endif 
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" }}}
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" " Buffers操作快捷方式{{{
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap ,. :bnext<CR> 
nnoremap ,m :bprevious<CR> 
nnoremap ,b :b#<CR> 
"
"窗口分割时,进行切换的按键热键需要连接两次,比如从下方窗口移动 
"光标到上方窗口,需要<c-w><c-w>k,非常麻烦,现在重映射为<c-k>,切换的 
"时候会变得非常方便. 
nnoremap <C-h> <C-w>h 
nnoremap <C-j> <C-w>j 
nnoremap <C-k> <C-w>k 
nnoremap <C-l> <C-w>l 
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" " }}}
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" " Tab操作快捷方式! 
" nnoremap <C-TAB> :tabnext<CR> 
" nnoremap <C-S-TAB> :tabprev<CR> 
"
" "关于tab的快捷键 
" " map tn :tabnext<cr> 
" " map tp :tabprevious<cr> 
" " map td :tabnew .<cr> 
" " map te :tabedit 
" " map tc :tabclose<cr> 
" "一些不错的映射转换语法（如果在一个文件中混合了不同语言时有用） 
" nnoremap <leader>1 :set filetype=xhtml<CR> 
" nnoremap <leader>2 :set filetype=css<CR> 
" nnoremap <leader>3 :set filetype=javascript<CR> 
" nnoremap <leader>4 :set filetype=php<CR> 
"
" " set fileformats=unix,dos,mac 
" " nmap <leader>fd :se fileformat=dos<CR> 
" " nmap <leader>fu :se fileformat=unix<CR> 
"
" " use Ctrl+[l|n|p|cc] to list|next|previous|jump to count the result 
" " map <C-x>l <ESC>:cl<CR> 
" " map <C-x>n <ESC>:cn<CR> 
" " map <C-x>p <ESC>:cp<CR> 
" " map <C-x>c <ESC>:cc<CR> 
"
" " 让 Tohtml 产生有 CSS 语法的 html 
" " syntax/2html.vim，可以用:runtime! syntax/2html.vim 
" let html_use_css=1 
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" " json file setting{{{
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""
augroup json_autocmd
  autocmd!
  autocmd FileType json set autoindent
  autocmd FileType json set formatoptions=tcq2l
  autocmd FileType json set textwidth=78 shiftwidth=2
  autocmd FileType json set softtabstop=2 tabstop=8
  autocmd FileType json set expandtab
  autocmd FileType json set foldmethod=syntax
augroup END
" autoformat the json file.
autocmd FileType json noremap <buffer> ,af :call JsBeautify()<cr>
" autocmd filetype json noremap <buffer> ,af <Esc>:%!python -m json.tool<CR>
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" " }}}
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""
" => JavaScript section
"""""""""""""""""""""""""""""""
" open javascript folding 
function! JavaScriptFold()
    setl foldmethod=syntax
    setl foldlevelstart=100
    syn region foldBraces start=/{/ end=/}/ transparent fold keepend extend

    function! FoldText()
    return substitute(getline(v:foldstart), '{.*', '{...}', '')
    endfunction
    setl foldtext=FoldText()
endfunction
"
let b:javascript_fold=1 
" 打开javascript对dom、html和css的支持 
let javascript_enable_domhtmlcss=1 
" 设置字典 ~/.vim/dict/文件的路径 

" au FileType javascript call JavaScriptFold()
au FileType javascript setl fen
" au FileType javascript setl nocindent

au FileType javascript imap <c-t> AJS.log();<esc>hi
au FileType javascript imap <c-a> alert();<esc>hi

au FileType javascript inoremap <buffer> $r return
au FileType javascript inoremap <buffer> $f //--- PH ----------------------------------------------<esc>FP2xi
" """""""""""""""""""""""""""""
" => vim-jsbeautify{{{
" """""""""""""""""""""""""""""
autocmd FileType javascript noremap <buffer> ,af :call JsBeautify()<cr>
" for html
autocmd FileType html noremap <buffer> ,af :call HtmlBeautify()<cr>
" for css or scss
autocmd FileType css noremap <buffer> ,af :call CSSBeautify()<cr>
" Beatutify the selected section
autocmd FileType javascript vnoremap <buffer> ,af :call RangeJsBeautify()<cr>
autocmd FileType html vnoremap <buffer> ,af :call RangeHtmlBeautify()<cr>
autocmd FileType css vnoremap <buffer> ,af :call RangeCSSBeautify()<cr>
" """""""""""""""""""""""""""""
" }}}
" """""""""""""""""""""""""""""
""""""""""""""""""""""""""""""
" => Python section
""""""""""""""""""""""""""""""
let python_highlight_all = 1
au FileType python syn keyword pythonDecorator True None False self

au FileType python inoremap <buffer> $r return
au FileType python inoremap <buffer> $i import
au FileType python inoremap <buffer> $p print
au FileType python inoremap <buffer> $f #--- PH ----------------------------------------------<esc>FP2xi
au FileType python map <buffer> <leader>1 /class
au FileType python map <buffer> <leader>2 /def
au FileType python map <buffer> <leader>C ?class
au FileType python map <buffer> <leader>D ?def

" Python 文件的一般设置，比如不要 tab 等 
" autocmd FileType python set tabstop=4 shiftwidth=4 expandtab 
"""""""""""""""""""""""""""""""
"" => python mode{{{
"""""""""""""""""""""""""""""""
" Override go-to.definition key shortcut to Ctrl-]
let g:pymode_rope_goto_definition_bind = "<C-]>"

" Override run current python file key shortcut to Ctrl-Shift-e
let g:pymode_run_bind = "<C-S-e>"

" Override view python doc key shortcut to Ctrl-Shift-d
let g:pymode_doc_bind = "<C-S-d>"
"""""""""""""""""""""""""""""""
""}}}python mode
"""""""""""""""""""""""""""""""
" "----------------------------------------------------------------- 
" " plugin - bufexplorer.vim Buffers切换 
" " \be 全屏方式查看全部打开的文件列表 
" " \bv 左右方式查看 \bs 上下方式查看 
" "----------------------------------------------------------------- 
"
""""""""""""""""""""""""""""""
" vim-bufferline{{{
"""""""""""""""""""""""""""""""
let g:bufferline_echo = 1
let g:bufferline_active_buffer_left = '['
let g:bufferline_active_buffer_right = ']'
""""""""""""""""""""""""""""""
" }}}
"""""""""""""""""""""""""""""""
"
" "----------------------------------------------------------------- 
" " plugin - taglist.vim 查看函数列表，需要ctags程序 
" " F4 打开隐藏taglist窗口 
" "----------------------------------------------------------------- 
" " if CurSys() == "windows" " 设定windows系统中ctags程序的位置 
" " let Tlist_Ctags_Cmd = '"'.$VIMRUNTIME.'/ctags.exe"' 
" " elseif CurSys() == "linux" " 设定windows系统中ctags程序的位置 
" let Tlist_Ctags_Cmd = '/usr/local/bin/ctags' 
" " endif 
" nnoremap <c-,> :TlistToggle<CR> 
" let Tlist_Show_One_File = 1 " 不同时显示多个文件的tag，只显示当前文件的 
" let Tlist_Exit_OnlyWindow = 1 " 如果taglist窗口是最后一个窗口，则退出vim 
" let Tlist_Use_Right_Window = 1 " 在右侧窗口中显示taglist窗口 
" let Tlist_File_Fold_Auto_Close=1 " 自动折叠当前非编辑文件的方法列表 
" let Tlist_Auto_Open = 0 
" let Tlist_Auto_Update = 1 
" let Tlist_Hightlight_Tag_On_BufEnter = 1 
" let Tlist_Enable_Fold_Column = 0 
" let Tlist_Process_File_Always = 1 
" let Tlist_Display_Prototype = 0 
" let Tlist_Compact_Format = 1 
" "----------------------------------------------------------------- 

"----------------------------------------------------------------- 
" " plugin - mark.vim 给各种tags标记不同的颜色，便于观看调式的插件。 
" " \m mark or unmark the word under (or before) the cursor 
" " \r manually input a regular expression. 用于搜索. 
" " \n clear this mark (i.e. the mark under the cursor), or clear all
" highlighted marks . 
" " \* 当前MarkWord的下一个 \# 当前MarkWord的上一个 
" " \/ 所有MarkWords的下一个 \? 所有MarkWords的上一个 
" "----------------------------------------------------------------- 
"

" "----------------------------------------------------------------- 
" " plugin - tagbar.vim 查看函数列表
" "----------------------------------------------------------------- 
let g:tagbar_ctags_bin='/usr/local/bin/ctags'
let g:tagbar_width=40
autocmd BufReadPost *.cpp,*.c,*.h,*.hpp,*.cc,*.cxx,*.js call tagbar#autoopen()
nnoremap ,t :TagbarToggle<CR>
" "----------------------------------------------------------------- 
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"NERDTree配置{{{
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" " plugin - NERD_tree.vim 以树状方式浏览系统中的文件和目录 
" " :ERDtree 打开NERD_tree :NERDtreeClose 关闭NERD_tree 
" " o 打开关闭文件或者目录 t 在标签页中打开 
" " T 在后台标签页中打开 ! 执行此文件 
" " p 到上层目录 P 到根目录 
" " K 到第一个节点 J 到最后一个节点 
" " u 打开上层目录 m 显示文件系统菜单（添加、删除、移动操作） 
" " r 递归刷新当前目录 R 递归刷新当前根目录 
" "----------------------------------------------------------------- 
" F3 NERDTree 切换 
"map <Command+n> :NERDTreeToggle<CR> 
map <C-m> :NERDTreeToggle<CR>
"imap <F3> <ESC>:NERDTreeToggle<CR> 
map <C-i> :NERDTreeFind<CR>
let NERDChristmasTree=1
let NERDTreeChDirMode=2 "选中root即设置为当前目录
let NERDTreeHighlightCursorline=0
let NERDTreeShowBookmarks=1 "显示书签
let NERDTreeMinimalUI=1 "不显示帮助面板
let NERDTreeDirArrows=1 "目录箭头 1 显示箭头 0传统+-|号
let NERDTreeShowHidden=0 "显示隐藏文件
let NERDTreeQuitOnOpen=1 "打开文件时关闭树
" let NERDTreeShowLineNumbers=1 
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p

function! NERDTree_Start()  
    exec 'NERDTree'  
endfunction

function! NERDTree_IsValid()  
    return 1  
endfunction
"}}}

"----------------------------------------------------------------- 
"NERDCommenter.vim 配置{{{
"----------------------------------------------------------------- 
" plugin - NERD_commenter.vim 注释代码用的， 
" [count],cc 光标以下count行逐行添加注释(7,cc) 
" [count],cu 光标以下count行逐行取消注释(7,cu) 
" [count],cm 光标以下count行尝试添加块注释(7,cm) 
" ,cA 在行尾插入 /* */,并且进入插入模式。 这个命令方便写注释。 
" 注：count参数可选，无则默认为选中行或当前行 
"----------------------------------------------------------------- 
let NERDSpaceDelims=1 " 让注释符与语句之间留一个空格 
let NERDCompactSexyComs=1 " 多行注释时样子更好看 
nmap ,cc <leader>cc
nmap ,cu <leader>cu
"----------------------------------------------------------------- 
"}}}
"----------------------------------------------------------------- 
"
" "----------------------------------------------------------------- 
" " plugin - DoxygenToolkit.vim 由注释生成文档，并且能够快速生成函数标准注释 
" "----------------------------------------------------------------- 
" let g:DoxygenToolkit_authorName="Asins - asinsimple AT gmail DOT com" 
" let g:DoxygenToolkit_briefTag_funcName="yes" 
" map <leader>da :DoxAuthor<CR> 
" map <leader>df :Dox<CR> 
" map <leader>db :DoxBlock<CR> 
" map <leader>dc a /* */<LEFT><LEFT><LEFT> 
"
"
" "----------------------------------------------------------------- 
" " plugin – ZenCoding.vim 很酷的插件，HTML代码生成 
" " 插件最新版：http://github.com/mattn/zencoding-vim 
" " 常用命令可看：http://nootn.com/blog/Tool/23/ 
" "----------------------------------------------------------------- 
"
"
" "----------------------------------------------------------------- 
" " plugin – checksyntax.vim JavaScript常见语法错误检查 
" " 默认快捷方式为 F5 
" "----------------------------------------------------------------- 
" let g:checksyntax_auto = 0 " 不自动检查 
"
"
" "----------------------------------------------------------------- 
" " plugin - NeoComplCache.vim 自动补全插件 
" "----------------------------------------------------------------- 
" let g:AutoComplPop_NotEnableAtStartup = 1 
" let g:NeoComplCache_EnableAtStartup = 1 
" let g:NeoComplCache_SmartCase = 1 
" let g:NeoComplCache_TagsAutoUpdate = 1 
" let g:NeoComplCache_EnableInfo = 1 
" let g:NeoComplCache_EnableCamelCaseCompletion = 1 
" let g:NeoComplCache_MinSyntaxLength = 3 
" let g:NeoComplCache_EnableSkipCompletion = 1 
" let g:NeoComplCache_SkipInputTime = '0.5' 
" let g:NeoComplCache_SnippetsDir = $VIMFILES.'/snippets' 
" " <TAB> completion. 
" inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>" 
" " snippets expand key 
" imap <silent> <C-e> <Plug>(neocomplcache_snippets_expand) 
" smap <silent> <C-e> <Plug>(neocomplcache_snippets_expand) 
"
"
" "----------------------------------------------------------------- 
" " plugin - matchit.vim 对%命令进行扩展使得能在嵌套标签和语句之间跳转 
" " % 正向匹配 g% 反向匹配 
" " [% 定位块首 ]% 定位块尾 
" "----------------------------------------------------------------- 
"
"
" "----------------------------------------------------------------- 
" " plugin - vcscommand.vim 对%命令进行扩展使得能在嵌套标签和语句之间跳转 
" " SVN/git管理工具 
" "----------------------------------------------------------------- 
"
"
" "----------------------------------------------------------------- 
" " plugin – a.vim 
" "-----------------------------------------------------------------

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Winmanager 配置{{{
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" let g:winManagerWindowLayout="NERDTree|TagList"
" let g:NERDTree_title="[NERDTree]"

" nmap <C-m> :WMToggle<CR>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"}}}
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"ctrlp 配置{{{
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ctrlp_map = ',,'
"}}}

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"SuperTab 配置{{{
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:SuperTabDefaultCompletionType = "<c-n>"
"}}}
"Easymotion 配置{{{
"let g:EasyMotion_leader_key = 'f'
"}}}"""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"syntastic 配置{{{
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:syntastic_error_symbol='>>'
let g:syntastic_warning_symbol='>'
"
"" to see error location list
"let g:syntastic_always_populate_loc_list = 0
"let g:syntastic_auto_loc_list = 0
function! ToggleErrors()
    let old_last_winnr = winnr('$')
    lclose
    if old_last_winnr == winnr('$')
        " Nothing was closed, open syntastic error location panel
        Errors
    endif
endfunction

nnoremap <Leader>s :call ToggleErrors()<cr>
" nnoremap <Leader>sn :lnext<cr>
" nnoremap <Leader>sp :lprevious<cr>
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

"" 修改高亮的背景色, 适应主题
highlight SyntasticErrorSign guifg=white guibg=black
let g:syntastic_enable_highlighting=1
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_loc_list_height = 5
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_enable_highlighting=1

let g:syntastic_php_checkers = ['php']
"let g:syntastic_python_checkers=['pyflakes'] " 使用pyflakes,速度比pylint快
let g:syntastic_python_checkers = ['pylint']
let g:syntastic_javascript_checkers = ['eslint']
"let g:syntastic_javascript_checkers = ['jsl', 'jshint']
"let g:syntastic_javascript_checkers = ['jshint']
"let g:syntastic_html_checkers=['tidy', 'jshint']
let g:syntastic_html_checkers=['eslint']
let g:syntastic_css_checkers = ['eslint']

map ,sc :call SyntasticCheck()<CR>
map ,ss :call SyntasticToggleMode()<CR>

"}}}
"
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" "Tasklist.vim 配置{{{
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" let g:tlTokenList = ["FIXME", "TODO", "HACK", "NOTE", "WARN", "MODIFY"]
" " 绑定快捷键，默认是 <Leader>t
" nnoremap    ,td             :TaskList<CR>
" "g:tlWindowPosition
" "指定任务列表窗口打开位置，默认是窗口上方打开，可用如下更改:
" let g:tlWindowPosition = 1
" "可选值:
" "0 = Open on top
" "1 = Open on the bottom
" "
" "g:tlTokenList
" "任务列表搜索的标识符列表，默认是 'FIXME TODO XXX'. 搜索到得结果按照分组和出现顺序排列. 可以如下更改:
" let g:tlTokenList = ['TODO', 'FIXME', 'HACK']
" "
" "g:tlRememberPosition
" "如果设置为1，则任务插件下次打开时会恢复到上次关闭时的位置. 默认是找到离光标当前行最近的标示符，可以如下更改:
" let g:tlRememberPosition = 1
" "}}}"""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"RainbowParentheeses.vim 配置{{{
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" au VimEnter * RainbowParenthesesToggle
" au Syntax * RainbowParenthesesLoadRound
" au Syntax * RainbowParenthesesLoadSquare
" au Syntax * RainbowParenthesesLoadBraces
"}}}
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"php-cs-fixer.vim 配置{{{
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" If php-cs-fixer is in $PATH, you don't need to define line below
" let g:php_cs_fixer_path = "~/php-cs-fixer.phar" " define the path to the php-cs-fixer.phar
let g:php_cs_fixer_level = "symfony"              " which level ?
let g:php_cs_fixer_config = "default"             " configuration
let g:php_cs_fixer_php_path = "php"               " Path to PHP
"If you want to define specific fixers:
"let g:php_cs_fixer_fixers_list = "linefeed,short_tag,indentation"
"let g:php_cs_fixer_enable_default_mapping = 1     " Enable the mapping by default (<leader>pcd)
let g:php_cs_fixer_dry_run = 0                    " Call command with dry-run option
let g:php_cs_fixer_verbose = 0                    " Return the output of command if 1, else an inline information.
"nnoremap ,pcf :call PhpCsFixerFixFile()<CR>
au FileType php nnoremap ,af :call PhpCsFixerFixFile()<CR>
au FileType php nnoremap ,pcd :call PhpCsFixerFixDirectory()<CR>
"}}}

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"vim-autoformat.vim 配置{{{
"这里使用astyle格式化c,cpp,cc,java,需要用homebrew安装astyle
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:formatdef_vogon = '"astyle --style=attach --pad-oper"'
let g:formatters_cpp  = ['vogon']
let g:formatters_c    = ['vogon']
let g:formatters_cc   = ['vogon']
let g:formatters_java = ['vogon']
"The following three lines do not work!!!!!!
" let g:formatdef_eslint = '"eslint -o"'
" let g:formatters_javascript = ['eslint']
"let g:formatdef_clangformat_objc = '"clang-format -style=file"'
let g:formatdef_autopep8 = "'autopep8 - --range '.a:firstline.' '.a:lastline"
let g:formatters_python = ['autopep8']
au FileType c,cpp,cc,java,python nnoremap ,af :Autoformat<CR>
"au FileType json nnoremap ,af :Autoformat<CR>
"}}}
"
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""
"emmet.vim 配置{{{
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" let g:user_emmet_settings = {
            " \ 'php' : {
            " \ 'extends' : 'html',
            " \ 'filters' : 'c',
            " \ },
            " \ 'xml' : {
            " \ 'extends' : 'html',
            " \ },
            " \ 'haml' : {
            " \ 'extends' : 'html',
            " \ },
            " \}
"let g:user_emmet_expandabbr_key = '<Tab>'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"}}}emmet.vim 配置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"tabular settings{{{
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"let mapleader=','
" if exists(":Tabularize")
  " nmap ,t= :Tabularize /=<CR>
  " vmap ,t= :Tabularize /=<CR>
  " nmap ,t: :Tabularize /:\zs<CR>
  " vmap ,t: :Tabularize /:\zs<CR>
  " vmap ,t| :Tabularize /|\zs<CR>
  " vmap ,t| :Tabularize /|\zs<CR>
" endif
inoremap <silent> <Bar>   <Bar><Esc>:call <SID>align()<CR>a

function! s:align()
  let p = '^\s*|\s.*\s|\s*$'
  if exists(':Tabularize') && getline('.') =~# '^\s*|' && (getline(line('.')-1) =~# p || getline(line('.')+1) =~# p)
    let column = strlen(substitute(getline('.')[0:col('.')],'[^|]','','g'))
    let position = strlen(matchstr(getline('.')[0:col('.')],'.*|\s*\zs.*'))
    Tabularize/|/l1
    normal! 0
    call search(repeat('[^|]*|',column).'\s\{-\}'.repeat('.',position),'ce',line('.'))
  endif
endfunction
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" }}}
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" "'plasticboy/vim-markdown.vim{{{
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:vim_markdown_folding_disabled=1
let g:vim_markdown_folding_style_pythonic=1
let g:vim_markdown_no_default_key_mappings=1
let g:vim_markdown_math=1
let g:vim_markdown_frontmatter=1
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" }}}
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" "'iamcco/markdown-preview.vim'{{{
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"let g:mkdp_path_to_chrome = "google-chrome"
"" 设置 chrome 浏览器的路径（或是启动 chrome（或其他现代浏览器）的命令）
"let g:mkdp_auto_start = 1
"" 设置为 1 可以在打开 markdown 文件的时候自动打开浏览器预览，只在
"" 打开markdown 文件的时候打开一次
"let g:mkdp_auto_open = 1
"" 设置为 1 在编辑 markdown 的时候检查预览窗口是否已经
"" 打开，否则自动打开预
"" 览窗口
"let g:mkdp_auto_close = 1
"" 在切换 buffer 的时候自动关闭预览窗口，设
"" 置为 0 则在切换 buffer 的时候不
"" 自动关闭预览窗口
"let g:mkdp_refresh_slow = 0
"" 设置为 1 则只有在保存文件，
"" 或退出插入模式的时候更新预览
"" ，默认为 0，实时
"" 更新预览
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" "}}}
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" "grep{{{
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let Grep_Skip_Files = '*.swp *~' 
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" "}}}
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" "vim-airline{{{
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" "}}}
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" "cscope{{{
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap ,fa :call CscopeFindInteractive(expand('<cword>'))<CR>
nnoremap ,l :call ToggleLocationList()<CR>
"s: Find this C symbol
nnoremap  ,fs :call CscopeFind('s', expand('<cword>'))<CR>
" g: Find this definition
nnoremap  ,fg :call CscopeFind('g', expand('<cword>'))<CR>
" d: Find functions called by this function
nnoremap  ,fd :call CscopeFind('d', expand('<cword>'))<CR>
" c: Find functions calling this function
nnoremap  ,fc :call CscopeFind('c', expand('<cword>'))<CR>
" t: Find this text string
nnoremap  ,ft :call CscopeFind('t', expand('<cword>'))<CR>
" e: Find this egrep pattern
nnoremap  ,fe :call CscopeFind('e', expand('<cword>'))<CR>
" f: Find this file
nnoremap  ,ff :call CscopeFind('f', expand('<cword>'))<CR>
" i: Find files #including this file
nnoremap  ,fi :call CscopeFind('i', expand('<cword>'))<CR>
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" "}}}
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if CurSys() == "osx" 
    nnoremap ,w :exe ':silent !open -a /Applications/Google\ Chrome.app %'<CR>
endif 
