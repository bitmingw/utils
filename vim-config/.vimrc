" setup pathogen
runtime autoload/pathogen.vim

" Disable smart file type so plugins can manage
filetype off

call pathogen#infect()
call pathogen#helptags()

" multiple functions for backspace key
set backspace=indent,eol,start
" disable backup
set nobackup
" disable write to backup file
set nowritebackup
" disable swap file
set noswapfile
" number of history length
set history=1000


" match mode
set showmatch
" show input command
set showcmd
" real time search
set incsearch
" search ignore case
set ignorecase
" highlight search results
set hlsearch
" match case if applicable
set smartcase
" auto complete menu
set wildmenu
" list files and match longest str in auto complete
set wildmode=list:longest,full


" always display status line
set laststatus=2
" display cursor location
set ruler
" highlight line and column
set cursorline
" display line number
set number
" highlight column 80
set colorcolumn=80


" syntax highlight
syntax enable
syntax on


" wrap a line only visually
set wrap
set linebreak
set nolist
set textwidth=0
set wrapmargin=0


" smart indent
filetype plugin on
filetype plugin indent on
" expand tab to space
set expandtab
" number of spaces consumed by a tab
set tabstop=4
set shiftwidth=4
" regard continuous spaces to tabs for fast delete
set softtabstop=4
" automatic indent
set autoindent


" open new window in right with vsplit
set splitright
" open new window in below with split
set splitbelow


" set new word delimiter
set iskeyword-=.
set iskeyword-=#
set iskeyword-=-


" code folding
set foldmethod=syntax
" close folding by default
" keys: za -> open/close folding, zM -> close all, zR -> open all
set nofoldenable


" UTF-8 encoding
set encoding=utf-8
set fileencodings=utf-8


" vim-colors-solarized configurations
" color scheme
set background=dark
" colorscheme solarized


" nerdtree configurations
" start NERDTree automatically when startup
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" close NERDTree if it is the only left window
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


" ctrlp configurations
let g:ctrlp_map='<C-p>'
let g:ctrlp_cmd='CtrlP'
let g:ctrlp_working_path_mode='ra'
let g:ctrlp_root_markers=['pom.xml', '.p4ignore']
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore='\v[\/]\.(git|hg|svn)$'
let g:ctrlp_user_command='find %s -type f'


" syntastic configurations
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=1
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=0
" check python3 syntax rather than python2
let g:syntastic_python_python_exec="/usr/bin/python3"


" FastFold configurations
let g:fastfold_savehook=1
let g:fastfold_fold_command_suffixes=['x','X','a','A','o','O','c','C']
let g:fastfold_fold_movement_commands=[']z','[z','zj','zk']


" neocomplete.vim configurations
let g:neocomplete#enable_at_startup=1
let g:neocomplete#enable_smart_case=1
let g:neocomplete#sources#syntax#min_keyword_length=3
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags


" auto-pairs configurations
let g:AutoPairsFlyMode=0
let g:AutoPairsShortcutBackInsert='<M-b>'


" vim-multiple-cursors configurations
" override original mapping since it conflicts with ctrlp
let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-b>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'
let g:multi_cursor_start_key='<F6>'


" vim-indent-guides configurations
let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1


" vim-javascript configurations
set regexpengine=1
let g:javascript_enable_domhtmlcss=1
let g:javascript_ignore_javaScriptdoc=1
