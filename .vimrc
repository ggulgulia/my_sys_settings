set autoindent      "Keep indentation from previous line
set smartindent     "Automatically inserts indentation in some cases
set cindent         "Like smartindent, but stricter and more customisable

set nocompatible              " be iMproved, required
    filetype off                  " required

    " set the runtime path to include Vundle and initialize
    set rtp+=~/.vim/bundle/Vundle.vim
    call vundle#begin()
    " alternatively, pass a path where Vundle should install plugins
    "call vundle#begin('~/some/path/here')

    " let Vundle manage Vundle, required
    Plugin 'VundleVim/Vundle.vim'

    "auto complete plugin 
    Plugin 'Valloric/YouCompleteMe'
    let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
     let g:ycm_semantic_triggers = {
             \ 'tex'  : ['{']
         \}
     let g:ycm_show_diagnostics_ui = 0

    " Plugin for do quick snipest """"""""""""""""""""""""""""""""""""""""""
    " " Track the engine.
    Plugin 'SirVer/ultisnips'
    " Snippets are separated from the engine. Add this if you want them:
    Plugin 'honza/vim-snippets'
    "" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
    let g:UltiSnipsExpandTrigger="<C-j>"
    let g:UltiSnipsJumpForwardTrigger="<C-j>"
    let g:UltiSnipsJumpBackwardTrigger="<C-k>"

    " The following are examples of different formats supported.
    " Keep Plugin commands between vundle#begin/end.
    " plugin on GitHub repo
    Plugin 'tpope/vim-fugitive'
    " Git plugin not hosted on GitHub
    Plugin 'git://git.wincent.com/command-t.git'
    
    "plugin for nerd tree 
    Plugin 'scrooloose/nerdtree'
    " git repos on your local machine (i.e. when working on your own plugin)
    Plugin 'file:///home/gmarik/path/to/plugin'
    " The sparkup vim script is in a subdirectory of this repo called vim.
    " Pass the path to set the runtimepath properly.
    Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
    " Avoid a name conflict with L9
    Plugin 'user/L9', {'name': 'newL9'}
    
    "new plugins on 17/10/
    " Plugin to show a status bar
     Plugin 'vim-airline/vim-airline'
     Plugin 'vim-airline/vim-airline-themes'
    " All of your Plugins must be added before the following line
    call vundle#end()            " required
    filetype plugin indent on    " required
    " To ignore plugin indent changes, instead use:
    "filetype plugin on
    "
" Brief help
    " :PluginList          - list configured plugins
    " :PluginInstall(!)    - install (update) plugins
    " :PluginSearch(!) foo - search (or refresh cache first) for foo
    " :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
    "
    " see :h vundle for more details or wiki for FAQ
    " Put your non-Plugin stuff after this line


autocmd Filetype cpp setlocal tabstop=4
"line number"
set number
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

"to automatically open NERDTree
autocmd VimEnter * NERDTree

"making NERDTree Pritter
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'

"for Pathogen"
execute pathogen#infect()

"for syntastic plugin"
    let g:syntastic_cpp_checkers = ['cpp']
    let g:syntastic_c_checkers = ['c']
    set statusline+=%#warningmsg#
    set statusline+=%{SyntasticStatuslineFlag()}
    set statusline+=%*

    let g:syntastic_always_populate_loc_list = 1
    let g:syntastic_auto_loc_list = 1
    let g:syntastic_check_on_open = 1
    let g:syntastic_check_on_wq = 0
