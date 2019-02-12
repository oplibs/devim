"=========================================================================
" DesCRiption: devim for Vim
" Last Change: 2019年01月30日 15时13分
" Version: 0.10
"=========================================================================

" Let vim-plug manage the vim plugins
" Installation: curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
call plug#begin('~/.vim/plugged')

" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plug 'rstacruz/sparkup', {'rtp': 'vim/'}

" Plugin 'L9'
Plug 'vim-scripts/L9'

" Shell utils
Plug 'Shougo/vimproc.vim'
Plug 'Shougo/vimshell.vim'

" Common plugin to process text file save
Plug 'tpope/vim-sensible'

" Display the matching tag in source: tags, { [ (......
" Plugin 'matchit.zip'
Plug 'tmhedberg/matchit'

Plug 'easymotion/vim-easymotion'

" Grep content finder
Plug 'vim-scripts/grep.vim'
Plug 'rking/ag.vim'
" Plug 'dyng/ctrlsf.vim'
" File finder
Plug 'kien/ctrlp.vim'
"
Plug 'chrisbra/vim-diff-enhanced'

"Plugin 'BufOnly.vim'
Plug 'vim-scripts/BufOnly.vim'

Plug 'skywind3000/asyncrun.vim'
Plug 'joonty/vim-do'

Plug 'nathanaelkane/vim-indent-guides'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-surround'

" Plug 'SirVer/ultisnips'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'

" Plug on GitHub repo
Plug 'tpope/vim-fugitive'

" NerdTree series plugin
Plug 'scrooloose/nerdtree' , { 'on': 'NERDTreeToggle' }
Plug 'jistr/vim-nerdtree-tabs'
Plug 'xuyuanp/nerdtree-git-plugin'

" Plug to display tag in source files;
" Plug 'taglist.vim'
Plug 'majutsushi/tagbar'

" Plug to display status in line
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'bling/vim-bufferline'

" Plug to comment text quickly
Plug 'scrooloose/nerdcommenter'
" Plug 'jiangmiao/auto-pairs'
" Plug 'raimondi/delimitmate'

" Language alignment by element
Plug 'godlygeek/tabular'

" Syntax check for most languages.
" Plug 'scrooloose/syntastic'
if v:version > 800
  Plug 'w0rp/ale'
else
  Plug 'scrooloose/syntastic'
endif

" Autoformat tools
Plug 'Chiel92/vim-autoformat'

" For common language hint
if v:version > 800
  Plug 'shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
else
  Plug 'valloric/youcompleteme'
endif

Plug 'valloric/listtoggle'

" Programming language plugins
Plug 'mattn/emmet-vim'

"Plug for developing of C and CPP
"Plugin 'a.vim'
Plug 'vim-scripts/a.vim'
Plug 'brookhong/cscope.vim'
Plug 'vhdirk/vim-cmake'
" Plug 'jalcine/cmake.vim'

" Backend development

if v:version > 704
  Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
endif

" Frontend development
Plug 'pangloss/vim-javascript'
Plug 'maksimr/vim-jsbeautify'
" Plug 'mxw/vim-jsx'
Plug 'ap/vim-css-color'

" small language parser
" Plug 'elzr/vim-json'
" Plug 'chase/vim-ansible-yaml'
" Nginx grammar support
" Plug 'evanmiller/nginx-vim-syntax'
"Plug for markdown
Plug 'plasticboy/vim-markdown'
"Plug for latex
" Plug 'LaTeX-Box-Team/LaTeX-Box'
Plug 'vim-latex/vim-latex'

" Two color scheme for vim
Plug 'tomasr/molokai'
" Plug 'altercation/vim-colors-solarized'

Plug 'vimwiki/vimwiki'
" Plug 'itchyny/calendar.vim'

" All of your Plugs must be added before the following line
call plug#end()
"
" Brief help
" :PlugList       - lists configured plugins
" :PlugInstall    - installs plugins; append `!` to update or just :PlugUpdate
" :PlugSearch foo - searches for foo; append `!` to refresh local cache
" :PlugClean      - confirms removal of unused plugins; append `!` to auto-approve removal

" Start of user define scripts
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" return OS type, eg: windows, or linux, mac, et.st..{{{
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" if v:version > 800
"     echom "asyn"
" else
"     echom "syn"
"     echom v:version
" endif
"echom v:version

function! CurSys()
    if has("win16") || has("win32") || has("win64") || has("win95")
        return "windows"
    elseif has('mac')
        return "osx"
    elseif has("unix")
        return "linux"
    endif
