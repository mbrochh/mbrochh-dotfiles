set encoding=utf-8

" Pathogen options
" =================
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

" Backup and Swapfile options
" ============================
set autoread
set nobackup
set noswapfile

" Undo options
" =============
set history=700
set undolevels=700

" Tabstop and whitespace options
" ===============================
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround 
set expandtab

" Search options
" ===============
set hlsearch
set incsearch
set ignorecase
set smartcase

" Wrapping and format options
" ============================
set nowrap " don't automatically wrap on load
set tw=80  " width of document (used by gd)
set fo-=t  " don't automatically wrap text when typing
set number " show line numbers

" Custom mappings
" ================
map <Leader>r <esc>:so /home/martin/.vimrc<CR>
map <Leader>[ <esc>:tabprevious<CR>
map <Leader>] <esc>:tabnext<CR>
map <Leader>t <esc>:tabnew
vnoremap <Leader>m "+y
vnoremap <Leader>s :sort<CR>

" Show trailing whitespace
" =========================
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
au InsertLeave * match ExtraWhitespace /\s\+$/

" Display 80 char ruler
" ======================
set colorcolumn=80
highlight ColorColumn ctermbg=black guibg=black

" Color scheme
" =============
color wombat256mod
