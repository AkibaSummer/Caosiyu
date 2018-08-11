set helplang=cn  
    set encoding=utf-8  
    set cscopequickfix=s-,c-,d-,i-,t-,e-  
    nmap <C-_>s :cs find s <C-R>=expand("<cword>")<CR><CR>  
    nmap <C-_>g :cs find g <C-R>=expand("<cword>")<CR><CR>  
    nmap <C-_>c :cs find c <C-R>=expand("<cword>")<CR><CR>  
    nmap <C-_>t :cs find t <C-R>=expand("<cword>")<CR><CR>  
    nmap <C-_>e :cs find e <C-R>=expand("<cword>")<CR><CR>  
    nmap <C-_>f :cs find f <C-R>=expand("<cfile>")<CR><CR>  
    nmap <C-_>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>  
    nmap <C-_>d :cs find d <C-R>=expand("<cword>")<CR><CR>  
    let g:miniBufExplMapCTabSwitchBufs = 1  
    let g:miniBufExplMapWindowNavVim = 1  
    let g:miniBufExplMapWindowNavArrows = 1  
    nnoremap <silent> <F12> :A<CR>  
    nnoremap <silent> <F3> :Grep<CR>  
    let g:SuperTabRetainCompletionType=2  
    let g:SuperTabDefaultCompletionType="<C-X><C-O>"  
    " 自动语法高亮  
    


     syntax on  
    " 检测文件类型  
    filetype on  
    " 检测文件类型插件  
    set mouse=a
    filetype plugin on  
    " 不设定在插入状态无法用退格键和 Delete 键删除回车符  
    set backspace=indent,eol,start  
    set whichwrap+=<,>,h,l  
    " 显示行号  
    set number  
    " 上下可视行数  
    set scrolloff=6  
    " replace tab with space  
    set expandtab  
    " 设定 tab 长度为 4  
    set tabstop=4  
    " 设置按BackSpace的时候可以一次删除掉4个空格  
    set softtabstop=4  
    " 设定 << 和 >> 命令移动时的宽度为 4  
    set shiftwidth=4  
    set smarttab  
    set history=1024  
    " 不突出显示当前行  
    set nocursorline  
    " 覆盖文件时不备份  
    set nobackup  
    " 自动切换当前目录为当前文件所在的目录  
    set autochdir  
    " 搜索时忽略大小写，但在有一个或以上大写字母时仍大小写敏感  
    set ignorecase  
    set smartcase  
    " 搜索到文件两端时不重新搜索  
    set nowrapscan  
    " 实时搜索  
    set incsearch  
    " 搜索时高亮显示被找到的文本  
    set hlsearch  
    " 关闭错误声音  
    set noerrorbells  
    set novisualbell  
    "set t_vb=  
      
    " 不自动换行  
    "set nowrap  
    "How many tenths of a second to blink  
    set mat=2  
    " 允许在有未保存的修改时切换缓冲区，此时的修改由 vim 负责保存  
    set hidden  
    " 智能自动缩进  
    set smartindent  
    " 设定命令行的行数为 1  
    set cmdheight=1  
    " 显示状态栏 (默认值为 1, 无法显示状态栏)  
    set laststatus=2  
    "显示括号配对情况  
    set showmatch  
      
    " 解决自动换行格式下, 如高度在折行之后超过窗口高度结果这一行看不到的问题  
    set display=lastline 
    " 设置在状态行显示的信息  
    set statusline=\ %<%F[%1*%M%*%n%R%H]%=\ %y\ %0(%{&fileformat}\ [%{(&fenc==\"\"?&enc:&fenc).(&bomb?\",BOM\":\"\")}]\ %c:%l/%L%)  
      
    " 显示Tab符  
    set list  
    set listchars=tab:\|\ ,trail:.,extends:>,precedes:<  
    "启动时不显示 捐赠提示  
    set shortmess=atl  
      
    "blank      空白  
    "buffers    缓冲区  
    "curdir     当前目录  
    "folds      折叠  
    "help       帮助  
    "options    选项  
    "tabpages   选项卡  
    "winsize    窗口大小  
    "slash      转换文件路径中的\为/以使session文件兼容unix  
    "unix       设置session文件中的换行模式为unix  
    set sessionoptions=blank,buffers,curdir,folds,help,options,tabpages,winsize,slash,unix,resize  
      
    " 允许backspace和光标键跨越行边界  
    set whichwrap+=<,>,h,l  
    " backspace  
    set backspace=eol,start,indent  
      
    " 可以在buffer的任何地方使用鼠标（类似office中在工作区双击鼠标定位）  
    set mouse=a  
    set selection=exclusive  
    set selectmode=mouse,key  
      
    " 在被分割的窗口间显示空白，便于阅读  
    set fillchars=vert:\ ,stl:\ ,stlnc:\  
      
    " 高亮显示匹配的括号  
    set showmatch  
      
    " 匹配括号高亮的时间（单位是十分之一秒）  
    set matchtime=5  
      
    "编码设置  
    set enc=utf-8  
    set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936  
      
    " set mapleader  
    let mapleader="`"  
      
    nmap J 5j  
    nmap K 5k  
      
    " 窗口切换  
    nnoremap <c-h> <c-w>h  
    nnoremap <c-l> <c-w>l  
    nnoremap <c-j> <c-w>j  
    nnoremap <c-k> <c-w>k  
      
    " 插入模式下上下左右移动光标  
    inoremap <c-h> <left>  
    inoremap <c-l> <right>  
    inoremap <c-j> <c-o>gj  
    inoremap <c-k> <c-o>gk  
      
    " Ctrl+s  
    " If the current buffer has never been saved, it will have no name,  
    " call the file browser to save it, otherwise just save it.  
    "nnoremap <silent> <C-S> :if expand("%") == ""<CR>browse confirm w<CR>else<CR>confirm w<CR>endif<CR>  
    "imap <c-s> <c-o><c-s><CR>  
    " Use CTRL-S for saving, also in Insert mode  
    nmap <C-S> :update<CR>  
    vmap <C-S> <C-C>:update<CR>  
    imap <C-S> <C-O>:update<CR>  
      
      
    """"""""""""""""""""""""""""""  
       " Tag list (ctags)  
    """"""""""""""""""""""""""""""  
    "if MySys() == "windows"                "设定windows系统中ctags程序的位置  
    "   let Tlist_Ctags_Cmd = 'ctags'  
    "elseif MySys() == "linux"              "设定Linux系统中ctags程序的位置  
       let Tlist_Ctags_Cmd = '/home/sphinx/.vim/ctags-5.8/ctags'  
    "endif  
      
    let Tlist_Show_One_File = 1            "不同时显示多个文件的tag，只显示当前文件的  
    let Tlist_Exit_OnlyWindow = 1          "如果taglist窗口是最后一个窗口，则退出vim  
    let Tlist_Use_Right_Window = 0         "在右侧窗口中显示taglist窗口  
    let Tlist_OnlyWindow=1  
      
    "let Tlist_Use_Right_Window=0  
    "let Tlist_Sort_Type='name'  
    "let Tlist_Show_Menu=1  
    "let Tlist_Max_Submenu_Items=10  
    "let Tlist_Max_Tag_length=16     "20  
    "let Tlist_Use_SingleClick=0  
    "let Tlist_Auto_Open=0  
    "let Tlist_Close_On_Select=0  
    "let Tlist_File_Fold_Auto_Close=1  
    "let Tlist_GainFocus_On_ToggleOpen=0  
    "let Tlist_Process_File_Always=1  
    "let Tlist_WinHeight=10  
    "let Tlist_WinWidth=18  
    "let Tlist_Use_Horiz_Window=0  
      
    let Tlist_Auto_Highlight_Tag = 1  
    "let Tlist_Auto_Open = 1  
    let Tlist_Auto_Update = 1  
    let Tlist_Close_On_Select = 0  
    let Tlist_Compact_Format = 0  
    let Tlist_Display_Prototype = 0  
    let Tlist_Display_Tag_Scope = 1  
    let Tlist_Enable_Fold_Column = 0  
    let Tlist_File_Fold_Auto_Close = 0  
    let Tlist_GainFocus_On_ToggleOpen = 1  
    let Tlist_Hightlight_Tag_On_BufEnter = 1  
    let Tlist_Inc_Winwidth = 0  
    let Tlist_Max_Submenu_Items = 1  
    let Tlist_Max_Tag_Length = 30  
    let Tlist_Process_File_Always = 0  
    let Tlist_Show_Menu = 0  
    let Tlist_Sort_Type = "order"  
    let Tlist_Use_Horiz_Window = 0  
    let Tlist_WinWidth = 31  
      
    map <F12> :TlistOpen<CR> 

map <F9> :call CompileRunGcc()<CR>

func! CompileRunGcc()
    exec "w" 
    if &filetype == 'c' 
        exec '!g++ % -o %<'
        exec '!time ./%<'
    elseif &filetype == 'cpp'
        exec '!g++ % -o %<'
        exec '!time ./%<'
    elseif &filetype == 'python'
        exec '!time python %'
    elseif &filetype == 'sh'
        :!time bash %
    endif                                                                              
endfunc 
    
      
    "QuickFix  
    nmap <F6> :cn<cr>  
    nmap <F7> :cp<cr>  
      
    "MiniBufExplorer  
    "let g:miniBufExplMapWindowNavVim = 1  
    "let g:miniBufExplMapWindowNavArrows = 1  
    let g:miniBufExplModSelTarget = 1  
    let g:miniBufExplorerMoreThanOne = 2  
    let g:miniBufExplModSelTarget = 0  
    let g:miniBufExplUseSingleClick = 1  
    let g:miniBufExplMapWindowNavVim = 1  
    let g:miniBufExplVSplit = 15    "25  
    let g:miniBufExplSplitBelow=1  
      

"
"             __                __          
"     __   __/_/___ ___  ____  / /_  _______
"     \ \ / / / __ `__ \/ __ \/ / / / / ___/
"      \ V / / / / / / / /_/ / / /_/ (__  )
"       \_/_/_/ /_/ /_/ ,___/_/\____/____/
"                    /_/
"            
"
" Author: chxuan <787280310@qq.com>
" Repository: https://github.com/chxuan/vimplus
" Create Date: 2016-04-10
" License: MIT

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 通用设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader = "`"      " 定义<leader>键
set nocompatible         " 设置不兼容原始vi模式
filetype on              " 设置开启文件类型侦测
filetype plugin on       " 设置加载对应文件类型的插件
set noeb                 " 关闭错误的提示
syntax enable            " 开启语法高亮功能
syntax on                " 自动语法高亮
set t_Co=256             " 开启256色支持
set cmdheight=2          " 设置命令行的高度
set showcmd              " select模式下显示选中的行数
set ruler                " 总是显示光标位置
set laststatus=2         " 总是显示状态栏
set number               " 开启行号显示
set cursorline           " 高亮显示当前行
set whichwrap+=<,>,h,l   " 设置光标键跨行
set ttimeoutlen=0        " 设置<ESC>键响应时间
set virtualedit=block,onemore   " 允许光标出现在最后一个字符的后面

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 代码缩进和排版
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set autoindent           " 设置自动缩进
set cindent              " 设置使用C/C++语言的自动缩进方式
set cinoptions=g0,:0,N-s,(0    " 设置C/C++语言的具体缩进方式
set smartindent          " 智能的选择对其方式
filetype indent on       " 自适应不同语言的智能缩进
set expandtab            " 将制表符扩展为空格
set tabstop=4            " 设置编辑时制表符占用空格数
set shiftwidth=4         " 设置格式化时制表符占用空格数
set softtabstop=4        " 设置4个空格为制表符
set smarttab             " 在行和段开始处使用制表符
set nowrap               " 禁止折行
set backspace=2          " 使用回车键正常处理indent,eol,start等
set sidescroll=10        " 设置向右滚动字符数
set nofoldenable         " 禁用折叠代码

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 搜索设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set hlsearch            " 高亮显示搜索结果
set incsearch           " 开启实时搜索功能
set ignorecase          " 搜索时大小写不敏感

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 缓存设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nobackup            " 设置不备份
set noswapfile          " 禁止生成临时文件
set autoread            " 文件在vim之外修改过，自动重新读入
set autowrite           " 设置自动保存
set confirm             " 在处理未保存或只读文件的时候，弹出确认

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 编码设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set langmenu=zh_CN.UTF-8
set helplang=cn
set termencoding=utf-8
set encoding=utf8
set fileencodings=utf8,ucs-bom,gbk,cp936,gb2312,gb18030

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 插件列表
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')

Plug 'chxuan/change-colorscheme'
Plug 'chxuan/vimplus-startify'
Plug 'scrooloose/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Raimondi/delimitMate'

call plug#end()            

" load vim default plugin
runtime macros/matchit.vim


" 安装、更新、删除插件
nnoremap <leader><leader>i :PlugInstall<cr>
nnoremap <leader><leader>u :PlugUpdate<cr>
nnoremap <leader><leader>c :PlugClean<cr>


" 打开文件自动定位到最后编辑的位置
autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | execute "normal! g'\"" | endif

" 主题
set background=dark
let g:onedark_termcolors=256

" airline
let g:airline_theme="onedark"
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''


" change-colorscheme
nnoremap <silent> <F9> :PreviousColorScheme<cr>
inoremap <silent> <F9> <esc> :PreviousColorScheme<cr>
nnoremap <silent> <F10> :NextColorScheme<cr>
inoremap <silent> <F10> <esc> :NextColorScheme<cr>
nnoremap <silent> <F11> :RandomColorScheme<cr>
inoremap <silent> <F11> <esc> :RandomColorScheme<cr>
nnoremap <silent> <F12> :ShowColorScheme<cr>
inoremap <silent> <F12> <esc> :ShowColorScheme<cr>

" prepare-code
let g:prepare_code_plugin_path = expand($HOME . "/.vim/plugged/prepare-code")


" nerdtree
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1
let g:NERDTreeHighlightFolders = 1         
let g:NERDTreeHighlightFoldersFullName = 1 
let g:NERDTreeDirArrowExpandable='▷'
let g:NERDTreeDirArrowCollapsible='▼'


" ctags
set tags+=/usr/include/tags
set tags+=~/.vim/systags
set tags+=~/.vim/x86_64-linux-gnu-systags
let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_semantic_triggers =  {
  \   'c' : ['->', '.','re![_a-zA-z0-9]'],
  \   'objc' : ['->', '.', 're!\[[_a-zA-Z]+\w*\s', 're!^\s*[^\W\d]\w*\s',
  \             're!\[.*\]\s'],
  \   'ocaml' : ['.', '#'],
  \   'cpp,objcpp' : ['->', '.', '::','re![_a-zA-Z0-9]'],
  \   'perl' : ['->'],
  \   'php' : ['->', '::'],
  \   'cs,java,javascript,typescript,d,python,perl6,scala,vb,elixir,go' : ['.'],
  \   'ruby' : ['.', '::'],
  \   'lua' : ['.', ':'],
  \   'erlang' : [':'],
  \ }
let g:ycm_semantic_triggers.c = ['->', '.', ' ', '(', '[', '&',']']

" tagbar
let g:tagbar_width = 30
nnoremap <silent> <leader>t :TagbarToggle<cr>
inoremap <silent> <leader>t <esc> :TagbarToggle<cr>


" nerdtree-git-plugin
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }


" echodoc.vim
let g:echodoc_enable_at_startup = 1

" 个性化
if filereadable(expand($HOME . '/.vimrc.local'))
    source $HOME/.vimrc.local
endif
if filereadable(expand($HOME . '/.vimrc.calendar'))
    source $HOME/.vimrc.calendar
endif
if filereadable(expand($HOME . '/.vimrc.nerdtree'))
    source $HOME/.vimrc.nerdtree
endif
