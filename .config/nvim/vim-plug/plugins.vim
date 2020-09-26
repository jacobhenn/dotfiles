" seperate file for installing all plugins (to avoid bloated init.vim)

call plug#begin('~/.config/nvim/autoload/plugged')
    " one language pack to rule them all
    Plug 'sheerun/vim-polyglot'

    " automatically type matching brackets
    Plug 'jiangmiao/auto-pairs'

    " my choice of powerline clone
    Plug 'itchyny/lightline.vim'

    " the nord-vim colorscheme
    Plug 'arcticicestudio/nord-vim'

    " Sophisticated Git integration
    Plug 'tpope/vim-fugitive'

    " Abbreviation jumping plugin
    Plug 'easymotion/vim-easymotion'

    " Plugin that lets you surround objects in delimeters
    Plug 'tpope/vim-surround'

    " incredibly cool table formatter
    Plug 'dhruvasagar/vim-table-mode'

    " checklist program - BECOMES OBSOLETE WITH VIMWIKI
    Plug 'evansalter/vim-checklist'

    " save changes on switch to normal mode
    Plug '907th/vim-auto-save'

    " auto hex coloring
    Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }

    " easy commenting
    Plug 'tpope/vim-commentary'

call plug#end()
