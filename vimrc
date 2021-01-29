" -------------  
" Vundle  
" https://github.com/gmarik/Vundle.vim  
" -------------  
  
set nocompatible              " be iMproved, required  
filetype off                  " required  
  
" set the runtime path to include Vundle and initialize  
set rtp+=~/.vim/bundle/Vundle.vim  
call vundle#begin()  
" alternatively, pass a path where Vundle should install plugins  
"call vundle#begin('~/some/path/here')  
  
" let Vundle manage Vundle, required  
Plugin 'gmarik/Vundle.vim'  
  
" The following are examples of different formats supported.  
" Keep Plugin commands between vundle#begin/end.  
" plugin on GitHub repo  
""Plugin 'tpope/vim-fugitive'  
" plugin from http://vim-scripts.org/vim/scripts.html  
""Plugin 'L9'  
" Git plugin not hosted on GitHub  
""Plugin 'git://git.wincent.com/command-t.git'  
" git repos on your local machine (i.e. when working on your own plugin)  
""Plugin 'file:///home/gmarik/path/to/plugin'  
" The sparkup vim script is in a subdirectory of this repo called vim.  
" Pass the path to set the runtimepath properly.  
""Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}  
" Avoid a name conflict with L9  
""Plugin 'user/L9', {'name': 'newL9'}  
  
" Install Vim-go  
Plugin 'fatih/vim-go'  
" Install Your Complete Me
Plugin 'Valloric/YouCompleteMe'
Plugin 'bling/vim-airline'
Plugin 'gregsexton/gitv'
Plugin 'scrooloose/nerdtree'
map <F3> :NERDTreeMirror<CR>
map <F3> :NERDTreeToggle<CR>

Plugin 'morhetz/gruvbox'
  
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
" Put your non-Plugin stuff after this line gg
"
"



"当括号被自动补全后，ClosePair依然允许你手动输入另一半而不会重复"
:inoremap ( ()<ESC>i
:inoremap ) <c-r>=ClosePair(')')<CR>
:inoremap [ []<ESC>i
:inoremap ] <c-r>=ClosePair(']')<CR>
:inoremap " ""<ESC>i
:inoremap ' ''<ESC>i
:inoremap { {}<ESC>i
function! ClosePair(char)
    if getline('.')[col('.') - 1] == a:char
		        return "\<Right>"
	else
			    return a:char
	endif
endfunction





set nocompatible                        " Vim settings, not Vi settings.  must be first
set autoindent                          " Auto align when insert new line, for instance, when using o or O to insert new line.oshiftwidt
set shiftwidth=4                        " Use with autoindent option, and set indent 4 space"
set ruler                               " Show ruler at the bottom-right of vim window
set showcmd
set backspace=indent,eol,start          " Enable delete for backspace under insert mode"
set guifont=Monaco:h16                  " Set mac vim default font size"
set tabstop=4                           " Set default tab = 4 space"
colorscheme jellybeans
set number              " Show line number
syntax on
if &term =~ "xterm"
  if has("terminfo")
    set t_Co=8
    set t_Sf=^[[3%p1%dm
    set t_Sb=^[[4%p1%dm
  else
    set t_Co=8
    set t_Sf=^[[3%dm
    set t_Sb=^[[4%dm
  endif
endif

syntax enable
set background=dark
colorscheme Gruvbox

let Tlist_Ctags_Cmd = '/usr/bin/ctags'         "设定系统中ctags程序的位置
let Tlist_Show_One_File = 1                    "不同时显示多个文件的tag，只显示当前文件的
let Tlist_Exit_OnlyWindow = 1                  "如果taglist窗口是最后一个窗口，则退出vim
map <silent> <F9> :TlistToggle<cr>             "按F9等同于在命令行模式输入:TlistToggle"
