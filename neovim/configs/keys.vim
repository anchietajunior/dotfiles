" Mappings

"" Map leader to ,
let mapleader=','

nmap <leader>m :FZF<CR>
nmap <leader>/ :NERDTreeToggle<CR>
nmap <Leader>f :Ag<space>
nmap <Leader>t :tabnew<CR>
nmap <Leader>z :u<CR>

nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9

noremap YY "+y<CR>
noremap <leader>p "+gP<CR>
noremap XX "+x<CR>

if has('macunix')
  " pbcopy for OSX copy/paste
  vmap <C-x> :!pbcopy<CR>
  vmap <C-c> :w !pbcopy<CR><CR>
endif

map <Leader>tn :TestNearest<CR>
map <Leader>tf :TestFile<CR>
map <Leader>ta :TestSuite<CR>
map <Leader>tl :TestLast<CR>

" hit space twice to open menu
noremap <space><space> :call quickui#menu#open()<cr>
