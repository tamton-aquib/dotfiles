" My custom mappings
nnoremap <C-a> ggVG
nnoremap <leader>f :Files<CR>
nnoremap <leader>t :FloatermNew --autoclose=2<CR>
nnoremap <leader>m :FloatermNew --autoclose=2 ytop<CR>
nnoremap <leader>p :FloatermNew --autoclose=2 python<CR>
nnoremap <leader>l :LazyGit<CR>

cmap W w
cmap Q q
inoremap jk <Esc>
inoremap kj <Esc>
au FileType python set foldmethod=indent

nnoremap <leader>' ciw""<Esc>P
nnoremap <leader>w Iconsole.log(<Esc>A);<Esc>

" Running Filetypes
au Filetype vim nnoremap <silent> <buffer> <leader>r :so %<CR>
au Filetype rust nnoremap <buffer> <leader>r :w<CR>:FloatermNew rustc % && ./%:t:r && rm ./%:t:r<CR>
au Filetype java nnoremap <buffer> <leader>r :w<CR>:FloatermNew javac % && java %:t:r && rm ./*.class<CR>
au FileType c nnoremap <buffer> <leader>r :w<CR>:FloatermNew gcc -o thenga % && ./thenga && rm ./thenga<CR>
au FileType javascript nnoremap <buffer> <leader>r :w<CR>:FloatermNew node %<CR>
au Filetype python nnoremap <buffer> <leader>r :w<CR>:FloatermNew python %<CR>
au FileType sh nnoremap <buffer> <leader>r :w<CR>:FloatermNew ./%<CR>


" Abbreviations
abbr ture true
abbr flase false

" Better nav for omnicomplete
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")

" Use alt + hjkl to resize windows
nnoremap <M-j>    :resize -2<CR>
nnoremap <M-k>    :resize +2<CR>
nnoremap <M-l>    :vertical resize -2<CR>
nnoremap <M-h>    :vertical resize +2<CR>

" Easy CAPS
inoremap <c-u> <ESC>viwUi
nnoremap <c-u> viwU<Esc>

" TAB in general mode will move to text buffer
nnoremap <TAB> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <S-TAB> :bprevious<CR>

" Alternate way to save
nnoremap <C-s> :w<CR>
" Alternate way to quit
nnoremap <C-Q> :wq!<CR>
" <TAB>: completion.
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

" Better tabbing
vnoremap < <gv
vnoremap > >gv

" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l


nnoremap <Leader>o o<Esc>^Da
nnoremap <Leader>O O<Esc>^Da
