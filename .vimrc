"Peter Nguyen vimrc profile
 
"color scheme
colorscheme default
syntax on
 
"tabbing, tab=4space
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set textwidth=80 "char limit per line
set backspace=indent,eol,start " Proper backspace behavior.
set wildmenu                   " Great command-line completion, use '<Tab>' to
                               " move around and '<CR>' to validate.
"line numbering
set number
set autoread
 
"enable mouse scrool (noob mode)
set mouse=a
 
"paste-ing doesn't overwrite previous paste
xnoremap p pgvy
 
"display current file in tab
set title
 
"highlight matching
set showmatch
 
"search as characters are entered
set incsearch
 
"smart case-sensitive search
set smartcase
 
"---------------------------------------
"Keyboard Shortcut modifications
"remap o and shift enter
noremap <CR> o
noremap O O<Esc>
noremap o o<Esc>
 
"remap pgup pgdn
noremap <PageUp> <C-U>
noremap <PageDown> <C-D>
 
"remap :;
nnoremap ; :
 
"Search for highlighted text
"To Use Highlight Text-> press '//'
vnoremap // y/<C-R>"<CR>
 
"split navigation
"nmap <silent> <A-Up> :wincmd k<CR>
"nmap <silent> <A-Down> :wincmd j<CR>
"nmap <silent> <A-Left> :wincmd h<CR>
"nmap <silent> <A-Right> :wincmd l<CR>
 
map <silent> <A-Up> <Esc>:wincmd k<CR>
map <silent> <A-Down> <Esc>:wincmd j<CR>
map <silent> <A-Left> <Esc>:wincmd h<CR>
map <silent> <A-Right> <Esc>:wincmd l<CR>
 
 
imap <silent> <A-Right> <Esc>:wincmd l<CR>
imap <silent> <A-Down> <Esc>:wincmd j<CR>
imap <silent> <A-Left> <Esc>:wincmd h<CR>
imap <silent> <A-Right> <Esc>:wincmd l<CR>
"---------------------------------------
 
"Notepad mode
filetype indent on
func! WordProcessorMode()
    setlocal textwidth=80
    setlocal smartindent
    setlocal spell spelllang=en_us
    setlocal noexpandtab
endfu
 
com! WP call WordProcessorMode()
 
"NerdTree
"autocmd VimEnter * NERDTree
"autocmd VimEnter * wincmd l
 
"set ctags
"set tags=$SF_DIR/tags
