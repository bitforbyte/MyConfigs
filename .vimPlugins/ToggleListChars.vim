let s:enabled = 0

function! ToggleListChars()
    if s:enabled
        set nolist
        let s:enabled = 0
    else
        set listchars=tab:>-,trail:-,eol:$ list
        let s:enabled = 1
    endif
endfunction
