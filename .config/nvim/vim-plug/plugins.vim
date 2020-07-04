" seperate file for installing all plugins (to avoid bloated init.vim)

call plug#begin('~/.config/nvim/autoload/plugged')

    " automatically type matching brackets
    Plug 'jiangmiao/auto-pairs'

    " intellisense engine
    "Plug 'neoclide/coc.nvim', {'branch': 'release'}
    
    " one language pack to rule them all
    Plug 'sheerun/vim-polyglot'	

    " my choice of powerline clone 
    Plug 'itchyny/lightline.vim'

    " the nord-vim colorscheme
    Plug 'arcticicestudio/nord-vim'

call plug#end()
