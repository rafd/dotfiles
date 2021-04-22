set autoindent
set backspace=indent,eol,start
set clipboard=unnamed
set completeopt=longest,menuone,preview
if exists("&conceallevel")
  set conceallevel=2 " Enable 'Conceal' mode
endif
set cursorline
if exists("&cryptmethod")
  set cryptmethod=blowfish
endif
set inccommand=nosplit
set dict=/usr/share/dict/words
set diffopt+=iwhite " Ignore trailing whitespace in diffs
set encoding=utf-8
set expandtab
set foldenable
set foldmethod=marker
set foldlevelstart=99
set formatoptions+=n  " gq recognizes numbered lists
set gdefault  " Make substitute global by default
let g:ackprg = 'ag --vimgrep'
set grepprg=ag\ --vimgrep
set hidden  " When opening a new file hide the current instead of closing it
set history=1000
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set lazyredraw " redraw only when required (speed up macros)
set list
set listchars=tab:▸\ ,trail:¬,extends:→,precedes:←,nbsp:.
set magic
set makeprg=rake
let mapleader = ' '
let maplocalleader = '\'
set matchtime=3
set nrformats+=alpha
set nocompatible
set noshowmode
set omnifunc=syntaxcomplete#Complete
set pastetoggle=<F2>
set path-=/usr/include
set path+=**
if exists("&relativenumber")
  set relativenumber
endif
set ruler
set scrolloff=2
set shiftwidth=2
set softtabstop=2
set showbreak=↪
set showmatch
set smartcase
set smarttab
set splitright
set tabstop=2
if exists("&undofile")
  set undofile
endif
set undolevels=1000
set virtualedit+=block
set visualbell
set wildmenu
set wildmode=list:longest,full
set wildignore+=.hg,.git,.svn " Ignore version control files...
set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifst " ...compiled binary files
set wildignore+=*.DS_Store " ...OS X weird thing
if has('win32')
  set shellslash
endif

set backup
set backupdir=$HOME/.vimbackup//
set directory=$HOME/.vimswap//
set viewdir=$HOME/.vimviews//
if exists("&undodir")
  set undodir=$HOME/.vimundo//
endif

" Creating backup dirs if they don't exist
for dir in [&backupdir, &directory, &undodir, &directory]
  if !isdirectory(expand(dir))
    call mkdir(expand(dir), "p")
  endif
endfor

let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1

syntax enable
set background=dark
colorscheme Tomorrow-Night-Bright

filetype on
filetype plugin on
filetype indent on

" Use a bar-shaped cursor for insert mode, even through tmux.
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1
set termguicolors


" Setting some colours
highlight InterestingWord1 ctermbg=110
highlight InterestingWord2 ctermbg=148
highlight InterestingWord3 ctermbg=172
highlight bufexplorermapping guifg=white
highlight IndentGuidesOdd  guibg=red   ctermbg=DarkGray
highlight IndentGuidesEven guibg=green ctermbg=Gray
highlight SpellBad guifg=Red

" Delete trailing whitespace
function! CleanupWhitespace()
  let _s = @/
  let l  = line(".")
  let c  = col(".")
  keepjumps :%s/\v\s+$//e
  let @/ = _s
  call cursor(l, c)
endfunction

augroup cleanUp
  autocmd!
  autocmd BufWritePre * :call CleanupWhitespace()
augroup END
