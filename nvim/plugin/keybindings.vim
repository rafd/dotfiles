" Normal/operator-pending/visual-mode bindings {{
noremap * :let @/="\\<<C-r><C-w>\\>"<CR>
noremap j gj
noremap k gk
noremap gj j
noremap gk k

" Make navigating windows easier
noremap <C-h> <C-w>h

" for neovim
noremap <BS> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

" Toggle spellchecking
noremap <leader>ss :setlocal spell!<CR>
noremap Y y$

" Undo tree
noremap <leader>x :bd!<CR>

" Execute current file (assuming it's a script)
noremap <leader>R :!./%<CR>
noremap <F12> :TagbarToggle<CR>

" Normal mode bindings
nnoremap <leader><leader> :
nnoremap / /\v
nnoremap <silent> <leader>* :exe 'vimgrep /'.@/.'/g %'<CR>:copen<CR>
nnoremap <silent> <leader>ev :e $MYVIMRC<CR>
if has("gui_running")
  nnoremap <silent> <leader>sv :so $MYVIMRC<CR>:so $MYGVIMRC<CR>
else
  nnoremap <silent> <leader>sv :so $MYVIMRC<CR>
endif

" Highlight text under cursor
nnoremap <silent> <leader>hh :execute 'match InterestingWord1 /\<<C-r><C-w>\>/'<CR>
nnoremap <silent> <leader>h1 :execute 'match InterestingWord1 /\<<C-r><C-w>\>/'<CR>
nnoremap <silent> <leader>h2 :execute '2match InterestingWord2 /\<<C-r><C-w>\>/'<CR>
nnoremap <silent> <leader>h3 :execute '3match InterestingWord3 /\<<C-r><C-w>\>/'<CR>
" }}
nnoremap <silent> <leader>/ :let @/=""<CR>
nnoremap <leader>W :w<CR>
nnoremap <leader>z zMzv
nnoremap // :noh<CR>

" Show syntax group
nnoremap <leader>P :call <SID>SynStack()<CR>

" Visually select the text last edited/pasted
nnoremap gV `[v`]

" Reflow paragraph
nnoremap Q gqip

" Using this instead of autochdir
nnoremap <leader>cd :cd %:p:h<CR>
nnoremap gt <C-w>gf
nnoremap gT <C-w>gF
nnoremap <Left> :tabprevious<CR>
nnoremap <Right> :tabnext<CR>

" Tabular
nnoremap <Leader>b= :Tabularize /=<CR>
nnoremap <Leader>b: :Tabularize /^[^:]*:\zs/r0c0l0<CR>
nnoremap <Leader>b, :Tabularize /^[^,]*,\zs/r0c0l0<CR>

" Denite
nnoremap <leader>t :<C-u>Denite -buffer-name=files
      \ `finddir('.git', ';') != '' ? 'file_rec/git' : 'file_rec'`<CR>
nnoremap <leader>o :<C-u>Denite -buffer-name=buffers buffer<CR>
nnoremap <leader>l :<C-u>Denite -buffer-name=lines line<CR>

" Map <leader>n to move to nth split
for n in range(1, 9)
  exe "nnoremap <silent> <leader>" . n . " :" . n . "wincmd w<CR>"
endfor

" Focus the current line (overwrites C-z, use :sus to suspend), wipes f register
nnoremap <C-z> mfzMzvzz`f:Pulse<CR>

" Command-mode bindings

" Reopen the current file as sudo
cnoremap w!! w !sudo tee % > /dev/null

" Expand to the directory of the current file
cnoremap %% <C-R>=expand('%:h').'/'<cr>
cnoremap <C-a> <Home>
cnoremap <C-e> <End>
cnoremap s/ s/\v
cnoremap e%% echo expand("%:p")<cr>

" Visual-mode bindings
vnoremap <leader><leader> :
vnoremap <tab> %
vnoremap Q gq

" Bubble multiple lines up/down using unimpared plugin.
vnoremap <C-Up> [egv
vnoremap <C-Down> ]egv
vnoremap / /\v

" Tabular
vnoremap <Leader>b= :Tabularize /=<CR>
vnoremap <Leader>b: :Tabularize /:\zs<CR>
vnoremap <leader>rv :call ExtractVariable()<CR>

" Fix linewise visual selection of various text objects
nnoremap Vit vitVkoj
nnoremap Vat vatV
nnoremap Vab vabV
nnoremap VaB vaBV

" Operator-pending mode bindings
" Next ()
onoremap <silent> inb :<C-U>normal! f(vib<cr>
onoremap <silent> anb :<C-U>normal! f(vab<cr>
onoremap <silent> in( :<C-U>normal! f(vi(<cr>
onoremap <silent> an( :<C-U>normal! f(va(<cr>
" Next {}
onoremap <silent> inB :<C-U>normal! f{viB<cr>
onoremap <silent> anB :<C-U>normal! f{vaB<cr>
onoremap <silent> in{ :<C-U>normal! f{vi{<cr>
onoremap <silent> an{ :<C-U>normal! f{va{<cr>
" Next []
onoremap <silent> ind :<C-U>normal! f[vi[<cr>
onoremap <silent> and :<C-U>normal! f[va[<cr>
onoremap <silent> in[ :<C-U>normal! f[vi[<cr>
onoremap <silent> an[ :<C-U>normal! f[va[<cr>
" Next <>
onoremap <silent> in< :<C-U>normal! f<vi<<cr>
onoremap <silent> an< :<C-U>normal! f<va<<cr>
" Next ''
onoremap <silent> in' :<C-U>normal! f'vi'<cr>
onoremap <silent> an' :<C-U>normal! f'va'<cr>
" Next ""
onoremap <silent> in" :<C-U>normal! f"vi"<cr>
onoremap <silent> an" :<C-U>normal! f"va"<cr>

" Insert mode bindings
inoremap <C-Space> <C-X><C-O>
inoremap <Left> <C-d>
inoremap <Right> <C-t>
inoremap <C-a> <Esc>I
inoremap <C-e> <Esc>A

" Make end of sentences set an undo point to facilitate typing long stretches
inoremap . .<C-g>u
inoremap ! !<C-g>u
inoremap ? ?<C-g>u
inoremap : :<C-g>u
