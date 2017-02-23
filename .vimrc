"add Runtime Path for pathogen
execute pathogen#infect()
syntax on
filetype plugin indent on

"Add main settings fot syntastic plugin
"http://vimawesome.com/plugin/syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"vim-airline option
"http://vimawesome.com/plugin/vim-airline

"Automatically displays all buffers when there's only one tab open.
let g:airline#extensions#tabline#enabled = 1

