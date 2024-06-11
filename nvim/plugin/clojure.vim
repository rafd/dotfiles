
let g:clojure_maxlines = 0

let g:clojure_special_indent_words = 'deftype,defrecord,reify,proxy,extend-type,extend-protocol,letfn,defcomponent,defcomponentmethod,reg-event-fx,x/transform,x/multi-path'

augroup clojure
  autocmd!

  autocmd BufRead,BufNewFile *.cljs,*.edn,*.clj
        \ let g:clojure_fuzzy_indent_patterns += ['^div', '^a', '^h1', '^button',
        \  '^h3', '^input', '^label', '^li', '^ul', '^span', '^svg', '^g', '^form',
        \  '^table', '^this-as','^td','^tr', '^thead', '^tbody', '^h4', '^h2',
        \ '^tfoot', '^nav', '^header',
        \ '^register-handler', '^reg-sub', '^reg-event-db', '^reg-event-fx', '^reg-pull-sub', '^reg-query-sub', '^multipath', '^transform']

  autocmd BufRead,BufNewFile *.clj
        \ let g:clojure_fuzzy_indent_patterns += ['^POST', '^PUT', '^DELETE', '^GET', '^OPTIONS', '^PATCH', '^context']

  autocmd BufRead,BufNewFile *.clj,*.cljc
        \ nnoremap <buffer> ® :w <bar> :Require<CR>
        "\ nnoremap <buffer> <M-r> :Require<CR>

augroup END

function! GetCljProjectRoot(buffer) abort
    let l:project_root = ale#path#FindNearestFile(a:buffer, 'project.clj')

    if !empty(l:project_root)
        return fnamemodify(l:project_root, ':h')
    endif

    return ''
endfunction

call ale#linter#Define('clojure', {
\   'name': 'clojure-lsp',
\   'lsp': 'stdio',
\   'executable': '/opt/homebrew/bin/clojure-lsp',
\   'command': '/opt/homebrew/bin/clojure-lsp',
\   'project_root': function('GetCljProjectRoot'),
\})

let g:ale_linters = {'clojure': ['clj-kondo', 'clojure-lsp']}

lua require('init')
