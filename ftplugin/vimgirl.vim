nnoremap <silent> <Space> za

set foldmethod=expr
set foldexpr=(getline(v:lnum)=~'^$')?-1:((indent(v:lnum)<indent(v:lnum+1))?('>'.indent(v:lnum+1)/&sw):indent(v:lnum)/&sw)
set foldtext=getline(v:foldstart)
set fillchars=fold:\ 

highlight Folded term=NONE ctermfg=blue ctermbg=NONE
