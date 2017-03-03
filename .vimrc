"add Runtime Path for pathogen
execute pathogen#infect()
syntax on
filetype plugin indent on

"syntastic plugin
"*****************************************************************************
"http://vimawesome.com/plugin/syntastic
"*****************************************************************************
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"vim-airline option
"*****************************************************************************
"http://vimawesome.com/plugin/vim-airline
"*****************************************************************************
"Display branch name
let g:airline#extensions#branch#enabled = 1

"Automatically displays all buffers when there's only one tab open.
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

"enable status bar
set laststatus=2

if !exists('g:airline_symbols')
	      let g:airline_symbols = {}
	        endif

"CUSTOMIZATION
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.maxlinenr = '☰'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.notexists = '∄'
let g:airline_symbols.whitespace = 'Ξ'

" powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

"tmuxline option
"*****************************************************************************
"https://github.com/edkolev/tmuxline.vim
"*****************************************************************************
"enable/disable tmuxline integration
let g:airline#extensions#tmuxline#enabled = 1
let g:tmuxline_preset = 'nightly_fox'


"AirlineTheme option
"*****************************************************************************
"https://github.com/vim-airline/vim-airline-themes
"*****************************************************************************
let g:loaded_airline_themes = 1
let g:airline_theme='onedark'
let g:airline_solarized_dark_inactive_border = 1
let g:solarized_base16 = 1

"vim-latex
"*****************************************************************************
"https://github.com/xuhdev/vim-latex-live-preview.git
"*****************************************************************************

"pdf output settings
autocmd Filetype tex setl updatetime=1
let g:livepreview_previewer = 'okular'

let g:vimtex_disable_version_warning = 1
