"=========================================================================
" DesCRiption: devim for Vim
" Last Change: 2024.06.20 16:03
" Version: 0.12
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
Plug 'Shougo/vimshell.vim'

" Common plugin to process text file save
Plug 'tpope/vim-sensible'

" Display the matching tag in source: tags, { [ (......
Plug 'tmhedberg/matchit'

Plug 'easymotion/vim-easymotion'

" Grep content finder
Plug 'vim-scripts/grep.vim'
Plug 'rking/ag.vim'
" File finder
if has ("python3") || has ("python")
  Plug 'python-mode/python-mode', { 'branch': 'develop'  }
  if v:version >= 800
    Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }
  else
    Plug 'ctrlpvim/ctrlp.vim'
  endif
endif

Plug 'shougo/echodoc.vim'

if executable('cscope')
  Plug 'brookhong/cscope.vim'
endif

" if has('mac')
"  Plug 'lyokha/vim-xkbswitch'
" endif
if v:version >= 800
  Plug 'ludovicchabant/vim-gutentags'
  Plug 'skywind3000/asyncrun.vim'
endif

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Plug 'chrisbra/vim-diff-enhanced'

Plug 'vim-scripts/BufOnly.vim'

" Plug 'thinca/vim-quickrun'
Plug 'sillybun/vim-repl'

Plug 'yggdroot/indentline'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-surround'

" Plug on GitHub repo
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/gv.vim'

" NerdTree series plugin
Plug 'scrooloose/nerdtree' , { 'on': 'NERDTreeToggle' }
Plug 'jistr/vim-nerdtree-tabs'
Plug 'xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'

Plug 'rust-lang/rust.vim'

" Plug to display tag in source files;
" Plug 'taglist.vim'
Plug 'majutsushi/tagbar', { 'on': 'TagbarToggle' }

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

" Just fucking python, which vim is using IN MACOS
Plug 'ianding1/leetcode.vim'
let g:syntastic_python_python_exec = '/usr/local/Cellar/python@3.10/3.10.2/bin/python3'
"Values: 'cpp', 'java', 'python', 'python3', 'csharp', 'javascript', 'ruby', 'swift', 'golang', 'scala', 'kotlin', 'rust'.
let g:leetcode_solution_filetype='cpp'
let g:leetcode_browser='chrome'

" Syntax check for most languages.
if v:version > 800
  Plug 'w0rp/ale'
else
  Plug 'scrooloose/syntastic'
endif

" Autoformat tools
Plug 'Chiel92/vim-autoformat'

Plug 'artur-shaik/vim-javacomplete2'


Plug 'rhysd/vim-clang-format'
" Plug 'MarcWeber/vim-addon-mw-utils'
" Plug 'tomtom/tlib_vim'
" Plug 'garbas/vim-snipmate'
" Plug 'SirVer/ultisnips'
" Plug 'honza/vim-snippets'

Plug 'valloric/listtoggle'

" Programming language plugins
Plug 'mattn/emmet-vim'
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-indent'
Plug 'kana/vim-textobj-syntax'
Plug 'kana/vim-textobj-function', { 'for':['c', 'cpp', 'vim', 'java'] }
Plug 'sgur/vim-textobj-parameter'

"Plug for developing of C and CPP
Plug 'vim-scripts/a.vim'
Plug 'octol/vim-cpp-enhanced-highlight'
" Plug 'cquery-project/cquery'
if executable('cmake')
  Plug 'vhdirk/vim-cmake'
endif

if executable('go')
  Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
endif

" Frontend development
Plug 'pangloss/vim-javascript'
Plug 'maksimr/vim-jsbeautify'
" Plug 'mxw/vim-jsx'
Plug 'ap/vim-css-color'

" Plug for markdown
Plug 'plasticboy/vim-markdown'
Plug 'mzlogin/vim-markdown-toc'
" Plug for latex
Plug 'vim-latex/vim-latex'

" Plug 'goerz/jupytext.vim'
" Plug 'jupyter-vim/jupyter-vim'

" Startup screen
Plug 'mhinz/vim-startify'
" Theme color
Plug 'flazz/vim-colorschemes'
Plug 'morhetz/gruvbox'
" " Two color scheme for vim
" Plug 'tomasr/molokai'
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
" Function for check if plug is loaded by vim-plug
function! PlugLoaded(name)
    return (
        \ has_key(g:plugs, a:name) &&
        \ isdirectory(g:plugs[a:name].dir) &&
        \ stridx(&rtp, g:plugs[a:name].dir) >= 0)
endfunction

" if v:version > 800
"     echom "asyn"
" else
"     echom "syn"
"     echom v:version
" endif
"echom v:version

" begin of user define scripts
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" return OS type, eg: windows, or linux, mac, et.st..{{{
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! CurSys()
    if exists('$MSYSTEM') || has("win16") || has("win32") || has("win64") || has("win95")
        return "windows"
    elseif has('mac')
        return "osx"
    elseif has("unix")
        return "linux"
    endif
endfunction
" For common language hint
" Plug 'valloric/youcompleteme', { 'do': './install.py --clang-completer --java-completer --go-completer' }
if CurSys() == "linux"
  Plug 'Shougo/vimproc.vim', { 'do': 'make' }
  if v:version > 800
    " Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}
    Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
  else
    if has('nvim')
      Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
    else
      Plug 'Shougo/deoplete.nvim'
      Plug 'roxma/nvim-yarp'
      Plug 'roxma/vim-hug-neovim-rpc'
    endif
    Plug 'Shougo/neosnippet.vim'
    Plug 'Shougo/neosnippet-snippets'
  endif
endif
"
" " Setting up the vimrc file
" if CurSys() == "windows"
" let $VIMFILES = $VIM.'/vimfiles'
" elseif CurSys() == "linux"
" let $VIMFILES = $HOME.'/.vim'
" endif
"
" " Font (With Chinese)
" if has("win32")
" set guifont=Inconsolata:h12:cANSI
" endif

" if CurSys() == "osx"
"     nnoremap ,w :exe ':silent !open -a /Applications/Google\ Chrome.app %'<CR>
" endif

" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Color scheme & GUI setting{{{
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set t_Co=256
set background=dark
" Colorscheme molokai
" let g:molokai_original = 1
colorscheme gruvbox

highlight NonText guibg=#060606
highlight Folded  guibg=#0A0A0A guifg=#9090D0

" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" }}}color scheme & GUI setting
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" if has("gui_running")
" else
    " syntax enable
