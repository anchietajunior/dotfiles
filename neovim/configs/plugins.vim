" Plugins
call plug#begin()

" Files
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'skywind3000/vim-quickui'

" Icons
Plug 'ryanoasis/vim-devicons'

" Fuzy finder - Search files
Plug 'rking/ag.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'

" Linter
Plug 'dense-analysis/ale'

" Status bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Themes
Plug 'morhetz/gruvbox'
Plug 'tomasr/molokai'

" Editor
Plug 'jiangmiao/auto-pairs'
Plug 'sonph/onehalf'
Plug 'universal-ctags/ctags'
Plug 'tpope/vim-commentary'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'editorconfig/editorconfig-vim'

" Languages
Plug 'sheerun/vim-polyglot'

" Javascript
Plug 'jelera/vim-javascript-syntax'

" Ruby
Plug 'tpope/vim-rails'
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rake'
Plug 'janko-m/vim-test'
Plug 'ecomba/vim-ruby-refactoring'
Plug 'tpope/vim-endwise'

" Autocomplete
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()
