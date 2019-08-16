set autoindent      "Keep indentation from previous line
set smartindent     "Automatically inserts indentation in some cases
set cindent         "Like smartindent, but stricter and more customisable

" need this line for vim 8.1 nerd tree issues where ^G is being
" prefixed to each file name and syntax hilghting doesn't work
syn on

"cursor hilighting
windo set cursorline
hi CursorLine term=bold cterm=bold guibg=Grey40

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
    let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py'
    let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
     let g:ycm_semantic_triggers = {
             \ 'tex'  : ['{']
         \}

     Plugin 'ajh17/VimCompletesMe'

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

    
    Plugin 'scrooloose/syntastic'

    Plugin 'vhdirk/vim-cmake'

    " highlights the all the word at the cursor in the current buffer
    Plugin 'RRethy/vim-illuminate'

    " plugin to pulse everytime a search result is scrolled through
    Plugin 'inside/vim-search-pulse'
    let g:vim_search_pulse_duration = 200
    
    "plugin for nerd tree 
    Plugin 'scrooloose/nerdtree'
    " git repos on your local machine (i.e. when working on your own plugin)
    ""Plugin 'file:///home/gmarik/path/to/plugin'""
    " The sparkup vim script is in a subdirectory of this repo called vim.
    " Pass the path to set the runtimepath properly.
    Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
    " Avoid a name conflict with L9
    Plugin 'user/L9', {'name': 'newL9'}
    
    "new plugins on 17/10/
    " plugin to show a status bar
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

"for Pathogen"
set nocp
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


"mapping tab commands"
map <C-l> :tabn<CR>
map <C-h> :tabp<CR>
map <C-t> :tabnew<CR>


"mapping NERDTree toggeling"
map <F2> :NERDTreeToggle<CR>

"toggling line numbering"
nmap <silent> <S-n>  : set number! number?<cr>

"toggling relative line numbering"
function! NumberToggle()
    if(&nu==1)
        set nu!
        set rnu
    else
        set nornu
        set nu
    endif
endfunction
nnoremap <S-n><S-r> : call NumberToggle()<CR>

"toggling scroll binding"
noremap <silent> <S-b> : windo set scrollbind! scrollbind?<cr>

" open the command prompt with vim in a vertical split
nnoremap vterm : vert term
