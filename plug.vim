call plug#begin()
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
"   - Vim (Windows): '~/vimfiles/plugged'
"   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
" You can specify a custom plugin directory by passing it as the argument
"   - e.g. `call plug#begin('~/.vim/plugged')`
"   - Avoid using standard Vim directory names like 'plugin'

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'git@gitee.com:vimplugmirror/vim-easy-align.git'

" Any valid git URL is allowed
Plug 'git@gitee.com:vimplugmirror/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
Plug 'git@gitee.com:vimplugmirror/ultisnips' | Plug 'git@gitee.com:vimplugmirror/vim-snippets'

" On-demand loading
Plug 'git@gitee.com:vimplugmirror/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'git@gitee.com:vimplugmirror/vim-fireplace', { 'for': 'clojure' }

" Using a non-default branch
Plug 'git@gitee.com:vimplugmirror/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'git@gitee.com:vimplugmirror/vim-go', { 'tag': '*' }

" Plugin options
Plug 'git@gitee.com:vimplugmirror/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

"可以搜索文件
" Plugin outside ~/.vim/plugged with post-update hook
" Plug 'git@gitee.com:vimplugmirror/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'git@gitee.com:vimplugmirror/fzf', { 'do': { -> fzf#install() } }
Plug 'git@gitee.com:vimplugmirror/fzf.vim'

"外观
Plug 'git@gitee.com:vimplugmirror/vim-airline.git'
Plug 'git@gitee.com:vimplugmirror/vim.git'

"Ranger文件插件，再下面那个是依赖
Plug 'git@gitee.com:vimplugmirror/ranger.vim'
Plug 'git@gitee.com:vimplugmirror/bclose.vim'

"查看mark
Plug 'git@gitee.com:vimplugmirror/vim-signature.git'

"美化起始页
Plug 'git@gitee.com:vimplugmirror/vim-startify.git'

Plug 'git@gitee.com:vimplugmirror/vim-peekaboo.git'

"自动补全
Plug 'git@gitee.com:vimplugmirror/deoplete.nvim.git', { 'do': ':UpdateRemotePlugins' }
let g:deoplete#enable_at_startup = 1
Plug 'git@gitee.com:vimplugmirror/deoplete-jedi.git'

" 参考https://jdhao.github.io/2018/09/05/centos_nvim_install_use_guide/
Plug 'git@gitee.com:vimplugmirror/jedi-vim.git'
" disable autocompletion, cause we use deoplete for completion
let g:jedi#completions_enabled = 0
" open the go-to function in split, not another buffer
let g:jedi#use_splits_not_buffers = "right"

" Unmanaged plugin (manually installed and updated)
" Plug '~/my-prototype-plugin'

" Initialize plugin system
call plug#end()

"插件配置
    " vim-airline
        let g:airline#extensions#coc#enabled = 1
        let g:airline#extensions#branch#enabled = 1
        let g:airline#extensions#tabline#enabled = 1
        let g:airline#extensions#tabline#show_buffers = 1
        let g:airline#extensions#tabline#formatter = 'unique_tail'
        let g:airline#extensions#tabline#tab_nr_type = 1
        let g:airline#extensions#tabline#show_tab_nr = 1
        let g:airline#extensions#tabline#fnametruncate = 16
        let g:airline#extensions#tabline#fnamecollapse = 2
        let g:airline#extensions#tabline#buffer_idx_mode = 1
        let g:airline#extensions#tabline#buffer_nr_show = 0
        let g:airline_powerline_fonts = 0
        let g:airline_left_sep = ''
        let g:airline_right_sep = ''
        " 缓冲区移动键
            nmap <silent> <leader>1         <Plug>AirlineSelectTab1
            nmap <silent> <leader>2         <Plug>AirlineSelectTab2
            nmap <silent> <leader>3         <Plug>AirlineSelectTab3
            nmap <silent> <leader>4         <Plug>AirlineSelectTab4
            nmap <silent> <leader>5         <Plug>AirlineSelectTab5
            nmap <silent> <leader>6         <Plug>AirlineSelectTab6
            nmap <silent> <leader>7         <Plug>AirlineSelectTab7
            nmap <silent> <leader>8         <Plug>AirlineSelectTab8
            nmap <silent> <leader>9         <Plug>AirlineSelectTab9
            nmap <silent> <leader>-         <Plug>AirlineSelectPrevTab
            nmap <silent> <leader>=         <Plug>AirlineSelectNextTab

    "dracula
        colorscheme dracula
        set termguicolors

        " 去除背景高亮
        highlight Normal guibg=NONE ctermbg=None
        highlight comment ctermfg=DarkGreen guifg=#008800

        " 打开行高亮, 定义行高亮样式
        set cursorline
        highlight CursorLine ctermfg=None ctermbg=236 guifg=None guibg=#111111
