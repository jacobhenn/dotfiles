" comment

source $HOME/.config/nvim/vim-plug/plugins.vim

" set the tabs to be four literal spaces
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

" correct markdown highlighting
autocmd BufNewFile,BufFilePre,BufRead *.md set filetype=markdown.pandoc

" activate the autosave plugin
let g:auto_save = 1

" remove redundant mode display
set noshowmode

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

" format the entire file
nnoremap == mqgg=G`q

" save without quitting
nnoremap ZX :w<CR>

" normal c-back behavior
inoremap <C-e> <ESC>bce

" <;> doesn't do anything anyway
map ; :

" vim-checklist keybindings
nnoremap <leader>ct :ChecklistToggleCheckbox<cr>
nnoremap <leader>ce :ChecklistEnableCheckbox<cr>
nnoremap <leader>cd :ChecklistDisableCheckbox<cr>
vnoremap <leader>ct :ChecklistToggleCheckbox<cr>
vnoremap <leader>ce :ChecklistEnableCheckbox<cr>
vnoremap <leader>cd :ChecklistDisableCheckbox<cr>

" use tab for trigger completion
" inoremap <silent><expr> <TAB>
"     \ pumvisible() ? "\<C-n>" :
"     \ <SID>check_back_space() ? "\<TAB>" :
"     \ coc#refresh()
" inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
"
" function! s:check_back_space() abort
"     let col = col('.') - 1
"     return !col || getLine('.')[col - 1]  =~# '\s'
" endfunction

" toggle row and column highlighting
nnoremap cc :set cursorline! cursorcolumn!<CR>

" easymotion mappings

let g:EasyMotion_do_mapping = 0

map <Leader> <Plug>(easymotion-prefix)

nmap s <Plug>(easymotion-overwin-f)

let g:EasyMotion_smartcase = 1

map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)

map /  <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
