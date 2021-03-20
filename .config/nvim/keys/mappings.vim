" My custom mappings
au FileType python set foldmethod=indent
au FileType vim set fdm=marker

au Filetype vim nnoremap <silent> <buffer> <leader>r :so %<CR>
au Filetype rust nnoremap <buffer> <leader>r :w<CR>:FloatermNew rustc % && ./%:t:r && rm ./%:t:r<CR>
au Filetype java nnoremap <buffer> <leader>r :w<CR>:FloatermNew javac % && java %:t:r && rm ./*.class<CR>
au FileType c nnoremap <buffer> <leader>r :w<CR>:FloatermNew gcc -o thenga % && ./thenga && rm ./thenga<CR>
au FileType javascript nnoremap <buffer> <leader>r :w<CR>:FloatermNew node %<CR>
au Filetype python nnoremap <buffer> <leader>r :w<CR>:FloatermNew python %<CR>
au FileType sh nnoremap <buffer> <leader>r :w<CR>:FloatermNew ./%<CR>

" Better nav for omnicomplete
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")

inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
