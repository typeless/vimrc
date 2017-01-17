call pathogen#infect()

colorscheme molokai
syntax on
syntax sync minlines=256
filetype plugin on
"set background=dark

set noexpandtab
set tabstop=8
set shiftwidth=8
set nowrap
set hid
set number
set nopaste
set hlsearch 
set listchars=tab:>-,trail:_ list
set noerrorbells vb t_vb=
set mouse-=a
set cursorline
set lazyredraw
set synmaxcol=128

set laststatus=2
set statusline=%<%f\                     " Filename
set statusline+=\ %c-%l/%L\ %o\ '%B'     " col-row/allrow (bytes)
set statusline+=%w%h%m%r                 " Options
set statusline+=\ [%{&ff}/%Y]            " Filetype
set statusline+=\ [%{getcwd()}]          " Current dir
set statusline+=%=%-14.(%l,%c%V%)\ %p%%  " Right aligned file nav info


let mapleader = ","
let maplocalleader = ","

"" Remember last cursor positions
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

"" Tagbar
nmap <F8> :TagbarToggle<CR>
let g:tagbar_sort = 0

"" MiniBufExplorer
let g:miniBufExplMapWindowNavVim = 1 
let g:miniBufExplMapWindowNavArrows = 1 
let g:miniBufExplMapCTabSwitchBufs = 1 
let g:miniBufExplModSelTarget = 1 

"" Rainbow parents
let g:rainbow_active = 1

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" C
set cscopeprg=/usr/bin/cscope
set cst
set csto=0

set foldmethod=syntax
set nofoldenable

set autoindent
set smartindent
set cindent
set cinkeys=0{,0},:,0#,!^F,<CR>
set cinoptions=:0

"" Go
au FileType go nmap <Leader>s <Plug>(go-implements)
au FileType go nmap <Leader>i <Plug>(go-info)
au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)

au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
"au FileType go nmap <leader>c <Plug>(go-coverage)

"au FileType go nmap <Leader>ds <Plug>(go-def-split)
"au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
au FileType go nmap <Leader>dt <Plug>(go-def-tab)

au FileType go nmap <Leader>e <Plug>(go-rename)

au FileType go nmap <Leader>c <Plug>(go-callers)
au FileType go nmap <Leader>d <Plug>(go-callees)
au FileType go nmap <Leader>r <Plug>(go-referrers)
au FileType go nmap <Leader>i <Plug>(go-implements)
au FileType go nmap <Leader>g <Plug>(go-def)

"let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
"let g:go_highlight_structs = 1
let g:go_auto_type_info = 1
let g:go_fmt_command = "goimports"

" Syntastic for Go (See vim-go README.md)
let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck']
let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }

let g:go_list_type = "quickfix"

let g:go_gocode_autobuild = 0
let g:go_info_mode = 'guru'


"" Rust
let g:rustc_path = $HOME.'/tools/rust/bin/rustc'
let g:rust_conceal = 0
let g:rust_conceal_mod_path = 0
let g:rust_conceal_pub = 0
let g:rust_recommended_style = 1
let g:rust_fold = 1
let g:rust_bang_comment_leader = 0
let g:ftplugin_rust_source_path = $HOME.'/devel/rust/src'
let g:rustfmt_command = 'rustfmt'
let g:rustfmt_autosave = 1
let g:rustfmt_fail_silently = 0
let g:rustmft_options = ''

set hidden
let g:racer_cmd = $HOME."/.cargo/bin/racer"
let $RUST_SRC_PATH=$HOME."/devel/rust/src"

"" Cscope
nnoremap <leader>fa :call cscope#findInteractive(expand('<cword>'))<CR>
nnoremap <leader>l :call ToggleLocationList()<CR>
" s: Find this C symbol
nnoremap  <leader>fs :call cscope#find('s', expand('<cword>'))<CR>
" g: Find this definition
nnoremap  <leader>fg :call cscope#find('g', expand('<cword>'))<CR>
" d: Find functions called by this function
nnoremap  <leader>fd :call cscope#find('d', expand('<cword>'))<CR>
" c: Find functions calling this function
nnoremap  <leader>fc :call cscope#find('c', expand('<cword>'))<CR>
" t: Find this text string
nnoremap  <leader>ft :call cscope#find('t', expand('<cword>'))<CR>
" e: Find this egrep pattern
nnoremap  <leader>fe :call cscope#find('e', expand('<cword>'))<CR>
" f: Find this file
nnoremap  <leader>ff :call cscope#find('f', expand('<cword>'))<CR>
" i: Find files #including this file
nnoremap  <leader>fi :call cscope#find('i', expand('<cword>'))<CR>
