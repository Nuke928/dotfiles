execute pathogen#infect()

python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup

set laststatus=2

set expandtab
set tabstop=4
set number
set shiftwidth=4

syntax on
set guifont=Droid\ Sans\ Mono:h10

set term=xterm-256color
set t_Co=256

let g:Powerline_symbols = "fancy"

set background=dark
colorscheme solarized

" No arrow keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" No hjkl
noremap h <NOP>
noremap j <NOP>
noremap k <NOP>
noremap l <NOP>

" Map window commands to hjkl
nmap <silent> h :wincmd h<CR>
nmap <silent> j :wincmd j<CR>
nmap <silent> k :wincmd k<CR>
nmap <silent> l :wincmd l<CR>

" Tab navigation like firefox
nnoremap <C-S-tab> :tabprevious<CR>
nnoremap <C-tab>   :tabnext<CR>
nnoremap <C-t>     :tabnew<CR>
inoremap <C-S-tab> <Esc>:tabprevious<CR>i
inoremap <C-tab>   <Esc>:tabnext<CR>i
inoremap <C-t>     <Esc>:tabnew<CR>

" GVIM always starts in System32
cd $HOME

" Autostart NERDTree
autocmd VimEnter * NERDTreeToggle
autocmd VimEnter * wincmd p

silent! nmap <C-p> :NERDTreeToggle<CR>
silent! map <F3> :NERDTreeFind<CR>

" F2 triggers Rake for Ruby
autocmd BufNewFile,BufRead *.rb map <F2> :Rake<CR>

" F5 launches python
autocmd BufNewFile,BufRead *.py map <F5> :!python %:p<CR>

let g:NERDTreeMapActivateNode="<F3>"
let g:NERDTreeMapPreview="<F4>"

" Add fugitive to statusline
" set statusline+=%{fugitive#statusline()}

set noerrorbells visualbell t_vb=
if has('autocmd')
  autocmd GUIEnter * set visualbell t_vb=
endif
