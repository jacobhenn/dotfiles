source $HOME/.config/nvim/vim-plug/plugins.vim

" GUI settings
let g:neovide_transparency = 0.9
let g:neovide_cursor_animation_length=0.05 
set guifont=firacode:h16
set nowrap

" terminal settings
au termOpen * setlocal nonumber
tnoremap <Esc> <C-\><C-n>

" automatically change the working directory based on the file being worked
" with
autocmd BufEnter * silent! lcd %:p:h

" remove the stupid leader key timeout
set noto
set ttimeout

" set the tabs to be four literal spaces
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

" better colour suppourt
set termguicolors

" correct markdown highlighting
autocmd BufNewFile,BufFilePre,BufRead *.md set filetype=markdown.pandoc

" activate the autosave plugin
let g:auto_save = 1

" remove redundant mode display
set noshowmode

" set absolute numbering when
set number

" set the colorscheme
colorscheme nord

" format the entire file
nnoremap == mqgg=G`qzz

" save without quitting
nnoremap ZX :w<CR>

" launch ghci in cabal or non-cabal mode
nnoremap g. :split\|resize -10\|terminal cabal repl<Enter>

" normal C-Backspace behavior
imap <m-h> <C-w>

" <;> doesn't do anything anyway
map ; :

" vim-checklist keybindings
nnoremap <leader>ct :ChecklistToggleCheckbox<cr>
nnoremap <leader>ce :ChecklistEnableCheckbox<cr>
nnoremap <leader>cd :ChecklistDisableCheckbox<cr>
vnoremap <leader>ct :ChecklistToggleCheckbox<cr>
vnoremap <leader>ce :ChecklistEnableCheckbox<cr>
vnoremap <leader>cd :ChecklistDisableCheckbox<cr>

" toggle row and column highlighting
nnoremap cc :set cursorline! cursorcolumn!<CR>

" easymotion mappings

let g:EasyMotion_do_mapping = 0

map <Leader> <Plug>(easymotion-prefix)

nmap s <Plug>(easymotion-overwin-f)

let g:EasyMotion_smartcase = 1

map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
