 if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif

" Plugins will be downloaded under the specified directory.
call plug#begin()

" Declare the list of plugins.
Plug 'scrooloose/nerdtree'
Plug 'rking/ag.vim'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'sheerun/vim-polyglot'
Plug 'joshdick/onedark.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'w0rp/ale'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jiangmiao/auto-pairs'

Plug 'tpope/vim-rails'
Plug 'vim-ruby/vim-ruby'
Plug 'janko-m/vim-test'

Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
" List ends here. Plugins become visible to Vim after this call.
call plug#end()

autocmd VimEnter * | NERDTree
" INITIAL CONFIGS "
set mouse=a
set ruler
set number
set hidden

let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='onedark'
let g:airline#extensions#tabline#tab_nr_type = 1
let g:airline#extensions#tabline#formatter = 'default'
let g:airline#extensions#tabline#fnametruncate = 16
let g:airline#extensions#tabline#fnamecollapse = 2
let g:airline#extensions#tabline#buffer_idx_mode = 1

" MAPPING KEYS "
let mapleader="\<space>"
nmap <leader>p :FZF<CR>
nnoremap <silent> <leader>e :NERDTreeToggle<CR>
nmap <leader>nf :NERDTreeFind<CR>
nnoremap <silent> <leader>z :u<CR>
nnoremap <silent> <leader>t :tabnew<CR>
nmap <leader>s :w!<CR>
nnoremap <silent> <leader>q :q<CR>
nnoremap <silent> <leader>qa :wqa<CR>
nmap <Leader><CR> :nohlsearch<cr>
nmap <Leader>vs :vsplit<cr>
nmap <Leader>F :Ag<space>

nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9

map <Leader>tn :TestNearest<CR>
map <Leader>tf :TestFile<CR>
map <Leader>ta :TestSuite<CR>
map <Leader>tl :TestLast<CR>

" Terminal integrated with F4
let g:term_buf = 0
function! Term_toggle()
  1wincmd w
  if g:term_buf == bufnr("")
    setlocal bufhidden=hide
    close
  else
    topleft vnew
    try
      exec "buffer ".g:term_buf
    catch
      call termopen("zsh", {"detach": 1 })
      let g:term_buf = bufnr("")
    endtry
    startinsert!
  endif
endfunction
nnoremap <f5> :call Term_toggle()<cr>

" Exit from terminal
:tnoremap <F6> <C-\><C-n>

" THEME "
colorscheme onedark
set background=dark
set termguicolors