" endif
" Hidding the toolbar
set guioptions-=T
" Hidding the menubar
set guioptions-=m

" Highlight current line and column
au WinLeave * set nocursorline nocursorcolumn
au WinEnter * set cursorline cursorcolumn
set cursorline cursorcolumn

" Auto switch a line.
" set wrapmargin=2
" " Auto switching to a new line when hitting the maximum text number
" set textwidth=80
" " When insert a bracket, quick jump to the bracket quote in the file.
set showmatch
" Set the period on quick jumping.
" set matchtime=2
" 5 line to the previous scrolled buffer
set scrolloff=5
set cmdheight=1
" bottom buffer to show the filename and line number.
" 1: No display (default),
" 2: display it
set laststatus=2
" set statusline=\ %<%F[%1*%M%*%n%R%H]%=\ %y\ %0(%{&fileformat}\ %{&encoding}\
" %c:%l/%L%)\
" No backup on overwriting a file.
set nobackup
" we also want to get rid of accidental trailing whitespace on save
autocmd BufWritePre * :%s/\s\+$//e
syntax on
syntax enable
set nocompatible
" Show line number
set number
" set relativenumber
" highlight the current line
set cursorline
" Open the ruler
set ruler

" To ignore plugin indent changes, instead use:
set autoindent
" Using smart indent on a new line
set cindent
set smartindent

" "Auto swith the pwd to the current file.
" Set autochdir
set helplang=cn
" " Using overwriting when backup
" set backupcopy=yes

" Case insensitive when search, only available on pure lower case inputting.
set ignorecase smartcase
" research on hitting the end of a file
set wrapscan
" Displaying the result dynamically when inputting the content.
set incsearch
" Highlighting the content in searching
set hlsearch

set noerrorbells
" Disable the visual error bell.
" set novisualbell
" Error code
" set t_vb=
set magic
"set noautowrite
" Enabling the buffer switch when the current buffer have unsaved content.
set hidden

" Easy backspace
set backspace=indent,eol,start

" use ',' as the leader key
let mapleader = ","
" let mapleader = "\<Space>"

" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Ctrl+c as the copy on selecting mode {{{
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
" file type setting{{{
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
filetype plugin on

" augroup FiletypeGroup
autocmd BufNewFile,BufRead *.{md,mdwn,mkd,mkdn,mark*} set filetype=markdown
autocmd BufNewFile,BufRead *.{jsx} set filetype=javascript
autocmd BufNewFile,BufRead *.{tpl} set filetype=html
au! BufRead,BufNewFile *.json set filetype=json
au! BufNewFile,BufRead *.cu,*.cuh set filetype=cpp
" autocmd!
" augroup END

" augroup quickfix
    " autocmd!
    " autocmd QuickFixCmdPost [^l]* cwindow
    " autocmd QuickFixCmdPost l*    lwindow
" augroup END

