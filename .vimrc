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
	Plug 'sainnhe/sonokai'
	Plug 'itchyny/lightline.vim'
	Plug 'artur-shaik/vim-javacomplete2'
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'scrooloose/syntastic'
	Plug 'tpope/vim-surround'
	Plug 'mattn/emmet-vim'
	Plug 'kyazdani42/nvim-web-devicons' 
	Plug 'ryanoasis/vim-devicons'
	set encoding=UTF-8
call plug#end()

colorscheme sonokai

set laststatus=2

"NERDTree configurations
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
nnoremap <C-q> :NERDTreeClose

" Close the tab if NERDTree is the only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

let g:lightline = {
      \ 'colorscheme': 'one',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ], [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ }

