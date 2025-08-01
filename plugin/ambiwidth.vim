
let g:loaded_ambiwidth = 1

let s:rootdir = expand('<sfile>:h:h')

if (&encoding == 'utf-8') && exists('*setcellwidths') && has('vim_starting')
  if !filereadable(expand(s:rootdir .. '/autoload/ambiwidth.vim'))
    call ambiwidth_generator#plugin_vimscript_generator()
  endif
  call ambiwidth#set_ambiwidth()
endif
