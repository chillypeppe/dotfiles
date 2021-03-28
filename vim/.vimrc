call plug#begin('~/.vim/plugged')
 
Plug 'itchyny/lightline.vim'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/fzf.vim'
Plug 'mhinz/vim-startify'
Plug 'ryanoasis/vim-devicons'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-surround'
	autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
	autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"Lint di fallback
"Plug 'dense-analysis/ale'

"Themes
Plug 'drewtempelmeyer/palenight.vim'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'joshdick/onedark.vim'
Plug 'morhetz/gruvbox'

call plug#end()

so	~/.vim/coc.vim
so ~/.vim/hexmode.vim
let g:lightline = {
		\ 'colorscheme': 'gruvbox',
		\ 'active': {
		\	'right': [ [ 'length' ],
		\				[ 'percent', 'lineinfo' ],
		\				[ 'info', 'fileencoding', 'filetype' ] ],
		\	'left': [ [ 'mode', 'paste' ],
		\			  [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
		\ },
		\ 'component_function' : {
		\	'filetype': 'LightlineFiletype',
		\	'gitbranch': 'LightlineGitbranch'
		\ },
       	\ 'component': {
		\	'readonly': '%{&readonly?" ":""}',
		\	'length' : '%{&lines} ',
		\	'fileencoding' : '%{&fileencoding} '
		\ },
	    \ 'separator': { 'left': '', 'right': '' },
        \ 'subseparator': { 'left': '', 'right': '' },
		\ 'mode_map': {
		\ 'n' : '<N>',
		\ 'i' : '<I>',
		\ 'R' : '<R>',
		\ 'v' : '<V>',
		\ 'V' : '<Vl>',
		\ "\<C-v>": '<Vb>',
		\ 'c' : '<C>',
		\ 's' : '<S>',
		\ 'S' : '<Sl>',
		\ "\<C-s>": '<Sb>',
		\ 't': '<T>',
		\ }
		\ }

function! LightlineGitbranch()
  if &ft !~? 'vimfiler\|gundo' && exists("*fugitive#head")
		let _ = fugitive#head()
			return strlen(_) ? ' '._.'  ' :
			\ 'no  motherfucker  '
	endif
	return ''
endfunction

function! LightlineFiletype()
  return &filetype ==# 'python' ? 'python  ' : 
		\ &filetype ==# 'c.doxygen' ? 'C  ' : 
		\ &filetype ==# 'c' ? 'c  ' : 
		\ &filetype ==# 'cpp' ? 'cpp  ' : 
		\ &filetype ==# 'go' ? 'go  ' : 
		\ &filetype ==# 'html' ? 'html  ' : 
		\ &filetype ==# 'javascript' ? 'javascript  ' : 
		\ &filetype ==# 'markdown' ? 'markdown  ' : 
		\ &filetype ==# 'php' ? 'php  ' : 
		\ &filetype ==# 'vim' ? 'vim  ' : 
		\ &filetype ==# 'rust' ? 'rust  ' : 
		\ &filetype ==# 'haskell' ? 'haskell  ' : 
		\ &filetype ==# 'cs' ? 'csharp  ' : 
		\ &filetype ==# 'ruby' ? 'ruby ' :
		\ &filetype ==# 'java' ? 'java  ' :
		\ &filetype ==# 'text' ? 'text  ' : 
		\ &filetype ==# 'tex' ? 'tex  ' : 
		\ &filetype
endfunction

" uso sintassi nasm con i file .asm
let g:asmsyntax = 'nasm'

"Themes
"let g:gruvbox_contrast_dark = 'hard'
set termguicolors
set background=dark
colorscheme gruvbox
set laststatus=2
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab
set number
set splitbelow
set splitright
set noshowmode
set t_ut=
set mouse=a
set undofile
set undodir=$HOME/.vim/undo
set clipboard=unnamed
hi CocErrorFloat ctermfg=DarkRed
nnoremap <C-H> :Hexmode<CR>
inoremap <C-H> <Esc>:Hexmode<CR>
vnoremap <C-H> :<C-U>Hexmode<CR>
map <C-N> :NERDTreeToggle<CR>
map <C-T> :terminal<CR>
nnoremap <Leader>c :set cursorline!<CR>
au BufEnter * if &buftype == 'terminal' | :startinsert | endif
tnoremap <Esc> <C-\><C-n>
function! YRRunAfterMaps()
	nnoremap Y	:<C-U>YRYankCount 'y$'<CR>
endfunction
nnoremap Y y$
autocmd StdinReadPre * let s:std_in=1
