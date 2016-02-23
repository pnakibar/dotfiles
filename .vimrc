execute pathogen#infect()

let $NVIM_TUI_ENABLE_TRUE_COLOR=1 "magic to colorschemes work in gnome-terminal

filetype plugin indent on
syntax enable
set background=dark
set gfn=Roboto\ Mono\ for\ Powerline\ 10  
set paste
set number
let g:gruvbox_italic=1
colors gruvbox
set autoindent

"2 spaces softtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

"nerdtree!
map <C-n> :NERDTreeToggle<CR>
"auto-close if the NERDTree is the last window
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"jsx!
let g:jsx_ext_required = 0

"indent guides
"toggle-> \ig (<Leader>ig)
"

"airline
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

"rainbow-parentheses
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick1'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]
"auto-start rainbow-parentheses
let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

"ctrl-p
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

"tagbar
nmap <F8> :TagbarToggle<CR>

"syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
"syntastic js - needs this installed: https://github.com/feross/standard
let g:syntastic_javascript_checkers = ['standard']
autocmd bufwritepost *.js silent !standard % --format
set autoread
