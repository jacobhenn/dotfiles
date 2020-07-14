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

" remove all trailing whitespace upon write
autocmd BufWritePre * %s/\s\+$//e

" capital W writes as well
command W w

" use tab for trigger completion
inoremap <silent><expr> <TAB>
    \ pumvisible() ? "\<C-n>" :
    \ <SID>check_back_space() ? "\<TAB>" :
    \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getLine('.')[col - 1]  =~# '\s'
endfunction
