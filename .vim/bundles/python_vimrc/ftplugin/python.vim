if has("autocmd")
    autocmd BufRead *.py set tw=79 " 79 characters max on python files
    set omnifunc=pythoncomplete#Complete " Python autocompletion !
endif

" Python syntax test from syntax/python.vim plugin
let python_highlight_all = 1 

" Ignore some files with tab autocompletion
set suffixes=*~,*.pyc,*.pyo

" Improve formatting
autocmd FileType python set complete+=k~/.vim/syntax/python.vim isk+=.,(