endfunction
"
" " 用户目录变量$VIMFILES
" if CurSys() == "windows"
" let $VIMFILES = $VIM.'/vimfiles'
" elseif CurSys() == "linux"
" let $VIMFILES = $HOME.'/.vim'
" endif
"
" " 设置字体 以及中文支持
" if has("win32")
" set guifont=Inconsolata:h12:cANSI
" endif

if CurSys() == "osx"
    nnoremap ,w :exe ':silent !open -a /Applications/Google\ Chrome.app %'<CR>
endif

" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" color scheme & GUI setting{{{
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set t_Co=256
syntax enable
set background=dark
colorscheme molokai " 设定配色方案
" let g:molokai_original = 1
" colorscheme solarized

if has("gui_running")
    set guioptions-=T
else
    syntax enable
endif

highlight NonText guibg=#060606
highlight Folded  guibg=#0A0A0A guifg=#9090D0

" Highlight current line and column
au WinLeave * set nocursorline nocursorcolumn
au WinEnter * set cursorline cursorcolumn
set cursorline cursorcolumn

set guioptions-=T " 隐藏工具栏
set guioptions-=m " 隐藏菜单栏
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" }}}color scheme & GUI setting
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" file type setting{{{
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
filetype plugin on

autocmd BufNewFile,BufRead *.{md,mdwn,mkd,mkdn,mark*} set filetype=markdown
autocmd BufNewFile,BufRead *.{jsx} set filetype=javascript
autocmd BufNewFile,BufRead *.{tpl} set filetype=html
au! BufRead,BufNewFile *.json set filetype=json

" augroup FiletypeGroup
" autocmd!
" au BufNewFile,BufRead *.jsx set filetype=javascript.jsx
" augroup END

" we also want to get rid of accidental trailing whitespace on save
autocmd BufWritePre * :%s/\s\+$//e

" augroup quickfix
    " autocmd!
    " autocmd QuickFixCmdPost [^l]* cwindow
    " autocmd QuickFixCmdPost l*    lwindow
" augroup END

" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" }}} file type setting
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
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

set backspace=indent,eol,start
" 不设定在插入状态无法用退格键和 Delete 键删除回车符
" " setting the status line
" set cmdheight=1 " 设定命令行的行数为 1
set laststatus=2 " 显示状态栏 (默认值为 1, 无法显示状态栏)
" set statusline=\ %<%F[%1*%M%*%n%R%H]%=\ %y\ %0(%{&fileformat}\ %{&encoding}\
" %c:%l/%L%)\

" use ',' as the leader key
let mapleader = ","
" let mapleader = "\<Space>"

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

" "-----------------------------------------------------------------
" " plugin - tagbar.vim 查看函数列表
" "-----------------------------------------------------------------
" let g:tagbar_ctags_bin='/usr/local/bin/ctags'
let g:tagbar_width=30
let g:tagbar_autofocus=1
" autocmd BufReadPost *.cpp,*.c,*.h,*.hpp,*.cc,*.cxx,*.js,*.jsx,*.go,*.java,*.py call tagbar#autoopen()
" nmap <C-t> :TagbarToggle<CR>
nmap <Leader>t :TagbarToggle<CR>
" "-----------------------------------------------------------------
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"vim-interactive-shell 配置{{{
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" nnoremap <Leader>r :RunInInteractiveShell<space>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"}}} tarbar
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" "AsyncRun{{{
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:asyncrun_open = 8
nnoremap <Leader>as :AsyncRun<space>
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" "}}}AsyncRun
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" " source file syntax{{{
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if CurSys()=='osx'
    autocmd filetype javascript set dictionary=$VIMFILES/dict/javascript.dict
    autocmd filetype css set dictionary=$VIMFILES/dict/css.dict
    " autocmd filetype php set dictionary=$VIMFILES/dict/php.dict
endif
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" " }}} source file syntax
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

