" seperate file for installing all plugins (to avoid bloated init.vim)

call plug#begin('~/.config/nvim/autoload/plugged')

    " automatically type matching brackets
    Plug 'jiangmiao/auto-pairs'

    " intellisense engine
    Plug 'neoclide/coc.nvim', {'branch': 'release'}

    " my choice of powerline clone
    Plug 'itchyny/lightline.vim'

    " the nord-vim colorscheme
    Plug 'arcticicestudio/nord-vim'

    " Sophisticated Git integration
    Plug 'tpope/vim-fugitive'

    " Markdown auto syntax styling
    "Plug 'plasticboy/vim-markdown'

    " Abbreviation jumping plugin
    Plug 'easymotion/vim-easymotion'

    " Plugin that lets you surround objects in delimeters
    Plug 'tpope/vim-surround'

call plug#end()
