execute pathogen#infect()

syntax on
filetype plugin indent on

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
