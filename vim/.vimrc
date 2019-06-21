
" =============== Plugins ===================
execute pathogen#infect()

" Airline
let g:airline_powerline_fonts = 1
let g:airline_theme='badwolf'
let g:powerline_symbols='unicode'
set laststatus=2

" Nerdtree
map <C-n> :NERDTreeToggle<CR>

" Completor
let g:completor_python_binary='/export/ssd/xma/miniconda3/bin/python'
let g:completor_auto_close_doc=0
autocmd FileType python setlocal completeopt-=preview
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>\<cr>" : "\<cr>"
let g:completor_auto_trigger = 1
let g:completor_complete_options = 'menuone,noselect'

" Comfortable-motion
noremap <silent> <ScrollWheelDown> :call comfortable_motion#flick(8)<CR>
noremap <silent> <ScrollWheelUp>   :call comfortable_motion#flick(-8)<CR>


" ALE
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:ale_sign_column_always = 1

" FZF
set rtp+=~/.fzf

let g:SimpylFold_docstring_preview = 1

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
set linebreak    "Wrap lines at convenient points

" ================ Turn Off Swap Files ==============
set noswapfile
set nobackup
set nowb

" ================ Indentation ======================
" configure expanding of tabs for various file types
au BufRead,BufNewFile *.py set expandtab
au BufRead,BufNewFile *.c set noexpandtab
au BufRead,BufNewFile *.h set noexpandtab
au BufRead,BufNewFile Makefile* set noexpandtab

" --------------------------------------------------------------------------------
" configure editor with tabs and nice stuff...
" --------------------------------------------------------------------------------
set expandtab           " enter spaces when tab is pressed
"set textwidth=120       " break lines when line length increases
set tabstop=4           " use 4 spaces to represent tab
"set softtabstop=4
"set shiftwidth=4        " number of spaces to use for auto indent
set autoindent          " copy indent from current line when starting a new line

" make backspaces more powerfull
set backspace=indent,eol,start

"set ruler                           " show line and column number
"syntax on               " syntax highlighting
"set showcmd             " show (partial) command in status line

set smartindent
"set smarttab
"set shiftwidth=2
"set softtabstop=2
"set tabstop=2
"set expandtab


" Display tabs and trailing spaces visually
"set list listchars=tab:\ \ ,trail:·


"autocmd! CursorMoved * normal zz

nnoremap ;; :w<CR>  
nnoremap ;' :wq<CR>
nnoremap '' :q<CR>

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

auto BufRead,BufNewFile *.tape setf filetype=ducttape

command! PP :normal oimport pdb;pdb.set_trace()<ESC>

let c='a'
while c <= 'z'
  exec "set <A-".c.">=\e".c
  exec "imap \e".c." <A-".c.">"
  let c = nr2char(1+char2nr(c))
endw

set timeout ttimeoutlen=50

nnoremap <C-l> :Ag<CR>
nnoremap <C-p> :FZF<CR>
nmap <c-h> :TagbarToggle<CR>
nnoremap <C-a> :Buffers<CR>
nnoremap <Leader>s :%s/\<<C-r><C-w>\>/
