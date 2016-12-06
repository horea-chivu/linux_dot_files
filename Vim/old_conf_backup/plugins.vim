filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"-----------Plugins------------"


Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-vinegar'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'Valloric/YouCompleteMe'

" HTML
Plugin 'gregsexton/matchtag'
Plugin 'mattn/emmet-vim'

" CSS
Plugin 'ap/vim-css-color'

"" JavaScript 
Plugin 'pangloss/vim-javascript'

" TypeScript 
Plugin 'leafgarland/typescript-vim'

" PHP
Plugin 'StanAngeloff/php.vim'
Plugin 'arnaud-lb/vim-php-namespace'

" Pug
Plugin 'digitaltoad/vim-pug'

" UI
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" Linter
Plugin 'scrooloose/syntastic'

"-----------endPlugins------------"

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

