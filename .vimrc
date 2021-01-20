so ~/.vim/plugins.vim

let g:lightline = {
  \     'active': {
  \         'left': [['mode', 'paste' ], ['readonly', 'filename', 'modified']],
  \         'right': [['lineinfo'], ['percent'], ['fileformat', 'fileencoding']]
  \     },
  \	'colorscheme': 'jellybeans'
  \     
  \ }
map <C-o> :NERDTreeToggle<CR>
map ; :Files<CR>
nmap ]c <Plug>GitGutterNextHunk
nmap [c <Plug>GitGutterPrevHunk
nmap <Leader>hs <Plug>GitGutterStageHunk
nmap <Leader>hu <Plug>GitGutterUndoHunk
set termguicolors
let g:gruvbox_italic=1
colorscheme gruvbox
set background=dark
set swapfile
set dir=~/.tmp
set laststatus=2
set noshowmode
set number
syntax on
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
