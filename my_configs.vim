

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
syntax on

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

"windows : already set by amix/vimrc
"map <C-j> <C-W>j
"map <C-k> <C-W>k
"map <C-h> <C-W>h
"map <C-l> <C-W>l

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
"
"find definition and open in a vertically split window
":vsp | cs find g <name>
"

nmap csc :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap cst :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap cse :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap csf :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap csd :cs find d <C-R>=expand("<cword>")<CR><CR>
nmap csi :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>

nmap <leader>cse :cs find e <C-R>=expand("<cword>")<CR>
nmap <leader>csg :cs find g <C-R>=expand("<cword>")<CR>
nmap <leader>css :cs find s <C-R>=expand("<cword>")<CR>

"taglist
"1. copy unzipped file to .vim, 2. cd .vim/doc  3. vim  4. :helptags .
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
let Tlist_SHow_Menu=1
let Tlist_File_Fold_Auto_Close=1

nmap <leader>nt :TlistToggle <CR>

"ycm
"git clone https://github.com/Valloric/YouCompleteMe.git ~/.vim_runtime/bundle
"git clone https://github.com/rdnetto/YCM-Generator.git ~/.vim_runtime/bundle
let g:loaded_youcompleteme = 1
let g:ycm_error_symbol = '>>'
let g:ycm_warning_symbol = '>*'
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_completion = 0

nmap <leader>jl :YcmCompleter GoToDeclaration<CR>
nmap <leader>jf :YcmCompleter GoToDefinition<CR>
nmap <leader>jg :YcmCompleter GoToDefinitionElseDeclaration<CR>
nmap <leader>m :YcmCompleter FixIt<CR>
nmap <F4> :YcmDiags<CR>

"github.com/octol/vim-cpp-enhanced-highlight.git
"//let g:cpp_class_scope_highlight=1
"//let g:cpp_class_decl_highlight=1
"//let g:cpp_member_variable_highlight=1
"//let g:cpp_experimental_template_highlight=1
"//let g:cpp_concepts_highlight=1

"nerdtree
let NERDTreeShowHidden=1

" Useful mappings for managing tabs
map <leader>tt :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tn :tabmove<cr>
map <leader>tp :tabnext<cr> 


