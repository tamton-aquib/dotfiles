" GENERAL SETTINGS {{{

" set leader key
let g:mapleader = " "

syntax enable                           " Enables syntax highlighing
set hidden                              " Required to keep multiple buffers open multiple buffers
set nowrap                              " Display long lines as just one line
set encoding=utf-8                      " The encoding displayed
set pumheight=10                        " Makes popup menu smaller
set fileencoding=utf-8                  " The encoding written to file
set ruler              			            " Show the cursor position all the time
set cmdheight=1                         " More space for displaying messages
set iskeyword+=-                      	" treat dash separated words as a word text object"
set mouse=a                             " Enable your mouse
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set t_Co=256                            " Support 256 colors
set conceallevel=0                      " So that I can see `` in markdown files
set tabstop=2                           " Insert 2 spaces for a tab
set shiftwidth=2                        " Change the number of space characters inserted for indentation
set autoindent                          " Good auto indent
set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
set expandtab                           " Converts tabs to spaces
set smartindent                         " Makes indenting smart
set laststatus=0                        " Always display the status line
set number                              " Line numbers
set cursorline                          " Enable highlighting of the current line
set showtabline=2                       " Always show tabs
set noshowmode                          " We don't need to see things like -- INSERT -- anymore
set nobackup                            " This is recommended by coc
set nowritebackup                       " This is recommended by coc
set updatetime=300                      " Faster completion
set timeoutlen=500                      " By default timeoutlen is 1000 ms
set formatoptions-=cro                  " Stop newline continution of comments
set clipboard=unnamedplus               " Copy paste between vim and everything else
set relativenumber
set nohlsearch
set scrolloff=8
set incsearch

" You can't stop me
cmap w!! w !sudo tee %

" custom
set foldmethod=syntax
set foldlevel=99
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.php'
filetype indent on
set signcolumn=no 

let g:python_highlight_space_errors = 0
let g:pep8_ignore="E501,W601"

let s:comment_map = { 
    \   "c": '\/\/',
    \   "java": '\/\/',
    \   "javascript": '\/\/',
    \   "php": '\/\/',
    \   "python": '#',
    \   "sh": '#',
    \   "vim": '"',
    \ }

function! ToggleComment()
    if has_key(s:comment_map, &filetype)
        let comment_leader = s:comment_map[&filetype]
        if getline('.') =~ "^\\s*" . comment_leader . " " 
            " Uncomment the line
            execute "silent s/^\\(\\s*\\)" . comment_leader . " /\\1/"
        else 
            if getline('.') =~ "^\\s*" . comment_leader
                " Uncomment the line
                execute "silent s/^\\(\\s*\\)" . comment_leader . "/\\1/"
            else
                " Comment the line
                execute "silent s/^\\(\\s*\\)/\\1" . comment_leader . " /"
            end
        end
    else
        echo "No comment leader found for filetype"
    end
endfunction

vnoremap <C-_> :call ToggleComment()<CR>
nnoremap <C-_> :call ToggleComment()<CR>

" }}}

"  PLUGINS {{{

call plug#begin('~/.config/nvim/autoload/plugged')
    " Floaterm
    Plug 'voldikss/vim-floaterm'
    " Fuzzy Finder
    Plug 'junegunn/fzf.vim'
    " html auto-close tags
    Plug 'alvan/vim-closetag'
    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    " Sonokai colorscheme
    Plug 'sainnhe/sonokai'
call plug#end()
" }}}

" SONOKAI THEME {{{
let g:sonokai_style = 'andromeda'
let g:sonokai_enable_italic = 1
syntax on

if (has("termguicolors"))
    set termguicolors
    hi LineNr ctermbg=NONE guibg=NONE
endif
" }}}

" KEY-MAPPINGS {{{

" My custom mappings
nnoremap <C-a> ggVG
nnoremap <leader>f :Files<CR>
autocmd Filetype vim nnoremap <silent> <buffer> <leader>r :so %<CR>
nnoremap <leader>t :FloatermNew --autoclose=2<CR>
nnoremap <leader>m :FloatermNew --autoclose=2 ytop<CR>
nnoremap <leader>p :FloatermNew --autoclose=2 python<CR>
cmap W w
cmap Q q

