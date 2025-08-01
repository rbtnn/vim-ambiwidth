
let g:loaded_ambiwidth = 1

let s:rootdir = expand('<sfile>:h:h')

if (&encoding == 'utf-8') && exists('*setcellwidths') && has('vim_starting')
  if !filereadable(expand(s:rootdir .. '/autoload/ambiwidth.vim'))
    call ambiwidth_generator#make_vimscript()
  endif
  call ambiwidth#set_ambiwidth()
endif
