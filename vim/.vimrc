
" =============== Plugins ===================
execute pathogen#infect()
" Airline
let g:airline_powerline_fonts = 1
let g:airline_theme='badwolf'
let g:powerline_symbols='unicode'
set laststatus=2

"Nerdtree
map <C-n> :NERDTreeToggle<CR>

"Plugin 'completor'
let g:completor_python_binary='/home/xma/tools/anaconda3/bin/python'
let g:completor_auto_close_doc=0
autocmd FileType python setlocal completeopt-=preview
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>\<cr>" : "\<cr>"
let g:completor_auto_trigger = 1
let g:completor_complete_options = 'menuone,noselect'


noremap <silent> <ScrollWheelDown> :call comfortable_motion#flick(8)<CR>
noremap <silent> <ScrollWheelUp>   :call comfortable_motion#flick(-8)<CR>

autocmd FileType python,tape BracelessEnable +indent +fold +highlight
autocmd FileType tape indent on

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" ============== Theme =============================
syntax on
filetype plugin on
filetype indent on
colorscheme molokai
"let g:molokai_original = 1
let g:rehash256 = 1
set updatetime=100

set t_Co=256
set t_ut=
set nu

set mouse=a
set nowrap
set encoding=utf-8
set fileencoding=utf-8

" ================ Turn Off Swap Files ==============
set noswapfile
set nobackup
set nowb

" ================ Indentation ======================
set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab


" Display tabs and trailing spaces visually
"set list listchars=tab:\ \ ,trail:·

set nowrap       "Don't wrap lines
set linebreak    "Wrap lines at convenient points

"autocmd! CursorMoved * normal zz

nnoremap ;; :w<CR>  
nnoremap ;' :wq<CR>
nnoremap '' :q<CR>

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set backspace=indent,eol,start
syntax on
filetype on
auto BufRead,BufNewFile *.tape setf filetype=ducttape
