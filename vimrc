
"  __   __   __     __    __    
" /\ \ / /  /\ \   /\ "-./  \   
" \ \ \'/   \ \ \  \ \ \-./\ \  
"  \ \__|    \ \_\  \ \_\ \ \_\ 
"   \/_/      \/_/   \/_/  \/_/                         

" mc-jim's config------------------------------- 

set number
set noshowmode

set wildmenu
set lazyredraw

set tabstop=4
set softtabstop=4
set tabline=%!tabbar#tabline()
set showtabline=2

set laststatus=2

syntax on

set splitbelow
set fillchars+=vert:│
set fillchars+=stl:—
set fillchars+=stlnc:—

set encoding=UTF-8

" colors----------------------------------------

colo wal

" shortcuts-------------------------------------

nnoremap <C-t> :tabnew <CR>
nnoremap <C-h> :tabnext <CR>
nnoremap <C-q> :tabclose <CR>
nnoremap <C-1> :tabfirst <CR>

nnoremap <C-e> :NERDTreeToggle <CR>
nnoremap <C-a> :Tagbar <CR>

nnoremap <C-s> :w <CR>

nnoremap <C-x> <C-e> <CR> 
vnoremap <C-c> <C-S-c> <CR> 

" vim-plug--------------------------------------

call plug#begin('~/.vim/plugged/')

	Plug 'mbbill/undotree',
	Plug 'preservim/nerdtree',
	Plug 'junegunn/goyo.vim',
	Plug 'junegunn/limelight.vim',
	Plug 'mattn/emmet-vim',
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'ryanoasis/vim-devicons',
	Plug 'dylanaraps/wal.vim'
	Plug 'sheerun/vim-polyglot'
	Plug 'lukelbd/vim-tabline'
	Plug 'preservim/tagbar'

call plug#end()

" autoload extensions----------------------------

" autocmd VimEnter * Tagbar
autocmd BufEnter * lcd %:p:h

" goyo.vim---------------------------------------

let g:goyo_width = 95
let g:goyo_margin_top= 2.5 
let g:goyo_margin_bottom= 2.5

" NERDTree--------------------------------------

let g:NERDTreeMinimalUI = 1
