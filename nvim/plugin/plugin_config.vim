" Airline
let g:airline_powerline_fonts = 1
"let g:airline_theme = 'gruvbox'

" Syntastic
let g:syntastic_enable_signs=1
let g:syntastic_auto_loc_list=2

" Ctrl P
nnoremap <leader>CC :CtrlPClearCache<CR>
"let g:ctrlp_map = '<leader>t'
"let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 0
let g:ctrlp_dont_split = 'NERD_tree_2'
"let g:ctrlp_extensions = ['tag']
let g:ctrlp_prompt_mappings = {
      \ 'PrtSelectMove("j")': ['<C-j>', '<down>', '<s-tab>'],
      \ 'PrtSelectMove("k")': ['<C-k>', '<up>', '<tab>'],
      \ 'PrtHistory(-1)': ['<C-n>'],
      \ 'PrtHistory(1)': ['<C-p>'],
      \ 'ToggleFocus()': ['<C-tab>'],
      \ }
let ctrlp_filter_greps = "".
      \ "ag -iv '\\.(" .
      \ "jar|class|swp|swo|log|so|o|pyc|jpe?g|png|gif|mo|po" .
      \ ")$' | " .
      \ "ag -v '^(\\./)?(" .
      \ "classes|libs|deploy/vendor|.git|.hg|.svn|.*migrations|docs/build" .
      \ ")/'"
let my_ctrlp_user_cmd = "" .
      \ "find %s '(' -type f -o -type l ')' -maxdepth 15 " .
      \ "-not -path '*/\\.*/*' | "  .
      \ ctrlp_filter_greps
let my_ctrlp_git_cmd = "" .
      \ "cd %s && git ls-files --exclude-standard -co | " .
      \ ctrlp_filter_greps
let g:ctrlp_user_command = ['.git/', my_ctrlp_git_cmd, my_ctrlp_user_cmd]

" deoplete
let g:deoplete#enable_at_startup = 1
"let g:deoplete#enable_smart_case = 1
call deoplete#custom#var('omni','input_patterns', {
      \ 'clojure' : '[^\d() \t]+'
      \})
"let g:deoplete#omni#input_patterns = {}
"let g:deoplete#omni#input_patterns.c = '[^.\d *\t]\%(\.\|->\)\w*'
"let g:deoplete#omni#input_patterns.clojure = '[^\d() \t]+'
"let g:deoplete#omni#input_patterns.cpp = '[^.\d *\t]\%(\.\|->\)\w*\|\h\w*::\w*'
"let g:deoplete#omni#input_patterns.css   = '^\s\+\w\+\|\w\+[):;]\?\s\+\w*\|[@!]'
"let g:deoplete#omni#input_patterns.go = '[^.\d *\t]\.\w*'
"let g:deoplete#omni#input_patterns.html = '<[^>]*'
"let g:deoplete#omni#input_patterns.javascript = '[^. \t]\.\%(\h\w*\)\?'
"let g:deoplete#omni#input_patterns.md   = '<[^>]*'
"let g:deoplete#omni#input_patterns.ruby = ['[^. *\t]\.\w*', '\h\w*::']
"let g:deoplete#omni#input_patterns.sass   = '^\s\+\w\+\|\w\+[):;]\?\s\+\w*\|[@!]'
"let g:deoplete#omni#input_patterns.scss   = '^\s\+\w\+\|\w\+[):;]\?\s\+\w*\|[@!]'
"let g:deoplete#omni#input_patterns.xml  = '<[^>]*'
"autocmd CmdwinEnter * let b:deoplete_sources = ['buffer']
"let g:deoplete#sources = {}
"let g:deoplete#sources._ = ['buffer', 'look']
"let g:deoplete#sources.clojure = ['buffer', 'omni', 'look']
"let g:deoplete#sources.rust = ['buffer', 'racer']

let g:echodoc_enable_at_startup = 1

let g:gitgutter_enabled = 1

let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1
let g:indent_guides_auto_colors = 0


" Show syntax highlighting groups for word under cursor
function! SynStack() " {{
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc "}}
