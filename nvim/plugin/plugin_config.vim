" Airline
let g:airline_powerline_fonts = 1

" Ctrl P
nnoremap <leader>CC :CtrlPClearCache<CR>
let g:ctrlp_working_path_mode = 0
let g:ctrlp_dont_split = 'NERD_tree_2'
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

let g:gitgutter_enabled = 1

" ale

let g:ale_linters = {
\   'clojure': ['clj-kondo'],
\}

" deoplete
let g:deoplete#enable_at_startup = 1
call deoplete#custom#option("smart_case", v:true)

call deoplete#custom#option('candidate_marks', ['A', 'S', 'D', 'F', 'G'])

call deoplete#custom#option('num_processes', 0)

" call deoplete#custom#var('omni','input_patterns', {
"    \ 'clojure' : '[^\d() \t]+'
"    \})
