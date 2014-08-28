function! s:ConvertShouldToExpect(line1,line2)
  let l:save_cursor = getpos(".")

  silent! execute ':' . a:line1 . ',' . a:line2 . 's/\(\s\+\)\(.*\)\.should_receive\(.\+\)/\1expect(\2).to receive\3/'
  silent! execute ':' . a:line1 . ',' . a:line2 . 's/\(\s\+\)\(.*\)\.should_not_receive\(.\+\)/\1expect(\2).not_to receive\3/'
  silent! execute ':' . a:line1 . ',' . a:line2 . 's/\(\s\+\)\(.*\)\.should == \(.\+\)/\1expect(\2).to eq(\3)/'
  silent! execute ':' . a:line1 . ',' . a:line2 . 's/\(\s\+\)\(.*\)\.should_not == \(.\+\)/\1expect(\2).not_to eq(\3)/'
  silent! execute ':' . a:line1 . ',' . a:line2 . 's/\(\s\+\)\(.*\)\.should_not /\1expect(\2).not_to /'
  silent! execute ':' . a:line1 . ',' . a:line2 . 's/\(\s\+\)\(.*\)\.should /\1expect(\2).to /'

  call setpos('.', l:save_cursor)
endfunction

" Commands
command! -range ConvertShouldToExpect call s:ConvertShouldToExpect(<line1>,<line2>)
