" This Source Code Form is subject to the terms of the Mozilla Public
" License, v. 2.0. If a copy of the MPL was not distributed with this
" file, You can obtain one at https://mozilla.org/MPL/2.0/.

" the name "sae" comes from Salticidae, the family of jumping spiders
" the purpose of this plugin is to provide four mappings that help
" move quickly between words and lines
" SaeUp and SaeDown provide a smooth scrolling
" SaeRight and SaeLeft act like w and b motions but without the annoying wrapping
" on line break!

if exists('g:sae')
  finish
endif
let g:sae = 1

noremap <silent> <unique> <script> <Plug>SaeUp <SID>ScrollUp
noremap <silent> <unique> <script> <Plug>SaeDown <SID>ScrollDown
noremap <SID>ScrollUp <SID>ScrollUp()<CR>
noremap <SID>ScrollDown <SID>ScrollDown()<CR>
noremap <silent> <unique> <script> <Plug>SaeRight <SID>FastRight
noremap <silent> <unique> <script> <Plug>SaeLeft <SID>FastLeft
noremap <expr> <SID>FastRight <SID>FastRight()
noremap <expr> <SID>FastLeft <SID>FastLeft()

function s:ScrollUp()
  execute "normal!" &scroll / 2 . "\<C-y>"
endfunction

function s:ScrollDown()
  execute "normal!" &scroll / 2 . "\<C-e>"
endfunction

function s:FastRight()
  if col(".") == col("$") - 1
        \ || col("$") == 1
        \ || col(".") == col("$")
    return ''
  endif
  if search('\%#\w\+\s*$', 'cnWz') > 0
    return '$'
  endif
  if search('\%#\W\+\s*$', 'cnWz') > 0
    return '$'
  endif
  return 'w'
endfunction

function s:FastLeft()
  if col('$') == 1 || col('.') == 1
    return ''
  endif
  if search('^\s\+\%#', 'cnWb') > 0
    return '0'
  endif
  return 'b'
endfunction
