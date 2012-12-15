" Indenting
set tabstop=2           " tabstops of 2
set shiftwidth=2        " indents of 2
set nosmartindent       " no indent for {if,else,while,do,for,switch}

" LaTeX-aware paragraph reformatting (gqlp)
"   from http://dandrake.livejournal.com/268778.html
map \gq ?^$\\|^\s*\(\\begin\\|\\end\\|\\label\)?1<CR>gq//-1<CR>
omap lp ?^$\\|^\s*\(\\begin\\|\\end\\|\\label\)?1<CR>//-1<CR>.<CR>

