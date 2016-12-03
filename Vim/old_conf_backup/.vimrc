" Vimsolarized dark Configuration

let mapleader=","			" Set leader key to ,
set nocompatible              		" be iMproved, required
set wildmenu 

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf-8

" Disable backup file( We have GIT POWER ) 
set nobackup
set noswapfile

set autowriteall                        "Automatically write the file when switching buffers.
set complete=.,w,b,u 			"Set our desired autocompletion matching.
set tabstop=8
set expandtab
set softtabstop=4
set shiftwidth=4

set autowriteall                        "Automatically write the file when switching buffers.
set complete=.,w,b,u 			"Set our desired autocompletion matching.

"-----------Visuals------------"

syntax enable				

" GUI or not-GUI
if has("gui_running") 
    " GUI colors 
    " colorscheme atom-dark
    " set background=dark
    colorscheme atom-dark
else 
    " Non-GUI (terminal) colors 
    " colorscheme jellybeans
    set background=dark
    colorscheme hemisu
endif

set guifont=Ubuntu\ Mono\ derivative\ Powerline\ 15		" Font and size
set linespace=5		                " Space between lines
" set t_CO=256				" Force 256 colors	--not sure	
set number                              " Show current line number
set relativenumber                      " Show relative line numbers

" Set line number bg to general background
hi LineNr guibg=bg			

" Text area padding
if has("gui_running")
	set foldcolumn=2
endif
hi foldcolumn guibg=bg

" Split separator color customize
hi vertsplit guifg=bg guibg=black

" Remove all scroll bars, menus and gui tabs

" set guioptions-=T                       "Remove toolbar
" set guioptions-=m                       "Remove menu bar
" set guioptions-=l                       "Disable Gui scrollbars.
" set guioptions-=L                       "Remove left scroll bar
" set guioptions-=r                       "Remove right scroll bar
" set guioptions-=R
" set guioptions-=e			"We don't want Gui tabs.

set guioptions-=T "remove toolbar
set guioptions-=r "remove right-hand scroll bar
set guioptions-=L "remove left-hand scroll bar. Fix for TagBar.

"-----------Mappings------------"

" Shortcut for .vimrc file
nmap <Leader>ev :tabedit $MYVIMRC<Enter>	

" Shortcut for ~/vim/plugins.vim file
nmap <Leader>ep :tabedit ~/.vim/plugins.vim<Enter>	

" Shortcut for Vundle Plugins Installation
nmap <Leader>ei :PluginInstall<Enter>	

" Shortcut for easier acces to snippet files
nmap <Leader>es :tabedit ~/.vim/snippets/

" Shortcut for highlight removal
nmap <Leader><space> :nohlsearch<Enter>

" Press jj twice instead of ESC
inoremap jj <ESC>

" copy and paste
vmap <C-c> "+yi
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <ESC>"+pa

" nmap <Leader>dd "_d


" ----Mapping for CTags

nma <Leader>f :tag<space>

"-----------Searching------------"

set hlsearch				" Highlight when searching
set incsearch				" Incremental search


"-----------Tabs Management------------"

" Shortcut for easier movement/closing for tabs

" Close the tab
nmap <Leader>tc :tabc<Enter>    

" Next tab
nmap <Leader>tn :tabn<Enter>

" Previous tab
nmap <Leader>tp :tabp<Enter>

" Switch between tabs
nmap <C-tab> <esc>:tabn<CR>


"-----------Split Management------------"

" Split in normal order
set splitbelow
set splitright

" Easier movement between splits
nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>


"-----------Plugins------------"

" Source a sepparate .vim file that contans the list of plugin
so ~/.vim/plugins.vim


"-----------------------Plugins Settings----------------------"

"----NERDTree

" Shortcut for NERDTree activation
nmap <Leader>1 :NERDTreeToggle<Enter>

" Resolve '-' key conflict with Vinegar
let NERDTreeHijackNetrw = 0

" Close NERDTree if is the only window left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Default arrows
let g:NERDTreeDirArrows = 1
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

"----ctrlpvim

" Shortcut for searching methods
nmap <D-R> :CtrlPBufTag<Enter>
nmap <D-e> :CtrlPMRUFiles<Enter>
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
let g:ctrlp_match_window = 'top,order:ttb,min:1,max:30,results:30'

"----vim-php-namespaces

" Inserts use statement for the namespace automaticly for you(with ctags)
function! IPhpInsertUse()
    call PhpInsertUse()
    call feedkeys('a',  'n')
endfunction
autocmd FileType php inoremap <Leader>n <Esc>:call IPhpInsertUse()<CR>
autocmd FileType php noremap <Leader>n :call PhpInsertUse()<CR>

" Inserts a fully qualified name
function! IPhpExpandClass()
    call PhpExpandClass()
    call feedkeys('a', 'n')
endfunction
autocmd FileType php inoremap <Leader>nf <Esc>:call IPhpExpandClass()<CR>
autocmd FileType php noremap <Leader>nf :call PhpExpandClass()<CR>

"----emmet

let g:user_emmet_leader_key='<C-Z>'

"----YouCompleteMe

"----vim-airline
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
if ! has("gui_running") 
    set timeoutlen=1000 ttimeoutlen=0
else
    let g:airline_theme='solarized'
endif

"----syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_javascript_checkers = ['eslint']

"-----------Auto-Commands------------"

" Automaticlly source the .vimrc file
augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END

" Use mouse functionality if available
if has('mouse') 
	set mouse=a 
endif 

"########################### Notes #################################
" - Press 'gg' to go at the biggining of the file.
" - Press 'G' to go at the end of the file.
" - Press 'zz' to center the line on the screen.
" - In snippets files, press 'ne' to expand a snippet.
" - Use :redo do redo a change.
" - Vinegar
"	- '-' to go to the parrent dir
"	- '%' to create a file
"	- 'd' to create a dir
"	- 'D' to delete a file or a dir
"	- 'R' to rename a file or a dir
"	- 'x' to execute a file
"
" - Ctags
"	- eg: ctags -R --exclude=node_modules|vendor
"
" - vim-php-namespace
"	- we will need ctags
"	- remaped to leader-Previousn
