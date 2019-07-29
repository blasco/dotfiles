" ----------------------------------------
" Functions
" ----------------------------------------

" ---------------
" QFDo
" ---------------
" Populates the argument list with all of the files listed in the quickfix list:

" Define a command to make it easier to use
command! -nargs=+ QFDo call QFDo(<q-args>)
function! QFDo(command)
    " Create a dictionary so that we can
    " get the list of buffers rather than the
    " list of lines in buffers (easy way
    " to get unique entries)
    let buffer_numbers = {}
    " For each entry, use the buffer number as 
    " a dictionary key (won't get repeats)
    for fixlist_entry in getqflist()
        let buffer_numbers[fixlist_entry['bufnr']] = 1
    endfor
    " Make it into a list as it seems cleaner
    let buffer_number_list = keys(buffer_numbers)

    " For each buffer
    for num in buffer_number_list
        " Select the buffer
        exe 'buffer' num
        " Run the command that's passed as an argument
        exe a:command
        " Save if necessary
        update
    endfor
endfunction


" Change font size
let g:fnt_types = ['Inconsolata']
let g:fnt_sizes = [ 13 ]

let g:fnt_index = 0
let g:fnt_size  = g:fnt_sizes[g:fnt_index]

function! CycleFont()
  let g:fnt_index = (g:fnt_index + 1) % len(g:fnt_types)
  let g:fnt_size  = g:fnt_sizes[g:fnt_index]
  call ResetFont()
endfunction

function! ResetFont ()
  if has('gui_running')
    exe ':set guifont=' . g:fnt_types[g:fnt_index] . '\ ' . string(g:fnt_size)
  endif
endfunction

call ResetFont()

function! FontSizePlus ()
  let g:fnt_size = g:fnt_size + 2
  call ResetFont()
endfunction

function! FontSizeMinus ()
  let g:fnt_size = g:fnt_size - 2
  call ResetFont()
endfunction

nnoremap <leader>+ :call FontSizePlus()<cr>
nnoremap <leader>- :call FontSizeMinus()<cr>
nnoremap <leader><kPlus> :call FontSizePlus()<cr>
nnoremap <leader><kMinus> :call FontSizeMinus()<cr>
nnoremap <leader>0 :call CycleFont()<cr>
nnoremap <leader><k0> :call CycleFont()<cr>

