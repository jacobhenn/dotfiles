" comment

source $HOME/.config/nvim/vim-plug/plugins.vim

" set the tabs to be four literal spaces
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

" set hybrid line numbering when in normal mode, and absolute numbering when
" in insert mode or when the buffer loses focus
:set number relativenumber

:augroup numbertoggle
:       autocmd!
:       autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:       autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END

" set the colorscheme
colorscheme nord
