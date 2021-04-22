call plug#begin('~/.config/nvim/plugged')

  " Status Bar
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'

  " Clojure
  Plug 'guns/vim-sexp' | Plug 'tpope/vim-sexp-mappings-for-regular-people'
  Plug 'tpope/vim-fireplace'
  Plug 'guns/vim-clojure-static'
  Plug 'guns/vim-clojure-highlight'
  Plug 'alexander-yakushev/compliment'
  " Plug 'venantius/vim-cljfmt'
  Plug 'w0rp/ale'
  " Plug 'bfontaine/zprint.vim'

  " Completion
  " Plug 'ujihisa/neco-look'
  Plug 'Shougo/deoplete.nvim'
  Plug 'Shougo/echodoc.vim'
  " Plug 'tbodt/deoplete-tabnine', { 'do': './install.sh' }

  " Denite
  Plug 'Shougo/denite.nvim'
  Plug 'Shougo/neomru.vim'
  Plug 'Shougo/neoyank.vim'
  Plug 'Shougo/vimproc.vim', {'do': 'make'}

  " Languages
  Plug 'othree/html5.vim'
  Plug 'pangloss/vim-javascript'

  " Git
  Plug 'airblade/vim-gitgutter'

  " Misc
  Plug 'ctrlpvim/ctrlp.vim'
  Plug 'nathanaelkane/vim-indent-guides'
  Plug 'vim-syntastic/syntastic'
  Plug 'editorconfig/editorconfig-vim'
  Plug 'mileszs/ack.vim'
  Plug 'axelf4/vim-strip-trailing-whitespace'

  " Tpope
  Plug 'tpope/vim-markdown'
  Plug 'tpope/vim-repeat'
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-unimpaired'
  Plug 'tpope/vim-vinegar'

call plug#end()
