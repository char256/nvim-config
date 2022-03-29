" 基本配置
    " Tab可视化，结尾空格可视化
    set list
    set listchars=tab:▸\ ,trail:·

    set number     " 行号
    set ttyfast    " 滚动更快
    set lazyredraw " 滚动更快
    syntax on      " 语法高亮

    "Vim自动探测fileencodings的顺序列表
    "启动时会按照它所列出的字符编码方式逐一探测即将打开的文件的字符编码方式
    "并且将fileencoding设置为最终探测到的字符编码方式
    set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
    set termencoding=utf-8              " Vim所工作的终端的字符编码方式

    set autoindent                      " 自动缩进

    set expandtab                       " 用空格代替Tab
    set tabstop=4                       " Tab键显示的宽度
    set shiftwidth=4                    " Tab键显示的宽度

    set showmatch                       " 高亮显示匹配的括号
    set hlsearch                        " 高亮匹配结果
    set ignorecase                      " 搜索时默认忽略大小写
    set smartcase                       " 搜索时智能匹配大小写

    set nobackup                        " 不保存备份文件
    set noswapfile                      " 不保存交换文件
    set undofile                        " 保存历史文件
    set undodir=~/.config/nvim/.undodir " 历史文件位置
    set undolevels=1000                 " 设置最大撤销记录数

    set autoread                        " 文件变化之后自动重读
    set wildmenu                        " 启用命令行模式下自动补全
    set noautochdir                     " 进入Vim不切换到文件所在目录

    let g:python3_host_prog = '/home/xzx/minicinda3/bin/python'

" 插件定义
    " 插件正常工作配置
        set nocompatible
        filetype on
        filetype indent on
        filetype plugin on
        filetype plugin indent on
