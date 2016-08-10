set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'facebook/vim-flow'
Plugin 'easymotion/vim-easymotion'
Plugin 'Shougo/neomru.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Shougo/vimproc.vim'
Plugin 'Shougo/unite.vim'
Plugin 'altercation/vim-colors-solarized.git'
Plugin 'vim-perl/vim-perl'
"Plugin 'vim-scripts/perl-support.vim'
Plugin 'vim-scripts/tComment'
Plugin 'Valloric/YouCompleteMe'
Plugin 'SirVer/ultisnips'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'majutsushi/tagbar'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'fatih/vim-go'
Plugin 'leafgarland/typescript-vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" automatically reload vimrc when it's saved
au BufWritePost .vimrc so ~/.vimrc

set t_Co=256
set background=dark
colorscheme distinguished

" size of a hard tabstop
set tabstop=4

" size of an "indent"
set shiftwidth=4

" a combination of spaces and tabs are used to simulate tab stops at a width
" other than the (hard)tabstop
set softtabstop=4

" make "tab" insert indents instead of tabs at the beginning of a line
set smarttab

" always uses spaces instead of tab characters
set expandtab

" :set autoindent
:filetype indent on
:set cindent
:set nu
:syntax on
:set hlsearch
:set path=**
:set ignorecase
:set smartcase
set showcmd
set incsearch
" for random characters to not appear on hitting arrow keys
set nocompatible

" unhighlight search results on <esc>
" nnoremap <esc> :noh<return><esc>

" remap C-n to C-Space
inoremap <Nul>   <C-n>

" tab navigation like firefox
nnoremap <S-tab> :tabprevious<CR>
nnoremap <tab>   :tabnext<CR>

" persistent undo
set undofile                " Save undo's after file closes
set undodir=$HOME/.vim/undo " where to save undo histories
set undolevels=1000         " How many undos
set undoreload=10000        " number of lines to save for undo

" code folding
set foldmethod=syntax
set foldlevelstart=1

let javaScript_fold=1         " JavaScript
let perl_fold=1               " Perl
let sh_fold_enabled=1         " sh
let vimsyn_folding='af'       " Vim script
let xml_syntax_folding=1      " XML

map <Leader> <Plug>(easymotion-prefix)

" Go configs
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)
au FileType go nmap <Leader>ds <Plug>(go-def-split)
au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
au FileType go nmap <Leader>dt <Plug>(go-def-tab)
au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)
au FileType go nmap <Leader>e <Plug>(go-rename)
au FileType go nmap <Leader>i <Plug>(go-info)
au FileType go let $GOPATH = "/home/nagappan/.gvm/pkgsets/go1.4/global"
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_fmt_command = "goimports"
let g:go_fmt_autosave = 1


set pastetoggle=<F2>
