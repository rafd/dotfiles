call plug#begin('~/.config/nvim/plugged')

  " Status Bar
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'

  " Syntax Support
  Plug 'tpope/vim-markdown'                      " markdown
  Plug 'othree/html5.vim'                        " html5
  Plug 'pangloss/vim-javascript'                 " javascript

  " Clojure
  Plug 'guns/vim-sexp' | Plug 'tpope/vim-sexp-mappings-for-regular-people'
  Plug 'tpope/vim-fireplace'                     " repl integration
  Plug 'guns/vim-clojure-static'                 " syntax highlighting, indentation
  Plug 'guns/vim-clojure-highlight'              " syntax hl for runtime vars
  Plug 'alexander-yakushev/compliment'           " completion
  " Plug 'venantius/vim-cljfmt'
  " Plug 'bfontaine/zprint.vim'

  " Completion and LSP
  Plug 'w0rp/ale'                                 " linting
  if has('nvim')
    Plug 'Shougo/deoplete.nvim'
    Plug 'ujihisa/neco-look'                      " look completion source
    Plug 'deoplete-plugins/deoplete-lsp'          " lsp completion source
    Plug 'neovim/nvim-lspconfig'                  " auto-config for clojure (and other) lsps
  endif

  Plug 'codota/tabnine-nvim', { 'do': './dl_binaries.sh' }

  " Misc
  Plug 'ctrlpvim/ctrlp.vim'
  Plug 'airblade/vim-gitgutter'               " git status in gutter
  Plug 'editorconfig/editorconfig-vim'        " support .editorconfig files
  Plug 'axelf4/vim-strip-trailing-whitespace' " strip trailing whitespace
  Plug 'tpope/vim-repeat'                     " extend . to support more actions
  Plug 'tpope/vim-surround'                   " commands to surround: ys[ ys]
  Plug 'tpope/vim-vinegar'                    " directory browser: -
  Plug 'tpope/vim-eunuch'                     " unix commands: :Move, :Delete, ...

  " Plug 'Shougo/echodoc.vim'
  " Plug 'mileszs/ack.vim' "
  " Plug 'tpope/vim-unimpaired'
  " Plug 'nathanaelkane/vim-indent-guides'
  " Plug 'vim-syntastic/syntastic'

call plug#end()

