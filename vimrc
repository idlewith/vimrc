set nocompatible
set encoding=utf8

set guifont=Consolas:h16

" set foldmethod=manual
" set foldmethod=indent

let mapleader=" "



syntax on

set nobackup
set noswapfile
set nowritebackup
set noro

set ignorecase
set nu
set relativenumber
set clipboard+=unnamed
set scrolloff=30

filetype plugin indent on
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4


nmap <CR> o<ESC>
vmap p pgvy
vmap P Pgvy

set history=200
set notimeout
set incsearch
set hlsearch


vmap <tab> >gv
vmap <s-tab> <gv

nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l




" debug mark
nmap <leader>dm <esc>

nmap <leader>e :Vex

" SelectInProjectView
nmap <leader>fl <esc>
" reformat code
nmap <leader>fc <esc>
" file structure
nnoremap <leader>fs :vimgrep /^#\+\s/ %<Bar>cwindow<CR>
" find in path, multiple files
nmap <leader>fp <esc>


" goto back
nmap gb <C-o>
" goto forward
nmap gf <esc>
" goto next error
nmap ge <esc>


nmap <leader>nl :nohlsearch<CR>

" popup action
nmap <leader>pa <esc>
" popup search file
nmap <leader>pf <esc>
" popup document
nmap <leader>pd <esc>
" popup parameter info
nmap <leader>pp <esc>


" run run
nmap <leader>rr <esc>
" run debug
nmap <leader>rd <esc>
" run stop
nmap <leader>rs <esc>
" recent projects
nmap <leader>rp <esc>
" recent files
nmap <leader>rf <esc>

" open terminal
nmap <leader>t <esc>

" window all
nmap <leader>wa <esc>
" window todo
nmap <leader>wb <esc>
" window close
nmap <leader>wc <esc>
" hide other window
nmap <leader>wh <esc>
" open project windows
nmap <leader>wp <esc>
" window refactor
nmap <leader>wr <esc>
" window split vertically 
nmap <leader>ws <esc>
" window zen mode
nmap <leader>wz <esc>
" clse other editors
nmap <leader>wo <esc>

" soft wrap
nmap <leader>sw <esc>

" collapse all
nmap <leader>zc zM
" expand all
nmap <leader>zo zR

" visual window refactor
vmap <leader>wr <esc>
" visual rename variable
vmap <leader>rn <esc>
" visual extract variable
vmap <leader>ev <esc>
" visual extract method
vmap <leader>em <esc>
" visual comment 
vmap <leader>/ <esc>


nnoremap <leader>gd :normal yi[<CR>:e <C-r>"<CR>
nnoremap <leader>ti I- [ ] <ESC>A start: <ESC>:put=strftime('%Y-%m-%d %H:%M')<CR>kJ
nnoremap <leader>td ^f[lrxA end: <ESC>:put=strftime('%Y-%m-%d %H:%M')<CR>kJ



nnoremap <leader>toc :g/^#\s/t0<CR>

autocmd TextChanged,TextChangedI *.rst,*.txt,*.py,*.md silent write

autocmd FileType sql nnoremap <leader>fc :%!sqlformat --reindent --keywords upper --identifiers lower -<CR>



function MarkdownLevel()
    let h = matchstr(getline(v:lnum), '^#\+')
    if empty(h)
        return "="
    else
        return ">" . len(h)
    endif
endfunction
" au BufEnter *.md setlocal foldexpr=MarkdownLevel()  
" au BufEnter *.md setlocal foldmethod=expr 


au BufEnter *.md syntax clear markdownError

