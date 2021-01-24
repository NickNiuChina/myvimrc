" Setting for this user and all the files.
set nu
set hlsearch
syntax on
" Uncomment the following to have Vim jump to the last position when       
" reopening a file                                                         
if has("autocmd")                                                          
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif                                                        
endif 

" Set for perl
au BufNewFile,BufRead *.pl,*.pm
\ set tabstop=4
\ expandtab

" Set for python
au BufNewFile,BufRead *.py
\ set tabstop=4
\ expandtab

au BufNewFile,BufRead *.c
\ set tabstop=4
\ expandtab

" Run the program according to extensions
map <F5> :call RunProgram()<CR>
func! RunProgram()
    exec "w"
    if &filetype == 'python'
        exec "!time python2.7 %"
    elseif &filetype == 'perl'
        exec "!time perl %"
    endif

endfunc
