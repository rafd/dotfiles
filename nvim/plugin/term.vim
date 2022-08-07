function! s:SwitchToTerm()
 let termBufs = map(filter(nvim_list_bufs(), {i,v -> getbufvar(v,"&buftype") == 'terminal'}), {i,v -> [v,getbufvar(v,"term_title")]})
 vsplit
 wincmd l
 if len(termBufs) == 0
   term
 else
	 execute "buffer" termBufs[0][0]
 endif
endfunction
command! -nargs=0 SwitchToTerm call s:SwitchToTerm()

nnoremap <C-t> :SwitchToTerm<CR>
