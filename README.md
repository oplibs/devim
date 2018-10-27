# devim

## Pre-install

* vim8
* python
* vundle (git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim)

## Requirements

The following software should be installed:
* the_silver_searcher
* ctags
* cscope
* cmake
* astyle

* autopep8
* flake8

### Common vim plugins needed:

Common tools:

    * NERDTree
    * BufOnly
    * grep
    * ctrlp
    * vim-airline
    * vim-bufferline

Shell tools:

    * vimproc.vim
{{{
        # cd ~/.vim/bundle/vimproc
        # make
}}}
    * vimshell.vim

### Development

#### Common vim plugins needed:

* vimproc
* nerdcommenter
* astyle:
    * apt-get install python-autopep8  # For python
* vim-autoformat
    * brew install llvm  # C++ style
* dash

#### C/C++

    * a.vim
    * cscope.vim
    * ctags.vim

#### Javascript

* Syntastic  javascript  npm install -g eslint-config-airbnb eslint-plugin-import eslint-plugin-react eslint-plugin-jsx-a11y eslint

##### VIM Plugins

* vim-jsbeautify

##### Supporting utility plugin:

#### react

* vim-jsx

    ```
    let g:jsx_ext_required = 0 " Allow JSX in normal JS files
    ```

#### Plugins needed:

#### HTML

* vim-css-color


