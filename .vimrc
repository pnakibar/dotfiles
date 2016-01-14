execute pathogen#infect()

filetype plugin indent on
syntax enable
set background=dark
colorscheme solarized
set gfn=Roboto\ Mono\ for\ Powerline\ 10  


set number

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