" ----------------------------------------------------------------------
" }}} file type setting
" ----------------------------------------------------------------------
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" source folding setting{{{
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Begin folding
set foldenable
" Indent for folding
set foldmethod=indent
" Folding buffer configuration
" set foldcolumn=0
" set foldclose=all
" No folding on opening a new file (100 as a huge value)
set foldlevel=100
" use space to (un)fold the source fragment
nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" }}}source folding setting
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab
filetype plugin indent on

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
" Multi language configuration {{{
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has("multi_byte")
    " UTF-8 Encode
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
" " Switching the buffers on the screen.
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-gutentags {{{
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if !(has('win32') && $TERM == 'xterm')
let g:gutentags_enabled = 0
endif

"ctags -R --c++-kinds=+px --fields=+iaS --extras=+q
set tags=./tags;,tags

" gutentags: stopping the recuring to the upper directory when hitting the
" following directory
let g:gutentags_project_root = ['.root', '.svn', '.git', '.hg', '.project']
" extension for the temporary file
let g:gutentags_ctags_tagfile = '.tags'
" Caching all the generated tag files to the ~/.cache/tags
let s:vim_tags = expand('~/.cache/tags')
let g:gutentags_cache_dir = s:vim_tags

" ctags parameters
let g:gutentags_ctags_extra_args = ['--fields=+niazS', '--extra=+q']
let g:gutentags_ctags_extra_args += ['--c++-kinds=+px']
let g:gutentags_ctags_extra_args += ['--c-kinds=+px']
" let g:gutentags_ctags_extra_args += ['--output-format=e-ctags']

" let g:gutentags_trace = 1

if !isdirectory(s:vim_tags)
    silent! call mkdir(s:vim_tags, 'p')
endif
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" }}}
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" " plugin - rust.vim {{{
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:rustfmt_autosave = 1
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" }}}
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" " ----------------------------------------------------------------
" " plugin - tagbar.vim
" " ----------------------------------------------------------------
let g:tagbar_ctags_bin='/usr/bin/ctags'
let g:tagbar_width=30
let g:tagbar_autofocus=1
" autocmd BufReadPost *.cpp,*.c,*.h,*.hpp,*.cc,*.cxx,*.js,*.jsx,*.go,*.java,*.py call tagbar#autoopen()
nmap <Leader>t :TagbarToggle<CR>
" " ----------------------------------------------------------------
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""
" gitgutter {{{
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <Leader>tg :GitGutterToggle<CR>
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""
" }}} gitgutter
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""
" "AsyncRun{{{
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""
if v:version > 800
  let g:asyncrun_open = 8
  nnoremap <Leader>as :AsyncRun<space>
endif
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""
" "}}}AsyncRun
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""

" " Shortcut on opening current vimrc
" nnoremap <leader>ev  :e $MYVIMRC<cr>
" " Refresh the vimrc
" nnoremap<leader>sv  :source $MYVIMRC<cr>

" """"""""""""""""""""""""""""
" vim-bufferline {{{
" """"""""""""""""""""""""""""
let g:bufferline_echo = 1
let g:bufferline_active_buffer_left = '['
let g:bufferline_active_buffer_right = ']'
" """"""""""""""""""""""""""""
" }}} vim-bufferline
" """"""""""""""""""""""""""""
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" " vim-airline {{{
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:airline_theme='molokai'
" Using the fone with the powerline patched.
let g:airline_powerline_fonts = 1

" Enable the tabline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'default'

" Disable the display of the order of blank symbol.
let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#whitespace#symbol = '!'
" Display the buffers' order in the tabline
let g:airline#extensions#tabline#buffer_nr_show = 1

let g:airline#extensions#tagbar#enabled = 0
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" }}}
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  Cmd for switching buffers {{{
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <leader>. :bnext<CR>
nnoremap <leader>m :bprevious<CR>
nnoremap <leader><space> :b#<CR>
nnoremap <Leader>o :BufOnly<CR>
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  }}}Cmd for switching buffers
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" " Shortcut for Tab actions {{{
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" nnoremap <C-TAB> :tabnext<CR>
" nnoremap <C-S-TAB> :tabprev<CR>
" nnoremap <leader>1 :set filetype=xhtml<CR>
" nnoremap <leader>2 :set filetype=css<CR>
" nnoremap <leader>3 :set filetype=javascript<CR>
" nnoremap <leader>4 :set filetype=php<CR>
"
" set fileformats=unix,dos,mac
" nmap <leader>fd :se fileformat=dos<CR>
" nmap <leader>fu :se fileformat=unix<CR>
"
" " use Ctrl+[l|n|p|cc] to list|next|previous|jump to count the result
" " map <C-x>l <ESC>:cl<CR>
" " map <C-x>n <ESC>:cn<CR>
" " map <C-x>p <ESC>:cp<CR>
" " map <C-x>c <ESC>:cc<CR>
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" " }}}Shortcut for Tab actions
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" " json file setting{{{
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""
augroup json_autocmd
    autocmd!
    autocmd FileType json set autoindent
    autocmd FileType json set formatoptions=tcq2l
    " autocmd FileType json set textwidth=80 shiftwidth=2
    autocmd FileType json set shiftwidth=2
    autocmd FileType json set softtabstop=2 tabstop=2
    autocmd FileType json set expandtab
    autocmd FileType json set foldmethod=syntax
augroup END
" autoformat the json file.
" autocmd FileType json noremap <buffer> <leader>af :call JsBeautify()<cr>
" autocmd filetype json noremap <buffer> <leader>af <Esc>:%!python -m json.tool<CR>
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" " }}}
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""
if filereadable(".vimpath")
    source .vimpath
    " adding following cmd to enable more search path
    " set path+=/home/admin/dev/sql/sql-parser/**
endif

" """"""""""""""""""""""""""""
" JavaScript section {{{
" """"""""""""""""""""""""""""
" " javascript file setting for javascript airbnb style guide
" autocmd FileType javascript set tabstop=4 shiftwidth=4 softtabstop=4 expandtab
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

let b:javascript_fold=1
" enable the javascript builtin dom/html/css
let javascript_enable_domhtmlcss=1

" au FileType javascript call JavaScriptFold()
" au FileType javascript setl fen
" """"""""""""""""""""""""""""
" => vim-jsbeautify{{{
" """"""""""""""""""""""""""""
autocmd FileType javascript noremap <buffer> <leader>af :call JsBeautify()<cr>
" for html
autocmd FileType html noremap <buffer> <leader>af :call HtmlBeautify()<cr>
" for css or scss
autocmd FileType css noremap <buffer> <leader>af :call CSSBeautify()<cr>
" Beatutify the selected section
autocmd FileType javascript vnoremap <buffer> <leader>af :call RangeJsBeautify()<cr>
autocmd FileType html vnoremap <buffer> <leader>af :call RangeHtmlBeautify()<cr>
autocmd FileType css vnoremap <buffer> <leader>af :call RangeCSSBeautify()<cr>
" au FileType javascript nmap <leader>gr :exec '!node' shellescape(@%, 1)<cr>
" """"""""""""""""""""""""""""
" }}} JavaScript section
" """"""""""""""""""""""""""""
" """"""""""""""""""""""""""""
" => Python section
" """"""""""""""""""""""""""""
let python_highlight_all = 1
au FileType python syn keyword pythonDecorator True None False self
" temp commnent for checking
" au FileType python nmap <leader>gr :exec '!python' shellescape(@%, 1)<cr>

" Shortcut to run the script.
" let g:pymode_python = 'python3'

"  map <leader>gr :call CompileRunGcc()<CR>
" func! CompileRunGcc()
"     exec "w"
"     if &filetype == 'c'
"         exec "!g++ % -o %<"
"         exec "! %<"
"     elseif &filetype == 'cpp'
"         exec "!g++ % -o %<"
"         exec "! %<"
"     elseif &filetype == 'java'
"         exec "!javac %"
"         exec "!java %<"
"     elseif &filetype == 'py'
"         exec "!python"
"     elseif &filetype == 'sh'
"         :!%
"     endif
" endfunc
" }}}
" """"""""""""""""""""""""""""
" python-mode {{{
" """"""""""""""""""""""""""""
" Python configurations: no tab, indent=4 etc.
autocmd FileType python set tabstop=4 shiftwidth=4 expandtab
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
" " solving the conflicts with youcompleteme
" let g:pymode_rope_complete_on_dot = 0
autocmd FileType python noremap <buffer> <leader>cf :PymodeLintAuto<CR>
" """"""""""""""""""""""""""""
" }}} python-mode
" """"""""""""""""""""""""""""
" """"""""""""""""""""""""""""
"  => python autopep8{{{
" """"""""""""""""""""""""""""

" autocmd FileType python noremap <buffer> <leader>af :call Autopep8()<CR>
" " let g:autopep8_ignore="E501,W293"
" let g:autopep8_select="E501,W293"
" let g:autopep8_pep8_passes=100
" let g:autopep8_aggressive=1
let g:autopep8_indent_size=2
" let g:autopep8_diff_type='vertical'
" set modifiable
" map <leader>gr :call RunPython()<CR>
" function RunPython()
"     let mp = &makeprg
"     let ef = &errorformat
"     let exeFile = expand("%:t")
"     setlocal makeprg=python\ -u
"     set efm=%C\ %.%#,%A\ \ File\ \"%f\"\\,\ line\ %l%.%#,%Z%[%^\ ]%\\@=%m
"     silent make %
"     copen
"     let &makeprg = mp
"     let &errorformat = ef
" endfunction
"""""""""""""""""""""""""""""""
" }}} python autopep8
"""""""""""""""""""""""""""""""
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" plugin - taglist.vim show function list, based on ctags {{{
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" " if CurSys() == "windows"
" " let Tlist_Ctags_Cmd = '"'.$VIMRUNTIME.'/ctags.exe"'
" " elseif CurSys() == "linux"
" let Tlist_Ctags_Cmd = '/usr/local/bin/ctags'
" " endif
" nnoremap <c-,> :TlistToggle<CR>
" " Only show one file tags, disable multiple files.
" let Tlist_Show_One_File = 1
" " Exit if quit the tag buffer as the last active buffer
" let Tlist_Exit_OnlyWindow = 1
" " Shot tags at right
" let Tlist_Use_Right_Window = 1
" " auto folding the list for the file whichi is not the current active buffer in editing
" let Tlist_File_Fold_Auto_Close=1
" let Tlist_Auto_Open = 0
" let Tlist_Auto_Update = 1
" let Tlist_Hightlight_Tag_On_BufEnter = 1
" let Tlist_Enable_Fold_Column = 0
" let Tlist_Process_File_Always = 1
" let Tlist_Display_Prototype = 0
" let Tlist_Compact_Format = 1
" " plugin - mark.vim color the tags
" " \m mark or unmark the word under (or before) the cursor
" " \r manually input a regular expression: For searching
" " \n clear this mark (i.e. the mark under the cursor), or clear all
" highlighted marks .
" " \* go to the next of the current MarkWord
" " \# go to previouse of the current Markword
" " \/ go to the next of all the MarkWord(s)
" " \? go to the previous of all the MarkWord(s)
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" }}} plugin - taglist.vim show function list, based on ctags
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-indentline config {{{
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:indentLine_color_term = 239
let g:indentLine_char = '¦'
let g:indentLine_concealcursor = 'inc'
let g:indentLine_conceallevel = 2
let g:indentLine_enabled = 0
" none X terminal
" let g:indentLine_color_tty_light = 7 " (default: 4)
" let g:indentLine_color_dark = 1 " (default: 2)
"" Background (Vim, GVim)
" let g:indentLine_bgcolor_term = 202
" let g:indentLine_bgcolor_gui = '#FF5F00'"
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" }}}vim-indentline config
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERDTree Config{{{
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" " plugin - NERD_tree.vim
" " :NERDtree :Open NERD_tree :NERDtreeClose :Close NERD_tree
" " o Open/Close a file/directory
" " t Open on the tab
" " T Open on the backend tab.
" " ! Run the file
" " p Go to the parent directory.
" " P Go to the root
" " K Go to the first node
" " J Go to the last node.
" " u Open the parent directory
" " m Menu for operating a node (Add/Delete/Move)
" " r Refresh the current directoy (recursive)
" " R Refresh the current directoy's parent (recursive)
map <leader>n :NERDTreeToggle<CR>
"imap <F3> <ESC>:NERDTreeToggle<CR>
map <C-i> :NERDTreeFind<CR>
let NERDChristmasTree=1
let NERDTreeChDirMode=2
let NERDTreeHighlightCursorline=0
" Showing the bookmark
let NERDTreeShowBookmarks=1
" Hidding the help board.
let NERDTreeMinimalUI=1
" Logo disploay
let NERDTreeDirArrows=1
" Not show the hidden files.
let NERDTreeShowHidden=0 "显示隐藏文件
" Auto enabling on Open/Quit
let NERDTreeQuitOnOpen=1
" autocmd VimEnter * NERDTree

" function! NERDTree_Start()
" exec 'NERDTree'
" endfunction

function! NERDTree_IsValid()
    return 1
endfunction

" NERDTree tabs configurations
" Show line number
let NERDTreeShowLineNumbers=1
let NERDTreeAutoCenter=1
let NERDTreeWinSize=40
" Share the nerdtree when start a terminal.
let g:nerdtree_tabs_open_on_console_startup=0
" Skipping the following files.
let NERDTreeIgnore=['\.pyc','\~$','\.swp','\.class']

" NERDTree git configuration
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
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"}}} NERDTree
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERDCommenter.vim configuration{{{
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" plugin - NERD_commenter.vim
" [count],cc : Add comment in the per-line style
" [count],cu : uncomment the lines
" [count],cm : Auto comment on the lines as blocks (7,cm)
" ,cA        : Insert/* */ on the end of a file
"-----------------------------------------------------------------
" One black between the comment character and the content of thc comment.
let NERDSpaceDelims=1
" Better displaying on multiple lines comments
let NERDCompactSexyComs=1
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"}}}NERDCommenter.vim configuration
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" " plugin - matchit.vim
" " % Match jump to next g% Reverse Matchi jump
" " [% Go to the head of a block ]% Go to the end of a block.
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Multi-cursor{{{
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Default mapping for vim-multi-cursor
let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" }}}multi-cursor
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" fzf {{{
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set rtp+=~/.fzf
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"}}}fzf
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ctrlp config{{{ List for skipping as exceptions
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" \ 'dir':  '\v[\/]\.(git|hg|svn|rvm|dist)$',
let g:ctrlp_map = '<leader><leader>p'
" let g:ctrlp_map = '<c-p>'
let g:ctrlp_custom_ignore = {
            \ 'dir':  '\.git$\|\.hg$\|\.svn$\|\.rvm$\|vendor$\|bower_components$\|node_modules$\|dist$\|node_modules$\|project_files$\|test$\|target$',
            \ 'file': '\v\.(exe|so|dll|zip|tar|tar.gz|pyc|swp|class)$',
            \ }
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" }}} ctrlp config
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" "cscope{{{
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if executable('cscope')

  " cscope -Rbkq
  let g:cscope_silent = 1

  set csprg=cscope
  set csto=0
  set cst
  set nocsverb
  " add any database in current directory
  if filereadable("cscope.out")
      cs add cscope.out
      " else add database pointed to by environment
  elseif $CSCOPE_DB != ""
      cs add $CSCOPE_DB
  endif
  set csverb
  nnoremap <leader>fa :call CscopeFindInteractive(expand('<cword>'))<CR>
  nnoremap <leader>ll :call ToggleLocationList()<CR>

  "s: Find this C symbol
  nnoremap  <leader>gs :call CscopeFind('s', expand('<cword>'))<CR>
  " g: Find this definition
  nnoremap  <leader>gd :call CscopeFind('g', expand('<cword>'))<CR>
  " c: Find functions calling this function
  nnoremap  <leader>gc :call CscopeFind('c', expand('<cword>'))<CR>
  " d: Find functions called by this function
  nnoremap  <leader>gg :call CscopeFind('d', expand('<cword>'))<CR>
  " t: Find this text string
  nnoremap  <leader>gt :call CscopeFind('t', expand('<cword>'))<CR>
  " e: Find this egrep pattern
  nnoremap  <leader>ge :call CscopeFind('e', expand('<cword>'))<CR>
  " f: Find this file
  nnoremap  <leader>gf :call CscopeFind('f', expand('<cword>'))<CR>
  " i: Find files #including this file
  nnoremap  <leader>gi :call CscopeFind('i', expand('<cword>'))<CR>
endif
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" "}}}
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" LeaderF config{{{
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:Lf_ShortcutF = '<c-p>'
noremap <Leader>fv :LeaderfFunction!<cr>
noremap <Leader>fb :LeaderfBuffer<cr>
noremap <Leader>ft :LeaderfTag<cr>
noremap <Leader>fm :LeaderfMru<cr>
noremap <Leader>fl :LeaderfLine<cr>
noremap <Leader>ff :LeaderfFile<cr>

let g:Lf_StlSeparator = { 'left': '', 'right': '', 'font': '' }
let g:Lf_RootMarkers = ['.project', '.root', '.svn', '.git', '.hg']
let g:Lf_WorkingDirectoryMode = 'Ac'
let g:Lf_WindowHeight = 0.30
let g:Lf_CacheDirectory = expand('~/.vim/cache')
let g:Lf_ShowRelativePath = 0
let g:Lf_HideHelp = 1
let g:Lf_StlColorscheme = 'powerline'
let g:Lf_PreviewResult = {'Function':0, 'BufTag':0}
let g:Lf_UseCache = 0

let g:Lf_NormalMap = {
	\ "File":   [["<ESC>", ':exec g:Lf_py "fileExplManager.quit()"<CR>']],
	\ "Buffer": [["<ESC>", ':exec g:Lf_py "bufExplManager.quit()"<CR>']],
	\ "Mru":    [["<ESC>", ':exec g:Lf_py "mruExplManager.quit()"<CR>']],
	\ "Tag":    [["<ESC>", ':exec g:Lf_py "tagExplManager.quit()"<CR>']],
	\ "Function":    [["<ESC>", ':exec g:Lf_py "functionExplManager.quit()"<CR>']],
	\ "Colorscheme":    [["<ESC>", ':exec g:Lf_py "colorschemeExplManager.quit()"<CR>']],
	\ }
" let g:Lf_ShortcutF = '<c-p>'
" let g:Lf_ShortcutB = '<m-n>'
" noremap <c-n> :LeaderfMru<cr>
" noremap <m-p> :LeaderfFunction!<cr>
" noremap <m-n> :LeaderfBuffer<cr>
" noremap <m-m> :LeaderfTag<cr>
" let g:Lf_StlSeparator = { 'left': '', 'right': '', 'font': '' }
"
" let g:Lf_RootMarkers = ['.project', '.root', '.svn', '.git']
" let g:Lf_WorkingDirectoryMode = 'Ac'
" let g:Lf_WindowHeight = 0.30
" let g:Lf_CacheDirectory = expand('~/.vim/cache')
" let g:Lf_ShowRelativePath = 0
" let g:Lf_HideHelp = 1
" let g:Lf_StlColorscheme = 'powerline'
" let g:Lf_PreviewResult = {'Function':0, 'BufTag':0}
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" }}}LeaderF config
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ag config {{{
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if executable('ag')
    " Use Ag over Grep
    set grepprg=ag\ --nogroup\ --nocolor
    " Use ag in CtrlP for listing files.
    let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
    " Ag is fast enough that CtrlP doesn't need to cache
    let g:ctrlp_use_caching = 0
endif
map <leader>ag :Ag!<space>
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" }}} ag config
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"xkbswitch {{{
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" if has('mac')
  " let g:XkbSwitchEnabled = 1
" endif
" -----------------------------------------------------------
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"}}}xkbswitch
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Easymotion {{{
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"let g:EasyMotion_leader_key = 'f'
let g:EasyMotion_smartcase = 1
"let g:EasyMotion_startofline = 0 " keep cursor colum when JK motion
map <Leader><leader>h <Plug>(easymotion-linebackward)
map <Leader><Leader>j <Plug>(easymotion-j)
map <Leader><Leader>k <Plug>(easymotion-k)
map <Leader><leader>l <Plug>(easymotion-lineforward)
" Repeat the previous operaton. ******* Good tools ******
map <Leader><leader>. <Plug>(easymotion-repeat)
" <Leader>f{char} to move to {char}
" map  <Leader>f <Plug>(easymotion-bd-f)
" nmap <Leader>f <Plug>(easymotion-overwin-f)

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
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" }}}Easymotion config
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if v:version > 800
  """""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  "ale {{{
  """""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  "set statusline+=%#warningmsg#
  " set statusline+=%{ALEGetStatusLine()}
  "set statusline=%{LinterStatus()}
  let g:airline#extensions#ale#enabled = 1

  highlight clear ALEErrorSign
  highlight clear ALEWarningSign

  nmap sp <Plug>(ale_previous_wrap)
  nmap sn <Plug>(ale_next_wrap)
  nmap <Leader>sc :ALEToggle<CR>
  nmap <Leader>sd :ALEDetail<CR>

  let g:ale_sign_column_always = 1
  let g:ale_sign_error = '✗'
  let g:ale_sign_warning = 'ï'
  " '❌' '⁉️''⚠️''💩'
  let g:ale_statusline_format = ['⨉ %d error(s)', '⚠ %d warning(s)', '⬥ ok']
  " let g:ale_statusline_format = ['%d error(s)', '%d warning(s)', 'OK']

  let g:ale_set_highlights = 1

  let g:#extensions#ale#error_symbol = 1
  let g:#extensions#ale#warning_symbol = 1

  let g:ale_set_loclist = 0
  let g:ale_set_quickfix = 1
  let g:ale_open_list = 0
  " Set this if you want to.
  " This can be useful if you are combining ALE with
  " some other plugin which sets quickfix errors, etc.
  let g:ale_keep_list_window_open = 1
  let g:ale_list_window_size = 5

  " Write this in your vimrc file
  let g:ale_lint_on_text_changed = 'never'

  let g:ale_linters = {'jsx': ['stylelint', 'eslint'], 'py':['flake8'], 'c++':['clang'], 'c':['clang'], 'java':['javac']}
" let g:ale_cpp_clang_options = '-std=c++14 -Wall -nostdinc++ -isystem /usr/local/Cellar/llvm/12.0.0_1/include/c++/v1/'
" Useful reference
" let g:ale_c_clang_options='-I' . getcwd() . '/autil/'
" let g:ale_cpp_clang_options='-I' . getcwd() . '/autil/
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
  "syntastic {{{
  """""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  let g:syntastic_error_symbol='✗'
  let g:syntastic_warning_symbol='!'

  let g:ale_sign_error = '✗'
  let g:ale_sign_warning = 'ï'
  " let g:syntastic_error_symbol = '❌'
  " let g:syntastic_style_error_symbol = '⁉️'
  " let g:syntastic_warning_symbol = '⚠️'
  " let g:syntastic_style_warning_symbol = '💩'

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

  " " Background color on highlighting block
  highlight SyntasticErrorSign guifg=white guibg=yellow
  let g:syntastic_enable_highlighting=1
  " let g:syntastic_always_populate_loc_list = 1
  let g:syntastic_auto_loc_list = 1
  let g:syntastic_loc_list_height = 5
  let g:syntastic_check_on_open = 1
  let g:syntastic_check_on_wq = 1
  let g:syntastic_enable_highlighting=1

  let g:syntastic_php_checkers = ['php']
  " pyflakes, which may quicker than pylint.
  "let g:syntastic_python_checkers=['pyflakes']
  let g:syntastic_python_checkers = ['pylint']
  let g:syntastic_javascript_checkers = ['eslint']
  "let g:syntastic_javascript_checkers = ['jsl', 'jshint']
  let g:syntastic_html_checkers=['eslint']
  let g:syntastic_css_checkers = ['eslint']

  " start for java config
  " let g:syntastic_java_javac_executable = '~/.vim/plugged/syntastic/syntax_checkers/java/javac.vim'
  let g:syntastic_java_checkers = [ "javac" ]
  if !exists('g:syntastic_java_javac_options')
      let g:syntastic_java_javac_options = '-Xlint'
  endif

  if !exists('g:syntastic_java_javac_classpath')
      let g:syntastic_java_javac_classpath = $JAVA_HOME"/lib/*.jar\n./src";
  endif

  if !exists('g:syntastic_java_maven_executable')
      let g:syntastic_java_maven_executable = 'mvn'
  endif

  " if !exists('g:syntastic_java_maven_options')
      " let g:syntastic_java_maven_options = ''
  " endif

  if !exists('g:syntastic_java_javac_delete_output')
      let g:syntastic_java_javac_delete_output = 1
  endif

  if !exists('g:syntastic_java_javac_autoload_maven_classpath')
      let g:syntastic_java_javac_autoload_maven_classpath = 1
  endif
  " end for java config

  " From the vim-go document but not work for displaying list
  " let g:syntastic_go_checkers = ['golint', 'errcheck']
  " let g:syntastic_go_checkers = ['govet', 'errcheck', 'go']
  let g:syntastic_go_checkers = ['go']

  let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': ['go'] ,'passive_filetypes': ['js'] }
  map <leader>sc :call SyntasticCheck()<CR>
  map <leader>ss :call SyntasticToggleMode()<CR>

  set statusline+=%*
  """""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  "}}}syntastic
  """""""""""""""""""""""""""""""""""""""""""""""""""""""""""
endif
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" loclist {{{
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" nnoremap <Leader>ln :lnext<cr>
" nnoremap <Leader>lp :lprevious<cr>
nnoremap <C-j> :lnext<cr>
nnoremap <C-k> :lprevious<cr>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" }}} loclist
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-autoformat config{{{
" Formatting the c/cpp/cc/java faile with astyle
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if executable('astyle')
  let g:formatdef_baselint  = '"astyle --style=google"'
endif
" let g:formatdef_vogon = '"astyle --style=attach --pad-oper"'
let g:formatters_cpp    = ['baselint']
let g:formatters_c      = ['baselint']
let g:formatters_cc     = ['baselint']
let g:formatters_objc   = ['baselint']
let g:formatters_java   = ['baselint']

" The following three lines do not work!!!!!!
" let g:formatdef_eslint = '"eslint -o"'
" let g:formatters_javascript = ['eslint']
"let g:formatdef_clangformat_objc = '"clang-format -style=file"'
let g:formatdef_autopep8 = "'autopep8 - --range '.a:firstline.' '.a:lastline"
let g:formatters_python = ['autopep8']
" au FileType c,cpp,cc,java,python nnoremap <leader>af :Autoformat<CR>
" au BufWrite * :Autoformat
autocmd FileType python vnoremap <buffer> <leader>af :Autoformat<cr>
" noremap <leader>af :Autoformat<CR>
"au FileType json nnoremap ,af :Autoformat<CR>
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" }}}vim-autoformat config
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" " """"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" " youcompleteme {{{
" " """"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" " Aligh the menu of the youcompleteme with other IDE(VimTip1228?)
" set completeopt=longest,menu
" "Auto close the preview buffer when quit the insert mode.
" autocmd InsertLeave * if pumvisible() == 0|pclose|endif
" " CR as the default shortcut to select the current option.
" inoremap <expr> <CR>        pumvisible() ? "\<C-y>" : "\<CR>"
" inoremap <expr> <Down>      pumvisible() ? "\<C-n>" : "\<Down>"
" inoremap <expr> <Up>        pumvisible() ? "\<C-p>" : "\<Up>"
" inoremap <expr> <PageDown>  pumvisible() ? "\<PageDown>\<C-p>\<C-n>" : "\<PageDown>"
" inoremap <expr> <PageUp>    pumvisible() ? "\<PageUp>\<C-p>\<C-n>" : "\<PageUp>"

" " tab as the default short cut for conflicts?
" let g:ycm_key_list_select_completion=['<C-n>']
" " let g:ycm_key_list_select_completion = ['<Down>', '<space>']
" let g:ycm_key_list_previous_completion=['<S-n>']
" "let g:ycm_key_list_previous_completion = ['<Up>']
" " Close the hint for loading .ycm_extra_conf.py
" let g:ycm_confirm_extra_conf=0
" Open YCM based on the tag engine
" let g:ycm_collect_identifiers_from_tags_files=1
" " Show the hints from the second input character.
" let g:ycm_min_num_of_chars_for_completion=2
" " Disable the cached hints, Generating the new hints every time.
" let g:ycm_cache_omnifunc=0
" " Keyword hint based on the syntax
" let g:ycm_seed_identifiers_with_syntax=1
" "force recomile with syntastic
" nnoremap <S-r> :YcmForceCompileAndDiagnostics<CR>
" " nnoremap <leader>lo :lopen<CR> "open locationlist
" " nnoremap <leader>lc :lclose<CR>   "close locationlist
" inoremap <leader><leader> <C-x><C-o>
" " Hint on the comments.
" let g:ycm_complete_in_comments = 1
" let g:ycm_complete_in_strings = 1
" " Cache the symbol on the inputted comments.
" let g:ycm_collect_identifiers_from_comments_and_strings = 0
" " let g:ycm_semantic_triggers =  {
" "   \   'c' : ['->', '.'],
" "   \   'cpp,objcpp' : ['->', '.', '::'],
" "   \   'perl' : ['->'],
" "   \   'php' : ['->', '::'],
" "   \ }
" nnoremap <leader>yl :YcmCompleter GoToDeclaration<CR>
" nnoremap <leader>yd :YcmCompleter GoToDefinition<CR>
" nnoremap <leader>yg :YcmCompleter GoToDefinitionElseDeclaration<CR>
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" " }}} youcompleteme
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" deocomplete {{{
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:deoplete#enable_at_startup = 1
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" }}}deocomplete
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" " neocomplete {{{
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" " Plugin key-mappings.
" " Note: It must be "imap" and "smap".  It uses <Plug> mappings.
" imap <C-k>     <Plug>(neosnippet_expand_or_jump)
" smap <C-k>     <Plug>(neosnippet_expand_or_jump)
" xmap <C-k>     <Plug>(neosnippet_expand_target)
"
" " SuperTab like snippets behavior.
" " Note: It must be "imap" and "smap".  It uses <Plug> mappings.
" "imap <expr><TAB>
" " \ pumvisible() ? "\<C-n>" :
" " \ neosnippet#expandable_or_jumpable() ?
" " \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
" smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
" \ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
"
" " For conceal markers.
" if has('conceal')
"   set conceallevel=2 concealcursor=niv
" endif
"
" " Enable snipMate compatibility feature.
" let g:neosnippet#enable_snipmate_compatibility = 1
"
" " Tell Neosnippet about the other snippets
" let g:neosnippet#snippets_directory='~/.vim/plugged/vim-snippets/snippets'
"
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" " }}} neocomplete
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" coc {{{
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" use <tab> for trigger completion and navigate to the next complete item
if PlugLoaded('neoclide/coc.nvim')
  function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~ '\s'
  endfunction

  inoremap <silent><expr> <TAB>
        \ pumvisible() ? "\<C-n>" :
        \ <SID>check_back_space() ? "\<TAB>" :
        \ coc#refresh()

  " Make <CR> auto-select the first completion item and notify coc.nvim to
  " format on enter, <cr> could be remapped by other vim plugin
  inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                                \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

  " Use `[g` and `]g` to navigate diagnostics
  " Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
  nmap <silent> [g <Plug>(coc-diagnostic-prev)
  nmap <silent> ]g <Plug>(coc-diagnostic-next)

  " GoTo code navigation.
  nmap <silent> cgd <Plug>(coc-definition)
  nmap <silent> cgy <Plug>(coc-type-definition)
  nmap <silent> cgi <Plug>(coc-implementation)
  nmap <silent> cgr <Plug>(coc-references)

  " Use K to show documentation in preview window.
  nnoremap <silent> K :call <SID>show_documentation()<CR>

  function! s:show_documentation()
    if (index(['vim','help'], &filetype) >= 0)
      execute 'h '.expand('<cword>')
    elseif (coc#rpc#ready())
      call CocActionAsync('doHover')
    else
      execute '!' . &keywordprg . " " . expand('<cword>')
    endif
  endfunction

  " Highlight the symbol and its references when holding the cursor.
  autocmd CursorHold * silent call CocActionAsync('highlight')

  " Symbol renaming.
  nmap <leader>rn <Plug>(coc-rename)

  " Formatting selected code.
  xmap <leader>f  <Plug>(coc-format-selected)
  nmap <leader>f  <Plug>(coc-format-selected)

  augroup mygroup
    autocmd!
    " Setup formatexpr specified filetype(s).
    autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
    " Update signature help on jump placeholder.
    autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
  augroup end

  " Applying codeAction to the selected region.
  " Example: `<leader>aap` for current paragraph
  xmap <leader>a  <Plug>(coc-codeaction-selected)
  nmap <leader>a  <Plug>(coc-codeaction-selected)

  " Remap keys for applying codeAction to the current buffer.
  nmap <leader>ac  <Plug>(coc-codeaction)
  " Apply AutoFix to problem on the current line.
  nmap <leader>qf  <Plug>(coc-fix-current)
  " """"""""""""""""""""""""""""""""""""""""""""""""""""""""""
endif
" }}} coc
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" UltiSnips {{{
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" better key bindings for UltiSnipsExpandTrigger
" let g:UltiSnipsSnippetDirectories=['UltiSnips', '~/.vim/plugged/vim-snippets/snippets/']
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
" let g:UltiSnipsJumpForwardTrigger="<c-b>"
" let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
" "let g:UltiSnipsEditSplit = 'horizontal'
" "let g:UltiSnipsSnippetsDir = '~/.vim/plugged/vim-snippets/UltiSnips'
autocmd FileType javascript UltiSnipsAddFiletypes javascript-node
" autocmd FileType php UltiSnipsAddFiletypes yii
" let g:UltiSnipsEnableSnipMate = 0
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" }}} UltiSnips
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" " snipmate{{{
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" let g:snipMate={}
" let g:snipMate.scope_aliases={}
" let g:snipMate.scope_aliases['php']='php,html,js,css,yii,yii-chtml'
" let g:snipMate.scope_aliases['js']='js,css,javascript.node,javascript.es6,javascript.jquery'
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" " }}} snipmate
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" listtoggle {{{
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:lt_location_list_toggle_map = '<leader>l'
let g:lt_quickfix_list_toggle_map = '<leader>q'
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" }}} listtoggle
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" "grep{{{
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""
let Grep_Skip_Files = '*.swp *~ *.class *.jar'
let Grep_Skip_Dirs = 'node_modules dist .git vendor'
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" "}}}
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""
"emmet.vim {{{
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
"}}}emmet.vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-cpp-enhanced-highlight {{{
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_experimental_simple_template_highlight = 1
let g:cpp_experimental_template_highlight = 1
let g:cpp_concepts_highlight = 1
let g:cpp_no_function_highlight = 1
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" }}} vim-cpp-enhanced-highlight
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
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""
" }}}tabular settings
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""
" "vim-quickrun {{{
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""
" let g:quickrun_no_default_key_mappings = 1
" nmap <Leader>r <Plug>(quickrun)
let g:repl_program = {
      \   'python': 'python',
      \   'default': 'zsh',
      \   'r': 'R',
      \   'lua': 'lua',
      \   }
let g:repl_predefine_python = {
      \   'numpy': 'import numpy as np',
      \   'matplotlib': 'from matplotlib import pyplot as plt'
      \   }
let g:repl_cursor_down = 1
let g:repl_python_automerge = 1
let g:repl_ipython_version = '7'
nnoremap <leader>rs :REPLToggle<Cr>
" run here
autocmd Filetype python nnoremap <leader>rh <Esc>:REPLDebugStopAtCurrentLine<Cr>
" step into
autocmd Filetype python nnoremap <leader>ri <Esc>:REPLPDBN<Cr>
" step over
autocmd Filetype python nnoremap <leader>rn <Esc>:REPLPDBS<Cr>
let g:repl_position = 3
" let g:repl_width = None
" let g:repl_height = None
let g:sendtorepl_invoke_key = "<leader>w"
let g:repl_position = 0
let g:repl_stayatrepl_when_open = 0
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" "}}}
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" " vim-easy-align settings {{{
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" " Start interactive EasyAlign in visual mode (e.g. vipga)
" xmap ga <Plug>(EasyAlign)
" " Start interactive EasyAlign for a motion/text object (e.g. gaip)
" nmap ga <Plug>(EasyAlign)
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" " " }}}vim-easy-align settings
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" clang-format {{{
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:clang_format#style_options = {
            \ "AccessModifierOffset" : -4,
            \ "AllowShortIfStatementsOnASingleLine" : "true",
            \ "AlwaysBreakTemplateDeclarations" : "true",
            \ "Standard" : "C++11"}

" map to <Leader>cf in C++ code
autocmd FileType c,cpp,objc,java nnoremap <buffer><Leader>cf :<C-u>ClangFormat<CR>
autocmd FileType c,cpp,objc,java vnoremap <buffer><Leader>cf :ClangFormat<CR>
" if you install vim-operator-user
autocmd FileType c,cpp,objc,java  map <buffer><Leader>x <Plug>(operator-clang-format)
" Toggle auto formatting:
nmap <Leader>C :ClangFormatAutoToggle<CR>
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" }}} clang-format
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" "vim-markdown{{{
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:vim_markdown_folding_disabled        = 1
let g:vim_markdown_folding_style_pythonic  = 1
let g:vim_markdown_no_default_key_mappings = 1
let g:vim_markdown_math                    = 1
let g:vim_markdown_frontmatter             = 1
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" }}} vim-markdown
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" "vim-go {{{
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""
if executable('go')
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
endif
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""
" "}}} vim-go
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""
" Calendar {{{
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""
" map ca :Calendar<cr>
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""
" }}} Calendar
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""
" vimwikilist {{{
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <Leader>vk <Plug>VimwikiIndex
let g:vimwiki_list = [{'path'       : '~/projects/treki',
            \    'path_html'        : '~/projects/treki/vimwiki_html',
            \    'template_path'    : '~/projects/treki/template',
            \    'template_default' : "~/projects/treki/templates/default.tpl",
            \    "auto_export": 1}]
let g:vimwiki_camel_case = 0
let g:vimwiki_folding='list'
let g:vimwiki_use_calendar = 1
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""
" }}}vimwikilist
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""

autocmd BufNewFile *.py,*.sh,*.cc,*.cpp,*.c,*.h, exec ":call SetTitle()"
let $author_name = ""
let $author_email = ""
func SetTitle()
  if &filetype == 'sh'
    call setline(1,"\#!/bin/bash")
    call append(line("."), "\##############################################################")
    call append(line(".")+1, "\# File Name: ".expand("%"))
    call append(line(".")+2, "\# Author: ".$author_name)
    call append(line(".")+3, "\# mail: ".$author_email)
    call append(line(".")+4, "\# Created Time: ".strftime("%c"))
    call append(line(".")+5, "\##############################################################")
    call append(line(".")+6, "")
  elseif &filetype == 'cpp'
    call setline(1,"/**")
    call append(line("."), " * Copyright (C) The software Authors. All rights reserved. ")
    call append(line(".")+1, " * File Name: ".expand("%"))
    call append(line(".")+2, " * Author: ".$author_name)
    call append(line(".")+3, " * mail: ".$author_email)
    call append(line(".")+4, " * Created Time: ".strftime("%c"))
    call append(line(".")+5, " * Brief: ")
    call append(line(".")+6, " */")
  elseif &filetype == 'c'
    call setline(1,"/**")
    call append(line("."), " * Copyright (C) The software Authors. All rights reserved. ")
    call append(line(".")+1, " * File Name: ".expand("%"))
    call append(line(".")+2, " * Author: ".$author_name)
    call append(line(".")+3, " * mail: ".$author_email)
    call append(line(".")+4, " * Created Time: ".strftime("%c"))
    call append(line(".")+5, " * Brief: ")
    call append(line(".")+6, " */")
  else
    call setline(1,"\#!/usr/bin/python")
    call append(line("."), "\# -*- coding: utf-8 -*")
    call append(line(".")+1, "\##############################################################")
    call append(line(".")+2, "\# File Name: ".expand("%"))
    call append(line(".")+3, "\# Author: ".$author_name)
    call append(line(".")+4, "\# mail: ".$author_email)
    call append(line(".")+5, "\# Created Time: ".strftime("%c"))
    call append(line(".")+6, "\# Brief:")
    call append(line(".")+7, "\##############################################################")
    call append(line(".")+8, "")
  endif
  autocmd BufNewFile * normal g
endfunc

let &path = getcwd() . '/**'
if filereadable("ws.vim")
    source ws.vim
endif
" "reference of ws.vim
" let g:ale_c_build_dir = "./build"
" let g:ale_c_parse_makefile = 1
" let g:ale_c_clang_options="-I/path/to/your/project"
" #let g:ale_cpp_clang_options = '-std=c++14 -Wall -nostdinc++ -isystem /usr/local/Cellar/llvm/12.0.0_1/include/c++/v1/ -I./'
"
let g:leetcode_browser='chrome'
