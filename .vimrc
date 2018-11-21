"My Vimrc

set noerrorbells visualbell t_vb=
if has('autocmd')
  autocmd GUIEnter * set visualbell t_vb =
endif

colorscheme elflord
filetype indent on 	" Load a file config indent file

" Enable syntax processing
syntax enable

" Tabs and spaces
set tabstop=4		" Number of saces per TAB
set softtabstop=4	" Number of spaces in tab when editing
set shiftwidth=4
"set expandtab		" Turn Tabs into spaces
set number		" Show line numbers
set relativenumber 	" Show numbers away from current line
set showcmd		" Show command on bottom bar
set splitright      " puts vertical split on right
set splitbelow      " Puts horiaontal split on bottom

"^[ = <ESC>; 5 = ctrl; 3 = left-alt
"[1;5A ctrl-up | [1;5B ctrl-down | [1;5D  ctrl-left | [1;5C  ctrl-right
" Navagation while in insert mode
imap <C-j> <c-o>j
imap <C-k> <c-o>k
imap <C-h> <c-o>h
imap <C-l> <c-o>l
" Normal mode mapping
map <ESC>[1;3A <C-w>k
map <ESC>[1;3B <C-w>j
map <ESC>[1;3D <C-w>h
map <ESC>[1;3C <C-w>l
" Insert mode mapping
imap <ESC>[1;3A <c-o><C-w>k
imap <ESC>[1;3B <c-o><C-w>j
imap <ESC>[1;3D <c-o><C-w>h
imap <ESC>[1;3C <c-o><C-w>l


set wildmenu		" Visual autocomplete for command menu

set lazyredraw		" Redraw only when we need to

set showmatch		" Highlight match

set incsearch		" Search as characters are entered
set hlsearch		" Hightlight matches

" Turn off search hightlight using ,<space>
nnoremap <leader><space> :nohlsearch<CR>

set foldenable		" Enable folding
set foldlevelstart=10	" Open most folds by default
set foldmethod=marker	" Fold based on indent level


" Movement(This will make it treat wrap around text as lines)
nnoremap j gj
nnoremap k gk

" Move to the beginning/end of line
nnoremap B ^
nnoremap E $

" Unmap $^
nnoremap $ <nop>
nnoremap ^ <nop>

" Highlight last inserted text
nnoremap gV `[v`]

inoremap jk <esc>

" Set backup folder for vim created backups
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup

" Vim jump to last position when opening file
if has("autocmd")
        au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
