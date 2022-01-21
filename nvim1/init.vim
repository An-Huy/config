:set number
:set autoindent
:set tabstop=4
:set number
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a

call plug#begin()
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'preservim/nerdtree'	 
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'arcticicestudio/nord-vim'
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'scrooloose/syntastic'
	Plug 'tpope/vim-surround'
	Plug 'mattn/emmet-vim'
	Plug 'kyazdani42/nvim-web-devicons' 
	Plug 'ryanoasis/vim-devicons'
	set encoding=UTF-8
call plug#end()

colorscheme nord

"NERDTree configurations
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
nnoremap <C-q> :NERDTreeClose

" Close the tab if NERDTree is the only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif


"vim-airline configurations
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

let g:airline_theme='nord'
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '   '
let g:airline_symbols.colnr=':'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.dirty='⚡'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#hunks#enabled=0
let g:airline#extensions#hunks#coc_git = 1
