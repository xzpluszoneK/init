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
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}

" YouCompleteMe opensuse 12.2 >= glibc 2.15 lvm3.5
Plugin 'Valloric/YouCompleteMe'

"ultisnips
" Track the engine.
Plugin 'SirVer/ultisnips'
" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'

"c writer name
Plugin 'c.vim'

"dir tree
Plugin 'The-NERD-tree'

"tab manage
Plugin 'tabman.vim'

"python
Plugin 'pylint.vim'
Plugin 'davidhalter/jedi-vim'

"power line
Plugin 'https://github.com/Lokaltog/vim-powerline.git'

"fuzzy
Plugin 'FuzzyFinder'

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

set fenc=utf-8
set fencs=ucs-bom,utf-8,euc-kr,cp949
set encoding=utf-8

set nu
set backspace=indent,eol,start
set ts=4
set sts=4
set sw=4
set et
set smartindent
set cindent
set hlsearch    
set nobackup
set incsearch   
set splitbelow  
set splitright  
set cursorcolumn cursorline
set laststatus=2

colorscheme solarized
set background=dark
let g:solarized_termcolors=256
let g:solarized_termtrans=1

"youcompleteme
let g:ycm_global_ycm_extra_conf = "~/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py"
let g:ycm_key_list_select_completion = ['<Down>', '<ENTER>']

"disable view
set completeopt-=preview

let s:clang_library_path='/usr/lib/x86_64-linux-gnu/'
if isdirectory(s:clang_library_path)
    let g:clang_library_path=s:clang_library_path
endif

"jedi for ymc goto define
let g:ycm_autoclose_preview_window_after_completion=1
nnoremap <F12> :YcmCompleter GoToDefinition<CR>

"UltiSnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

"python autocomplete
autocmd FileType python setlocal completeopt-=preview

" 파일명 탐색시 제외할 파일 이름 패턴 지정
let g:fuf_coveragefile_exclude = '\v\~$|\.(o|exe|dll|bak|orig|swp|class|so)$|(^|[/\\])\.(hg|git|bzr)($|[/\\])'
map <Leader>ff <ESC>:FufCoverageFile!<CR>
map <Leader>fb <ESC>:FufBuffer!<CR>
map <Leader>fd <ESC>:FufDir!<CR>

"위와 같이 설정하면, “doc:txt” 로 검색시에 다음을 검색 대상으로 한다.
let g:fuf_abbrevMap = {
      \   "^proj:" : [
      \     "/Project/**/",
      \   ],
      \ }

syntax on

"" mecro
nmap <F1> :NERDTreeToggle<cr>
nmap <F2> :TMToggle<cr>
nmap <F3> :vertical res +5<cr>
nmap <F4> :vertical res -5<cr>
nmap <F5> :res +5<cr>
nmap <F6> :res -5<cr>
nmap <S-Right> :tabnext<cr>
nmap <S-Left> :tabprevious<cr>
nmap <S-T> :tabnew<cr>
nmap <S-X> :tabclose<cr>