""""""""""""""""""""""""""""""
" vim-bufferline {{{
"""""""""""""""""""""""""""""""
let g:bufferline_echo = 1
let g:bufferline_active_buffer_left = '['
let g:bufferline_active_buffer_right = ']'
""""""""""""""""""""""""""""""
" }}} vim-bufferline
"""""""""""""""""""""""""""""""
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" "vim-airline{{{
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'default'
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" "}}}
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" " Buffers操作快捷方式{{{
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <leader>. :bnext<CR>
nnoremap <leader>m :bprevious<CR>
nnoremap <leader><space> :b#<CR>
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
" autocmd FileType json noremap <buffer> <leader>af :call JsBeautify()<cr>
" autocmd filetype json noremap <buffer> <leader>af <Esc>:%!python -m json.tool<CR>
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" " }}}
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""
" JavaScript section {{{
"""""""""""""""""""""""""""""""
" " javascript file setting for javascript airbnb style guide
autocmd FileType javascript set tabstop=2 shiftwidth=2 softtabstop=2 expandtab

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
" """""""""""""""""""""""""""""
" => vim-jsbeautify{{{
" """""""""""""""""""""""""""""
autocmd FileType javascript noremap <buffer> <leader>af :call JsBeautify()<cr>
" for html
autocmd FileType html noremap <buffer> <leader>af :call HtmlBeautify()<cr>
" for css or scss
autocmd FileType css noremap <buffer> <leader>af :call CSSBeautify()<cr>
" Beatutify the selected section
autocmd FileType javascript vnoremap <buffer> <leader>af :call RangeJsBeautify()<cr>
autocmd FileType html vnoremap <buffer> <leader>af :call RangeHtmlBeautify()<cr>
autocmd FileType css vnoremap <buffer> <leader>af :call RangeCSSBeautify()<cr>
au FileType javascript nmap <leader>gr :exec '!node' shellescape(@%, 1)<cr>
" """""""""""""""""""""""""""""
" }}} JavaScript section
" """""""""""""""""""""""""""""
""""""""""""""""""""""""""""""
" => Python section
""""""""""""""""""""""""""""""
let python_highlight_all = 1
au FileType python syn keyword pythonDecorator True None False self

" temp commnent for checking
" au FileType python inoremap <buffer> $r return
" au FileType python inoremap <buffer> $p print
" au FileType python map <buffer> <leader>1 /class
" au FileType python map <buffer> <leader>D ?def
au FileType python nmap <leader>gr :exec '!python' shellescape(@%, 1)<cr>

