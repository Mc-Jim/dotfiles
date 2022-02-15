
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
	Plug 'mattn/emmet-vim',
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'ryanoasis/vim-devicons',
	Plug 'dylanaraps/wal.vim'
	Plug 'sheerun/vim-polyglot'
	Plug 'lukelbd/vim-tabline'
	Plug 'preservim/tagbar'
	Plug 'wfxr/minimap.vim'
	Plug 'stevearc/vim-arduino'
	Plug 'mhinz/vim-startify'

call plug#end()

" autoload extensions---------------------------

autocmd BufEnter * lcd %:p:h

" NERDTree--------------------------------------

let g:NERDTreeMinimalUI = 1

" Code-Minimap----------------------------------

let g:minimap_width = 9
let g:minimap_auto_start = 1
let g:minimap_auto_start_win_enter = 1




 

let ascii_art = [
     \ '   __     _                     ',
     \ '  /\ \  /| |                    ',
     \ '  \ \ \ || |                    ',
     \ '   \ \ \|| | __   __            ',
     \ '    \ \ \| |/\_\ /\ `¯¯`v¯¯`\   ',
     \ '     \ \   |\/\¯\\ \ \¯\ \¯\ \  ',
     \ '      \ \__| \ \_\\ \_\ \_\ \_\ ',
     \ '       \/_/   \/_/ \/_/\/_/\/_/ ',
     \ '']
                           
                           
let g:startify_custom_header = ascii_art
