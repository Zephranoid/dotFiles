set nocompatible
filetype off
"Vundle Config
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
call vundle#end()

filetype plugin indent on
syntax on
set background=dark
colorscheme theme

"Search Settings
set ignorecase

"Indentation options
set autoindent
set smartindent
set shiftwidth=4
set tabstop=4
set noexpandtab

"No Backup
set nobackup
set nowritebackup
set noswapfile

"Line numbers
set number
set relativenumber

"Line wrapping
set wrap

"Fix indentation of file
function IndentFile()
	:normal ma
	:normal gg=G
	:normal `a
endfunction
nnoremap <F12> :call IndentFile()<cr>

"Show syntax group
noremap <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR> 

let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
