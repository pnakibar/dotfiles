execute pathogen#infect()

syntax on
filetype plugin indent on

set number


"nerdtree!
map <C-n> :NERDTreeToggle<CR>
"auto-close if the NERDTree is the last window
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
