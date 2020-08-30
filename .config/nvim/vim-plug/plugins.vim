" seperate file for installing all plugins (to avoid bloated init.vim)

call plug#begin('~/.config/nvim/autoload/plugged')
    " one language pack to rule them all
    Plug 'sheerun/vim-polyglot'

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

    " Abbreviation jumping plugin
    Plug 'easymotion/vim-easymotion'

    " Plugin that lets you surround objects in delimeters
    Plug 'tpope/vim-surround'

    " Fast colorizer
    Plug 'norcalli/nvim-colorizer.lua'

    " incredibly cool table formatter
    Plug 'dhruvasagar/vim-table-mode'

    " checklist program - BECOMES OBSOLETE WITH VIMWIKI
    Plug 'evansalter/vim-checklist'

    " save changes on switch to normal mode
    Plug '907th/vim-auto-save'

call plug#end()
