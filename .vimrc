"        _                      _             ____      _              
" __   _(_)_ __ ___  _ __ ___  | |__  _   _  |  _ \ ___| | ___ _______ 
" \ \ / / | '_ ` _ \| '__/ __| | '_ \| | | | | |_) / _ \ |/ _ \_  / _ \
"  \ V /| | | | | | | | | (__  | |_) | |_| | |  _ <  __/ | (_) / /  __/
" (_)_/ |_|_| |_| |_|_|  \___| |_.__/ \__, | |_| \_\___|_|\___/___\___|
"                                     |___/        
" 


" SET

set wrap                      " New string



set number                    " Number

set hlsearch                  " Search
set clipboard=unnamedplus     " Copy in buffer

set expandtab                 " Replace TAB on Space 
set tabstop=4                 " Replace TAB on Space 
set shiftwidth=4              " Replace TAB on Space 

set listchars=tab:>·,space:·  " SHOW SPACE
set list                      " SHOW SPACE

set encoding=utf-8            " UTF-8

syntax on                     " Syntaxis

"---------------------------------

" LET

let g:multi_cursor_next_key='<C-n>'     " Multi-Cursor
let g:multi_cursor_prev_key='<C-p>'     " Multi-Cursor
let g:multi_cursor_skip_key='<C-x>'     " Multi-Cursor
let g:multi_cursor_quit_key='<C-m>'     " Multi-Cursor

let g:mapleader='9'                     " Easy Motion

let g:table_mode_corner_corner='+'      " Table
let g:table_mode_corner='+'             " Table
let g:table_mode_header_fillchar='-'    " Table
let g:table_mode_align_char=' '         " Table

"---------------------------------

" THEME

colorscheme tender       " Use THEME
" set background=dark
set t_Co=256             " Use 256 color

"--------------------------------- 

" PLUGINS

call plug#begin('~/.vim/plugged') 

    Plug 'Valloric/YouCompleteMe'
    Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
    Plug 'jiangmiao/auto-pairs'
    Plug 'easymotion/vim-easymotion'
    Plug 'terryma/vim-multiple-cursors'
    Plug 'dhruvasagar/vim-table-mode'

call plug#end()

"-------------------------------

" MAP

map <C-d> :NERDTreeToggle<CR>
map <Leader> <Plug>(easymotion-prefix)
map <C-f> :w<CR>
map <C-g> :noh<CR>
map <C-b> :tabnew <CR>
map <C-l> gt <CR>
map <C-h> gT <CR>

nnoremap <F2> :source ~/.vimrc <CR>
nnoremap <F3> :set relativenumber<CR>
nnoremap <F4> :set relativenumber!<CR>
nnoremap <F5> :set list!<CR>

map <C-t> :TableModeEnable<CR>
map <C-e> :TableModeDisable<CR>

"--------------------------------- 

" BINDs

abbr bvar var <CR> i:integer;<CR><BackSpace>
abbr bfor for i := 1 to 10 do begin <CR><TAB><CR>end;
abbr bbe begin <CR><TAB><CR>end.
abbr bar a:array[1..10] of integer;
abbr bwr write();
abbr bwrl writeln();
abbr bre read();
abbr brel readln();

                    
