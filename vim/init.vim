 17 Plug 'junegunn/fzf.vim'
 18 Plug 'w0rp/ale'
 19 Plug 'vim-airline/vim-airline'
 20 Plug 'vim-airline/vim-airline-themes'
 21 Plug 'jiangmiao/auto-pairs'
 22
 23 Plug 'tpope/vim-rails'
 24 Plug 'vim-ruby/vim-ruby'
 25 Plug 'janko-m/vim-test'
 26
 27 Plug 'airblade/vim-gitgutter'
 28 Plug 'tpope/vim-fugitive'
 29 " List ends here. Plugins become visible to Vim after this call.
 30 call plug#end()
 31
 32 " INITIAL CONFIGS "
 33 set mouse=a
 34 set ruler
 35 set number
 36 set hidden
 37
 38 let g:airline#extensions#tabline#enabled = 1
 39 let g:airline_theme='onedark'
 40 let g:airline#extensions#tabline#tab_nr_type = 1
 41 let g:airline#extensions#tabline#formatter = 'default'
 42 let g:airline#extensions#tabline#fnametruncate = 16
 43 let g:airline#extensions#tabline#fnamecollapse = 2
 44 let g:airline#extensions#tabline#buffer_idx_mode = 1
 45
 46 " MAPPING KEYS "
 47 let mapleader="\<space>"
 48 nmap <leader>p :FZF<CR>
 49 nnoremap <silent> <leader>e :NERDTreeToggle<CR>
 50 nmap <leader>nf :NERDTreeFind<CR>
 51 nnoremap <silent> <leader>z :u<CR>
 52 nnoremap <silent> <leader>t :tabnew<CR>
 53 nnoremap <silent> <leader>s :w!<CR>
 54 nnoremap <silent> <leader>q :q<CR>
 55 nnoremap <silent> <leader>qa :wqa<CR>
 56 nmap <Leader><CR> :nohlsearch<cr>
 57 nmap <Leader>vs :vsplit<cr>
 58 autocmd VimEnter * | NERDTree
 59
 NORMAL  /Users/anchietajunior/.config/nvim/init.vim                                                                               vim  utf-8[unix]   44% ☰   45/102 ㏑ :  1
"~/.config/nvim/init.vim" 102L, 2716C written
 60 nmap <leader>1 <Plug>AirlineSelectTab1
 61 nmap <leader>2 <Plug>AirlineSelectTab2
 62 nmap <leader>3 <Plug>AirlineSelectTab3
 63 nmap <leader>4 <Plug>AirlineSelectTab4
 64 nmap <leader>5 <Plug>AirlineSelectTab5
 65 nmap <leader>6 <Plug>AirlineSelectTab6
 66 nmap <leader>7 <Plug>AirlineSelectTab7
 67 nmap <leader>8 <Plug>AirlineSelectTab8
 68 nmap <leader>9 <Plug>AirlineSelectTab9
 69
 70 map <Leader>tn :TestNearest<CR>
 71 map <Leader>tf :TestFile<CR>
 72 map <Leader>ta :TestSuite<CR>
 73 map <Leader>tl :TestLast<CR>
 74
 75 " Terminal integrated with F4
 76 let g:term_buf = 0
 77 function! Term_toggle()
 78   1wincmd w
 79   if g:term_buf == bufnr("")
 80     setlocal bufhidden=hide
 81     close
 82   else
 83     topleft vnew
 84     try
 85       exec "buffer ".g:term_buf
 86     catch
 87       call termopen("zsh", {"detach": 1 })
 88       let g:term_buf = bufnr("")
 89     endtry
 90     startinsert!
 91   endif
 92 endfunction
 93 nnoremap <f5> :call Term_toggle()<cr>
 94
 95 " Exit from terminal
 96 :tnoremap <F6> <C-\><C-n>
 97
 98 " THEME "
 99 colorscheme onedark
100 set background=dark
101 set termguicolors
102
 NORMAL  /Users/anchietajunior/.config/nvim/init.vim                                                                               vim  utf-8[unix]  100% ☰  102/102 ㏑ :  1
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
