" Horea Chivu's VIM configuration file(.vimrc)

""""""""""""""""""""""""""
    " General Settings
""""""""""""""""""""""""""

   " Basic apperance 
   
" Show line number
set number

syntax enable

filetype plugin indent on 
syntax on

" Hide GVIM gui
set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar
" set guioptions-=M  "Extreme removal

" GUI or not-GUI
if has('gui_running') 
    " GUI colors 
	colorscheme mustang
else 
    " Non-GUI (terminal) colors 
    colorscheme jellybeans
endif

set guifont=Monospace\ 14 

    " Key remaps

" Use jj instead of ESC 
inoremap jj <ESC>

" copy and paste
vmap <C-c> "+yi
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <ESC>"+pa

" movement between tabs and splits
map <c-h> <c-w>h
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-tab> <esc>:tabnext<CR>

set wildmenu 

" Disable backup file( We have GIT POWER ) 
set nobackup
set noswapfile

" Use mouse functionality
if has('mouse') 
	set mouse=a 
endif 

""""""""""""""""""""""""""""""""""" 
    " Text, tab and indent related 
""""""""""""""""""""""""""""""""""" 

" Use spaces instead of tabs 
set expandtab 

" Smarttab option 
set smarttab 

" 1 tab = 4 spaces 
set shiftwidth=4 
set tabstop=4 

" Auto indent and smart indent 
set autoindent 
set smartindent 

set wrap " Wrap lines 

"""""""""""""""""""""""""""""""""""
    " Vundle specific config 
"""""""""""""""""""""""""""""""""""

set nocp 
filetype off 
filetype plugin indent off

set rtp+=~/.vim/bundle/Vundle.vim 

call vundle#begin() 
"List with git sourced plugins
Plugin 'VundleVim/Vundle.vim' 
Plugin 'vim-scripts/TagHighlight'
Plugin 'octol/vim-cpp-enhanced-highlight' 
Plugin 'mattn/emmet-vim' 
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'

call vundle#end() 

" Restarting following options
filetype plugin indent on 
syntax on

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8     

""""""""""""""""""""""""""""""""""
"   Plugin Settings
""""""""""""""""""""""""""""""""""

""""""""""""""""""
" NERDTree 
""""""""""""""""""

" Close NERDTree if is the only window left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Ctrl+n: shortcut to open NERDTree
map <C-n> :NERDTreeToggle<CR>

" Default arrows
let g:NERDTreeDirArrows = 1
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

""""""""""""""""""""""
" NERDTree Git Plugin
""""""""""""""""""""""

" Default icons
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }

" Uncomment if error
" set shell=sh


