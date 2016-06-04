call pathogen#infect()

colorscheme molokai
syntax on
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

set cindent
set cinkeys=0{,0},:,0#,!^F,<CR>
set cinoptions=:0

filetype plugin on

nmap <F8> :TagbarToggle<CR>
let g:tagbar_sort = 0

let g:miniBufExplMapWindowNavVim = 1 
let g:miniBufExplMapWindowNavArrows = 1 
let g:miniBufExplMapCTabSwitchBufs = 1 
let g:miniBufExplModSelTarget = 1 

if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

let mapleader = ","
let maplocalleader = ","

let g:rainbow_active = 1

" C
set cscopeprg=/usr/bin/cscope
set cst
set csto=0

set foldmethod=syntax
set nofoldenable

" Go
"au FileType go nmap <Leader>s <Plug>(go-implements)
"au FileType go nmap <Leader>i <Plug>(go-info)
"au FileType go nmap <Leader>gd <Plug>(go-doc)
"au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)

"au FileType go nmap <leader>r <Plug>(go-run)
"au FileType go nmap <leader>b <Plug>(go-build)
"au FileType go nmap <leader>t <Plug>(go-test)
"au FileType go nmap <leader>c <Plug>(go-coverage)

"au FileType go nmap <Leader>ds <Plug>(go-def-split)
"au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
"au FileType go nmap <Leader>dt <Plug>(go-def-tab)

"au FileType go nmap <Leader>e <Plug>(go-rename)

au FileType go nmap <Leader>c <Plug>(go-callers)
au FileType go nmap <Leader>d <Plug>(go-callees)
au FileType go nmap <Leader>r <Plug>(go-referrers)
au FileType go nmap <Leader>i <Plug>(go-implements)
au FileType go nmap <Leader>g <Plug>(go-def)

let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
"let g:go_auto_type_info = 1
let g:go_fmt_command = "goimports"

" Rust
let g:rustc_path = $HOME.'/tools/rustc-1.8.0/src'
let g:rust_conceal = 0
let g:rust_conceal_mod_path = 0
let g:rust_conceal_pub = 0
let g:rust_recommended_style = 1
let g:rust_fold = 1
let g:rust_bang_comment_leader = 0
let g:ftplugin_rust_source_path = $HOME.'/tools/rustc-1.8.0'
let g:rustfmt_command = 'rustfmt'
let g:rustfmt_autosave = 1
let g:rustfmt_fail_silently = 0
let g:rustmft_options = ''

set hidden
let g:racer_cmd = "racer"
let $RUST_SRC_PATH="/home/mura/tools/rustc-1.8.0/src"