au FileType python set foldmethod=indent

autocmd Filetype rust nnoremap <buffer> <leader>r :w<CR>:FloatermNew rustc % && ./%:t:r && rm ./%:t:r<CR>
autocmd Filetype java nnoremap <buffer> <leader>r :w<CR>:FloatermNew javac % && java %:t:r && rm ./*.class<CR>
autocmd FileType c nnoremap <buffer> <leader>r :w<CR>:FloatermNew gcc -o thenga % && ./thenga && rm ./thenga<CR>
autocmd FileType javascript nnoremap <buffer> <leader>r :w<CR>:FloatermNew node %<CR>
autocmd Filetype python nnoremap <buffer> <leader>r :w<CR>:FloatermNew python %<CR>

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
" }}}

" FLOATERM CONFIG {{{

" let g:floaterm_autoinsert=1
let g:floaterm_width=0.85
let g:floaterm_height=0.85
let g:floaterm_wintitle=0
" let g:floaterm_autoclose=1

let g:rehash256 = 1
" hi FloatermBorder guibg=#444 guifg=#34568B
hi FloatermBorder guibg=#444 guifg=#fff

" let g:floaterm_borderchars="━┃━┃┏┓┛┗"
" let g:floaterm_borderchars="─│─│┌┐┘└"

let g:floaterm_borderchars="═║═║╔╗╝╚"
" }}}

" FZF CONFIG {{{


" This is the default extra key bindings let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

" Enable per-command history.
" CTRL-N and CTRL-P will be automatically bound to next-history and
" previous-history instead of down and up. If you don't like the change,
" explicitly bind the keys to down and up in your $FZF_DEFAULT_OPTS.
let g:fzf_history_dir = '~/.local/share/fzf-history'

map <leader>f :Files<CR>
map <leader>b :Buffers<CR>

let g:fzf_tags_command = 'ctags -R'
" Border color
let g:fzf_layout = {'up':'~90%', 'window': { 'width': 0.8, 'height': 0.8,'yoffset':0.5,'xoffset': 0.5, 'highlight': 'Todo', 'border': 'sharp' } }

" let $FZF_DEFAULT_OPTS = '--layout=reverse --info=inline'
let $FZF_DEFAULT_COMMAND="rg --files --hidden -g '!.git/*' -g '!**__pycache__**'"


" Customize fzf colors to match your color scheme
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

"Get Files
command! -bang -nargs=? -complete=dir Files
    \ call fzf#vim#files(<q-args>, fzf#vim#with_preview({'options': ['--layout=reverse', '--info=inline']}), <bang>0)


" Get text in files with Rg
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always --smart-case '.shellescape(<q-args>), 1,
  \   fzf#vim#with_preview(), <bang>0)

" Ripgrep advanced
function! RipgrepFzf(query, fullscreen)
  let command_fmt = 'rg --column --line-number --no-heading --color=always --smart-case %s || true'
  let initial_command = printf(command_fmt, shellescape(a:query))
  let reload_command = printf(command_fmt, '{q}')
  let spec = {'options': ['--phony', '--query', a:query, '--bind', 'change:reload:'.reload_command]}
  call fzf#vim#grep(initial_command, 1, fzf#vim#with_preview(spec), a:fullscreen)
endfunction

command! -nargs=* -bang RG call RipgrepFzf(<q-args>, <bang>0)

" Git grep
command! -bang -nargs=* GGrep
  \ call fzf#vim#grep(
  \   'git grep --line-number '.shellescape(<q-args>), 0,
  \   fzf#vim#with_preview({'dir': systemlist('git rev-parse --show-toplevel')[0]}), <bang>0)

" }}}

au! BufWritePost $MYVIMRC source %      " auto source when writing to init.vm alternatively you can run :source $MYVIMRC
