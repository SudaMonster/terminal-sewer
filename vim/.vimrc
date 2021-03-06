" =============== Plugins ===================
call plug#begin()
" Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
let g:airline_powerline_fonts = 1
let g:airline_theme='badwolf'
let g:powerline_symbols='unicode'
set laststatus=2

" Nerdtree
Plug 'scrooloose/nerdtree'
map <C-n> :NERDTreeToggle<CR>

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

Plug 'yuttie/comfortable-motion.vim'
"noremap <silent> <ScrollWheelDown> :call comfortable_motion#flick(8)<CR>
"noremap <silent> <ScrollWheelUp>   :call comfortable_motion#flick(-8)<CR>

Plug 'maralla/completor.vim'

Plug 'w0rp/ale'
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:ale_sign_column_always = 1

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

Plug 'tmhedberg/SimpylFold'

call plug#end()

" ============== Theme =============================
colorscheme molokai
syntax on
filetype plugin on
filetype indent on
set t_Co=256
set t_ut=
set number
"let g:molokai_original = 1
let g:rehash256 = 1
set updatetime=100
set mouse=a
set nowrap
set encoding=utf-8
set fileencoding=utf-8
set linebreak    "Wrap lines at convenient points
"
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
set expandtab           " enter spaces when tab is pressed
"set textwidth=120       " break lines when line length increases
set tabstop=4           " use 4 spaces to represent tab
"set softtabstop=4
set autoindent          " copy indent from current line when starting a new line
set shiftwidth=4        " number of spaces to use for auto indent
set backspace=indent,eol,start " make backspaces more powerfull
set ruler                           " show line and column number
set showcmd             " show (partial) command in status line
set smartindent

" ================ Key Bundings ======================
nnoremap ;; :w<CR>  
nnoremap ;' :wq<CR>
nnoremap '' :q<CR>

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

auto BufRead,BufNewFile *.tape setf filetype=ducttape

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