" 一键运行
"编译运行
"" map <leader>gr :call CompileRunGcc()<CR>
"" func! CompileRunGcc()
""     exec "w"
""     if &filetype == 'c'
""         exec "!g++ % -o %<"
""         exec "! %<"
""     elseif &filetype == 'cpp'
""         exec "!g++ % -o %<"
""         exec "! %<"
""     elseif &filetype == 'java'
""         exec "!javac %"
""         exec "!java %<"
""     elseif &filetype == 'py'
""         exec "!python"
""     elseif &filetype == 'sh'
""         :!%
""     endif
"" endfunc
" }}}
" Python 文件的一般设置，比如不要 tab 等
" autocmd FileType python set tabstop=4 shiftwidth=4 expandtab
"""""""""""""""""""""""""""""""
"" python-mode {{{
"""""""""""""""""""""""""""""""
" " Override go-to.definition key shortcut to Ctrl-]
" let g:pymode_rope_goto_definition_bind = "<C-]>"
" " Override run current python file key shortcut to Ctrl-Shift-e
" let g:pymode_run_bind = "<C-S-e>"
"
" " Override view python doc key shortcut to Ctrl-Shift-d
" let g:pymode_doc_bind = "<C-S-d>"
"
" " fix hangon for [Pymode] Regenerate autoimport cache
" let g:pymode_rope_lookup_project = 0
"
" let g:pymode_rope_complete_on_dot = 0  " 防止和youcompleteme冲突
"""""""""""""""""""""""""""""""
""}}} python-mode
"""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""
"" => python autopep8{{{
"""""""""""""""""""""""""""""""
" autocmd FileType python noremap <buffer> <leader>af :call Autopep8()<CR>
" " let g:autopep8_ignore="E501,W293"
" let g:autopep8_select="E501,W293"
" let g:autopep8_pep8_passes=100
" let g:autopep8_aggressive=1
" let g:autopep8_indent_size=2
" let g:autopep8_diff_type='vertical'
"
" set modifiable

map <leader>gr :call RunPython()<CR>
function RunPython()
    let mp = &makeprg
    let ef = &errorformat
    let exeFile = expand("%:t")
    setlocal makeprg=python\ -u
    set efm=%C\ %.%#,%A\ \ File\ \"%f\"\\,\ line\ %l%.%#,%Z%[%^\ ]%\\@=%m
    silent make %
    copen
    let &makeprg = mp
    let &errorformat = ef
endfunction
"""""""""""""""""""""""""""""""
"" }}} python autopep8
"""""""""""""""""""""""""""""""
" "-----------------------------------------------------------------
" " plugin - bufexplorer.vim Buffers切换
" " \be 全屏方式查看全部打开的文件列表
" " \bv 左右方式查看 \bs 上下方式查看
" "-----------------------------------------------------------------
"
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
map <S-n> :NERDTreeToggle<CR>
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
" autocmd VimEnter * NERDTree

" function! NERDTree_Start()
" exec 'NERDTree'
" endfunction

function! NERDTree_IsValid()
    return 1
endfunction

" NERDTree tabs配置
" 显示行号
let NERDTreeShowLineNumbers=1
let NERDTreeAutoCenter=1
" 设置宽度
let NERDTreeWinSize=30
" 在终端启动vim时，共享NERDTree
let g:nerdtree_tabs_open_on_console_startup=0
" 忽略以下文件的显示
let NERDTreeIgnore=['\.pyc','\~$','\.swp']
" 显示书签列表
let NERDTreeShowBookmarks=1

" NERDTree git 配置信息如下
let g:NERDTreeIndicatorMapCustom = {
            \ "Modified"  : "✹",
            \ "Staged"    : "✚",
            \ "Untracked" : "✭",
            \ "Renamed"   : "➜",
            \ "Unmerged"  : "═",
            \ "Deleted"   : "✖",
            \ "Dirty"     : "✗",
            \ "Clean"     : "✔︎",
            \ "Unknown"   : "?"
            \ }
"-----------------------------------------------------------------
"}}} NERDTree
"-----------------------------------------------------------------
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
"-----------------------------------------------------------------
"}}}
"-----------------------------------------------------------------
"
" "-----------------------------------------------------------------
" " plugin - matchit.vim 对%命令进行扩展使得能在嵌套标签和语句之间跳转
" " % 正向匹配 g% 反向匹配
" " [% 定位块首 ]% 定位块尾
" "-----------------------------------------------------------------
"
" "-----------------------------------------------------------------
" " plugin – a.vim
" "-----------------------------------------------------------------

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" multi-cursor配置{{{
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Default mapping for vim-multi-cursor
let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" }}}
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"ctrlp 配置{{{  设置忽略目录和文件
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" \ 'dir':  '\v[\/]\.(git|hg|svn|rvm|dist)$',
" let g:ctrlp_map = ',,'
let g:ctrlp_map = '<c-p>'
let g:ctrlp_custom_ignore = {
            \ 'dir':  '\.git$\|\.hg$\|\.svn$\|\.rvm$\|vendor$\|bower_components$\|node_modules$\|dist$\|node_modules$\|project_files$\|test$',
            \ 'file': '\v\.(exe|so|dll|zip|tar|tar.gz|pyc)$',
            \ }

if executable('ag')
    " Use Ag over Grep
    set grepprg=ag\ --nogroup\ --nocolor
    " Use ag in CtrlP for listing files.
    let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
    " Ag is fast enough that CtrlP doesn't need to cache
    let g:ctrlp_use_caching = 0
endif
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"}}}
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <leader>ag :Ag<space>
"Easymotion 配置{{{
"let g:EasyMotion_leader_key = 'f'
let g:EasyMotion_smartcase = 1
"let g:EasyMotion_startofline = 0 " keep cursor colum when JK motion
map <Leader><leader>h <Plug>(easymotion-linebackward)
map <Leader><Leader>j <Plug>(easymotion-j)
map <Leader><Leader>k <Plug>(easymotion-k)
map <Leader><leader>l <Plug>(easymotion-lineforward)
" 重复上一次操作, 类似repeat插件, 很强大
map <Leader><leader>. <Plug>(easymotion-repeat)
" <Leader>f{char} to move to {char}
map  <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)

" " s{char}{char} to move to {char}{char}
" nmap s <Plug>(easymotion-overwin-f2)
"
" " Move to line
" map <Leader>L <Plug>(easymotion-bd-jk)
" nmap <Leader>L <Plug>(easymotion-overwin-line)
"
" " Move to word
" map  <Leader>w <Plug>(easymotion-bd-w)
" nmap <Leader>w <Plug>(easymotion-overwin-w)
"}}}"""""""""""""""""""""""""""""""""""""""""""""""""""""""

if v:version > 800
  """""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  "ale 配置{{{
  """""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  "set statusline+=%#warningmsg#
  set statusline+=%{ALEGetStatusLine()}
  highlight clear ALEErrorSign
  highlight clear ALEWarningSign

  nmap sp <Plug>(ale_previous_wrap)
  nmap sn <Plug>(ale_next_wrap)
  nmap <Leader>sc :ALEToggle<CR>
  nmap <Leader>sd :ALEDetail<CR>

  let g:ale_sign_column_always = 1
  let g:ale_sign_error = 'X'
  let g:ale_sign_warning = '!'
  " '❌' '⁉️''⚠️''💩'
  let g:ale_statusline_format = ['⨉ %d error(s)', '⚠ %d warning(s)', '⬥ ok']
  " let g:ale_statusline_format = ['%d error(s)', '%d warning(s)', 'OK']

  let g:ale_set_highlights = 0

  let g:airline#extensions#ale#error_symbol = 1
  let g:airline#extensions#ale#warning_symbol = 1

  let g:ale_set_loclist = 0
  let g:ale_set_quickfix = 1
  let g:ale_open_list = 0
  " Set this if you want to.
  " This can be useful if you are combining ALE with
  " some other plugin which sets quickfix errors, etc.
  let g:ale_keep_list_window_open = 1

  " Write this in your vimrc file
  let g:ale_lint_on_text_changed = 'never'

  let g:ale_linters = {'jsx': ['stylelint', 'eslint'], 'py':['flake8'], 'c++':['clang'], 'c':['clang'], 'java':['javac']}
  " let g:ale_linter_aliases = {'jsx': 'css'}

  " let b:ale_fixers = {'py':['autopep8']}
  let b:ale_warn_about_trailing_whitespace = 0
  " " You can disable this option too
  " " if you don't want linters to run on opening a file
  let g:ale_lint_on_enter = 1
  """""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  " let g:ale_echo_cursor = 1
  " let g:ale_echo_msg_error_str = 'Error'
  " let g:ale_echo_msg_warning_str = 'Warning'
  " let g:ale_echo_msg_format = '%s'
  " let g:ale_enabled = 1
  " let g:ale_fix_on_save = 0
  " let g:ale_fixers = {}
  " let g:ale_keep_list_window_open = 1
  " let g:ale_lint_delay = 0
  " let g:ale_lint_on_enter = 1
  " let g:ale_lint_on_save = 1
  " let g:ale_lint_on_text_changed = 'never'
  " let g:ale_linter_aliases = {}
  " let g:ale_linters = {}
  " let g:ale_open_list = 0
  " let g:ale_set_highlights = 1
  " let g:ale_set_loclist = 0
  " let g:ale_set_quickfix = 1
  " let g:ale_list_vertical = 1
  " let g:ale_set_signs = 1
  " let g:ale_sign_column_always = 0
  " let g:ale_sign_error = '>>'
  " let g:ale_sign_offset = 1000000
  " let g:ale_sign_warning = '--'
  " let g:ale_statusline_format = ['%d error(s)', '%d warning(s)', 'OK']
  " let g:ale_warn_about_trailing_whitespace = 1

  " let g:ale_set_loclist=0
  " let g:ale_set_quickfix=0

  function! OpenALEResults()
    let l:bfnum = bufnr('')
    let l:items = ale#engine#GetLoclist(l:bfnum)
    call setqflist([], 'r', {'items': l:items, 'title': 'ALE results'})
    botright cwindow
  endfunction"

  function! RunALELint()
    if empty(ale#engine#GetLoclist(bufnr('')))
      let b:ale_enabled = 1
      augroup ALEProgress
        autocmd!
        autocmd User ALELintPost call OpenALEResults() | au! ALEProgress
      augroup end
      call ale#Queue(0, 'lint_file')
    else
      call OpenALEResults()
    endif
  endfunction
  """""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  "}}}ale
  """""""""""""""""""""""""""""""""""""""""""""""""""""""""""
else
  """""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  "syntastic 配置{{{
  """""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  " let g:syntastic_error_symbol='>>'
  " let g:syntastic_warning_symbol='>'

  let g:syntastic_error_symbol = '❌'
  let g:syntastic_style_error_symbol = '⁉️'
  let g:syntastic_warning_symbol = '⚠️'
  let g:syntastic_style_warning_symbol = '💩'

  highlight link SyntasticErrorSign SignColumn
  highlight link SyntasticWarningSign SignColumn
  highlight link SyntasticStyleErrorSign SignColumn
  highlight link SyntasticStyleWarningSign SignColumn
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


  " if syntastic go error, please open the following line to check the syntastic output
  " let g:syntastic_debug=3

  "" 修改高亮的背景色, 适应主题
  highlight SyntasticErrorSign guifg=white guibg=yellow
  let g:syntastic_enable_highlighting=1
  let g:syntastic_always_populate_loc_list = 1
  let g:syntastic_auto_loc_list = 1
  let g:syntastic_loc_list_height = 5
  let g:syntastic_check_on_open = 1
  let g:syntastic_check_on_wq = 0
  let g:syntastic_enable_highlighting=1

  let g:syntastic_php_checkers = ['php']
  "let g:syntastic_python_checkers=['pyflakes'] " 使用pyflakes,速度比pylint快
  let g:syntastic_python_checkers = ['pylint']
  let g:syntastic_javascript_checkers = ['eslint']
  "let g:syntastic_javascript_checkers = ['jsl', 'jshint']
  let g:syntastic_html_checkers=['eslint']
  let g:syntastic_css_checkers = ['eslint']

  " From the vim-go document but not work for displaying list
  " let g:syntastic_go_checkers = ['golint', 'errcheck']
  " let g:syntastic_go_checkers = ['govet', 'errcheck', 'go']
  let g:syntastic_go_checkers = ['go']

  let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': ['go'] ,'passive_filetypes': ['js'] }
  map <leader>sc :call SyntasticCheck()<CR>
  map <leader>ss :call SyntasticToggleMode()<CR>

  set statusline+=%*
  "}}}
  """""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  "}}}syntastic 配置
  """""""""""""""""""""""""""""""""""""""""""""""""""""""""""
endif
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" loclist {{{
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <Leader>sn :lnext<cr>
nnoremap <Leader>sp :lprevious<cr>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" }}} loclist
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"vim-autoformat.vim 配置{{{
"这里使用astyle格式化c,cpp,cc,java,需要用homebrew安装astyle
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:formatdef_vogon = '"astyle --style=attach --pad-oper"'
let g:formatters_cpp  = ['vogon']
let g:formatters_c    = ['vogon']
let g:formatters_cc   = ['vogon']
let g:formatters_java = ['vogon']
let g:formatters_gofmt = ['vogon']
" The following three lines do not work!!!!!!
" let g:formatdef_eslint = '"eslint -o"'
" let g:formatters_javascript = ['eslint']
"let g:formatdef_clangformat_objc = '"clang-format -style=file"'
let g:formatdef_autopep8 = "'autopep8 - --range '.a:firstline.' '.a:lastline"
let g:formatters_python = ['autopep8']
" au FileType c,cpp,cc,java,python nnoremap <leader>af :Autoformat<CR>
" au BufWrite * :Autoformat
noremap <leader>af :Autoformat<CR>
"au FileType json nnoremap ,af :Autoformat<CR>
"}}}
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" AutoPair 配置{{{
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:AutoPairsMapCR = 0
imap <silent><CR> <CR><Plug>AutoPairsReturn
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" }}} AutoPair
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vimwikilist 配置{{{
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <Leader>ww <Plug>VimwikiIndex
let g:vimwiki_list = [{'path': '~/projects/work/treki',
            \    'path_html': '~/projects/work/treki/vimwiki_html',
            \    'template_path': '~/projects/work/treki/template',
            \    'template_default': "~/projects/work/treki/templates/default.tpl",
            \    "auto_export": 1},{'path': '~/projects/work/kodetrek',
            \    'path_html': '~/projects/work/kodetrek/vimwiki_html',
            \    'template_path': '~/projects/work/kodetrek/template',
            \    'template_default': "~/projects/work/kodetrek/templates/default.tpl",
            \    "auto_export": 1}]
let g:vimwiki_camel_case = 0
let g:vimwiki_folding='list'
map <leader>tt <Plug>VimwikiToggleListItem
let g:vimwiki_use_calendar = 1
" autocmd FileType wiki nmap <silent><buffer> <t-space> <Plug>VimwikiToggleListItem
" autocmd FileType wiki vmap <silent><buffer> <C-y> <Plug>VimwikiToggleListItem
" autocmd FileType wiki vmap <silent><buffer> <C-,> <Plug>VimwikiToggleListItem
" autocmd FileType wiki vmap <silent><buffer> <C-/> VimwikiToggleListItem
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" }}}vimwikilist
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Calendar {{{
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" map ca :Calendar<cr>
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" }}} Calendar
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""
if v:version > 800
  " """"""""""""""""""""""""""""""""""""""""""""""""""""""""""
  " deoplete配置{{{
  " """"""""""""""""""""""""""""""""""""""""""""""""""""""""""
  let g:deoplete#enable_at_startup = 1
  " """"""""""""""""""""""""""""""""""""""""""""""""""""""""""
  " }}}deoplete配置
  " """"""""""""""""""""""""""""""""""""""""""""""""""""""""""
else
  " """"""""""""""""""""""""""""""""""""""""""""""""""""""""""
  " youcompleteme配置{{{
  " """"""""""""""""""""""""""""""""""""""""""""""""""""""""""
  set completeopt=longest,menu    "让Vim的补全菜单行为与一般IDE一致(参考VimTip1228)
  autocmd InsertLeave * if pumvisible() == 0|pclose|endif "离开插入模式后自动关闭预览窗口
  inoremap <expr> <CR>        pumvisible() ? "\<C-y>" : "\<CR>"    "回车即选中当前项
  inoremap <expr> <Down>      pumvisible() ? "\<C-n>" : "\<Down>"
  inoremap <expr> <Up>        pumvisible() ? "\<C-p>" : "\<Up>"
  inoremap <expr> <PageDown>  pumvisible() ? "\<PageDown>\<C-p>\<C-n>" : "\<PageDown>"
  inoremap <expr> <PageUp>    pumvisible() ? "\<PageUp>\<C-p>\<C-n>" : "\<PageUp>"

  "youcompleteme  默认tab  s-tab 和自动补全冲突
  let g:ycm_key_list_select_completion=['<c-n>']
  " let g:ycm_key_list_select_completion = ['<Down>', '<space>']
  "let g:ycm_key_list_previous_completion=['<c-p>']
  let g:ycm_key_list_previous_completion = ['<Up>']
  let g:ycm_confirm_extra_conf=0 "关闭加载.ycm_extra_conf.py提示

  let g:ycm_collect_identifiers_from_tags_files=1 " 开启 YCM 基于标签引擎
  let g:ycm_min_num_of_chars_for_completion=2 " 从第2个键入字符就开始罗列匹配项
  let g:ycm_cache_omnifunc=0  " 禁止缓存匹配项,每次都重新生成匹配项
  let g:ycm_seed_identifiers_with_syntax=1    " 语法关键字补全
  nnoremap <S-r> :YcmForceCompileAndDiagnostics<CR>    "force recomile with syntastic
  " nnoremap <leader>lo :lopen<CR> "open locationlist
  " nnoremap <leader>lc :lclose<CR>   "close locationlist
  inoremap <leader><leader> <C-x><C-o>
  "在注释输入中也能补全
  let g:ycm_complete_in_comments = 1
  "在字符串输入中也能补全
  let g:ycm_complete_in_strings = 1
  "注释和字符串中的文字也会被收入补全
  let g:ycm_collect_identifiers_from_comments_and_strings = 0
  " let g:ycm_semantic_triggers =  {
  "   \   'c' : ['->', '.'],
  "   \   'cpp,objcpp' : ['->', '.', '::'],
  "   \   'perl' : ['->'],
  "   \   'php' : ['->', '::'],
  "   \ }
  nnoremap <leader>yl :YcmCompleter GoToDeclaration<CR>
  nnoremap <leader>yd :YcmCompleter GoToDefinition<CR>
  nnoremap <leader>yg :YcmCompleter GoToDefinitionElseDeclaration<CR>
  " """"""""""""""""""""""""""""""""""""""""""""""""""""""""""
  " }}} youcompleteme
  " """"""""""""""""""""""""""""""""""""""""""""""""""""""""""
endif
" " """"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" " UltiSnips {{{
" " """"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" " better key bindings for UltiSnipsExpandTrigger
" " let g:UltiSnipsExpandTrigger = "<tab>"
" " let g:UltiSnipsSnippetsDir = '~/.vim/UltiSnips'
" let g:UltiSnipsSnippetsDir = '~/.vim/bundle/vim-snippets/UltiSnips'
" let g:UltiSnipsSnippetDirectories=['UltiSnips', '~/.vim/bundle/vim-snippets/snippets/']
" let g:UltiSnipsExpandTrigger="<S-j>"
" let g:UltiSnipsJumpForwardTrigger = "<S-j>"
" let g:UltiSnipsJumpBackwardTrigger = "<S-k>"
" let g:UltiSnipsEditSplit = 'horizontal'

" autocmd FileType javascript UltiSnipsAddFiletypes javascript-node
" autocmd FileType php UltiSnipsAddFiletypes yii
" " let g:UltiSnipsEnableSnipMate = 0
" " """"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" " }}} UltiSnips
" " """"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" " """"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" " snipmate{{{
" " """"""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:snipMate={}
let g:snipMate.scope_aliases={}
let g:snipMate.scope_aliases['php']='php,html,js,css,yii,yii-chtml'
let g:snipMate.scope_aliases['js']='js,css,javascript.node,javascript.es6,javascript.jquery'
" " """"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" " }}} snipmate
" " """"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" listtoggle配置{{{
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:lt_location_list_toggle_map = '<leader>l'
" let g:lt_quickfix_list_toggle_map = '<leader>q'
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" }}} listtoggle
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" "grep{{{
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let Grep_Skip_Files = '*.swp *~ *.class *.jar'
let Grep_Skip_Dirs = 'node_modules dist .git vendor'
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" "}}}
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""
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
" let mapleader=','
if exists(":Tabularize")
    nmap <leader>t= :Tabularize /=<CR>
    vmap <leader>t= :Tabularize /=<CR>
    nmap <leader>t: :Tabularize /:\zs<CR>
    vmap <leader>t: :Tabularize /:\zs<CR>
    vmap <leader>t| :Tabularize /|\zs<CR>
    vmap <leader>t| :Tabularize /|\zs<CR>
endif

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
" }}}tabular settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" "vim-markdown{{{
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:vim_markdown_folding_disabled=1
let g:vim_markdown_folding_style_pythonic=1
let g:vim_markdown_no_default_key_mappings=1
let g:vim_markdown_math=1
let g:vim_markdown_frontmatter=1
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" }}} vim-markdown
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" "cscope{{{
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <leader>fa :call CscopeFindInteractive(expand('<cword>'))<CR>
nnoremap <leader>sl :call ToggleLocationList()<CR>

"s: Find this C symbol
nnoremap  <leader>fs :call CscopeFind('s', expand('<cword>'))<CR>
" g: Find this definition
nnoremap  <leader>fd :call CscopeFind('g', expand('<cword>'))<CR>
" c: Find functions calling this function
nnoremap  <leader>fc :call CscopeFind('c', expand('<cword>'))<CR>
" d: Find functions called by this function
nnoremap  <leader>fg :call CscopeFind('d', expand('<cword>'))<CR>
" t: Find this text string
nnoremap  <leader>ft :call CscopeFind('t', expand('<cword>'))<CR>
" e: Find this egrep pattern
nnoremap  <leader>fe :call CscopeFind('e', expand('<cword>'))<CR>
" f: Find this file
nnoremap  <leader>ff :call CscopeFind('f', expand('<cword>'))<CR>
" i: Find files #including this file
nnoremap  <leader>fi :call CscopeFind('i', expand('<cword>'))<CR>
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" "}}}
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if v:version > 704
  " """""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  " "vim-go {{{
  " """""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  " use goimports for formatting
  let g:go_fmt_command = "goimports"
  "
  " " turn highlighting on
  let g:go_highlight_functions = 1
  let g:go_highlight_methods = 1
  let g:go_highlight_structs = 1
  let g:go_highlight_operators = 1
  let g:go_highlight_build_constraints = 1

  " Open go doc in vertical window, horizontal, or tab
  " au Filetype go nnoremap <leader>v :vsp <CR>:exe "GoDef" <CR>
  " au Filetype go nnoremap <leader>s :sp <CR>:exe "GoDef"<CR>
  " au Filetype go nnoremap <leader>t :tab split <CR>:exe "GoDef"<CR>

  au FileType go nmap <leader>gr <Plug>(go-run)
  au FileType go nmap <leader>gb <Plug>(go-build)
  au FileType go nmap <leader>gt <Plug>(go-test)
  au FileType go nmap <leader>gc <Plug>(go-coverage)

  au FileType go nmap <Leader>ds <Plug>(go-def-split)
  au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
  au FileType go nmap <Leader>dt <Plug>(go-def-tab)

  au FileType go nmap <Leader>gb <Plug>(go-doc-browser)
  " """""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  " "}}} vim-go
  " """""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  " """""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  " "vim-do{{{
  " """""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  let g:do_auto_show_process_window = 1
  " """""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  " "}}} vim-do
  " """""""""""""""""""""""""""""""""""""""""""""""""""""""""""
endif
