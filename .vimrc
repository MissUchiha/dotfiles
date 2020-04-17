" --------------------------------------------------------------|======|======*
" 						EXAM vimrc, good luck ninja!
" --------------------------------------------------------------|======|======*

" and the god said let there be utf8
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8

" We use the mighty space as the leader
let mapleader="\<Space>"

set nocompatible 		" vi is cool but vim is IMPROVED :D

" tab switching
map  <C-Tab>     <Esc>:tabnext<CR>
imap <C-Tab>     <Esc>:tabnext<CR>
map  <S-C-Tab>   <Esc>:tabprev<CR>
imap <S-C-Tab>   <Esc>:tabprev<CR>
map  <S-Right>   <Esc>:tabnext<CR>
imap <S-Right>   <Esc>:tabnext<CR>
map  <S-Left>    <Esc>:tabprev<CR>
imap <S-Left>    <Esc>:tabprev<CR>

set laststatus=2

" Files to be ignored
set wildignore+=*.o,*.obj,build,build-*,.*.swp,.*.swo
set wildignore+=*.pyc,*.class,*.jar,*~
set wildignore+=.git,.svn
set wildignore+=project/target/**,target/**
set wildignore+=GPATH,GRTAGS,GSYMS,GTAGS

syntax on
set t_Co=256 			" oh holiest of all, give me some color!

" indenting, wraps and tabs
set shiftwidth=4
set tabstop=4
set cindent
set smartindent
set autoindent 
set number
set textwidth=120
" set nowrap           " no wrapping for you today

" searching
set hlsearch
set incsearch

" comments
set comments=sl:/*,mb:\ *,elx:\ */

" set undofile
set backspace=indent,eol,start
"set cursorline
set scrolloff=2      " up/down 2 lines when on edge
set wildmenu         " tab completion
set completeopt=menu " completions in menus

" make vim remember last cursor position when editing file
if has("autocmd")
	au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" KEY MAPS
" nmap <F2> :w<CR>
" imap <F2> <ESC>:w<CR>i

" Reload vimrc on LEADER+rc
map <Leader>rc :source ~/.vimrc<CR>

" Turn off  highlighted search
map <Leader>hl :nohlsearch<CR>

" Invoke make on LEADER+m
map <Leader>m :make<CR>

" Let's you switch between header and source files
" Make sure to change source and header extensions depending on language
map <F4> :e %:p:s,.hpp$,.X123X,:s,.cpp$,.hpp,:s,.X123X$,.cpp,<CR>
set pastetoggle=<F2>

filetype plugin on
set omnifunc=syntaxcomplete#Complete


set nocompatible              " be iMproved, required
filetype off  "                required

"set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
Plugin 'ascenator/L9', {'name': 'newL9'}
" Install code completition engine
Plugin 'Valloric/YouCompleteMe' 

Plugin 'octol/vim-cpp-enhanced-highlight'

Plugin 'yearofmoo/Vim-Darkmate'

let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_experimental_simple_template_highlight = 1
" let g:cpp_experimental_template_highlight = 1
let g:cpp_concepts_highlight = 1
let g:cpp_no_function_highlight = 1

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

colorscheme cobalt
