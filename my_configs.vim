

set autoindent
set virtualedit=all
set showcmd
set showmode
set ruler
set cursorline
set fdm=marker

"common
set nocompatible

"bundle
"syntax on

set nu
set nowrap
set is

"color
"color default
"colorscheme desert


"tab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab


set termencoding=utf-8
set fileformats=unix

set backspace=indent,eol,start

"windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

"ctags
"enter root dir of your project and run ctags -R .
"
"#set tags =tags;
"#map <C-F12> :!ctags -R --languages=c++,c,java,Make,Sh, --c++-kinds=+px --fields=+aiKSz --extra=+q .<CR>

"cscope
"enter root dir of your project and run cscope -Rbq
"
if has("cscope")
set csprg=/usr/bin/cscope
set csto=0
set cst
set nocsverb
" add any database in current directory
if filereadable("cscope.out")
cs add cscope.out
" else add database pointed to by environment
elseif $CSCOPE_DB != ""
cs add $CSCOPE_DB
endif
set csverb
endif

nmap css :cs find s <C-R>=expand("<cword>")<CR><CR>    
nmap csg :cs find g <C-R>=expand("<cword>")<CR><CR>    
nmap csc :cs find c <C-R>=expand("<cword>")<CR><CR>    
nmap cst :cs find t <C-R>=expand("<cword>")<CR><CR>    
nmap cse :cs find e <C-R>=expand("<cword>")<CR><CR>    
nmap csf :cs find f <C-R>=expand("<cfile>")<CR><CR>    
nmap csi :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap csd :cs find d <C-R>=expand("<cword>")<CR><CR>


"taglist
"1. copy unzipped file to .vim, 2. cd .vim/doc  3. vim  4. :helptags .
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
let Tlist_SHow_Menu=1
let Tlist_File_Fold_Auto_Close=1

"nerdtree
"autocmd vimenter * NERDTree


