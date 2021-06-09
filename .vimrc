" python stuff
if has('python3')
endif

" Plugins
set runtimepath^=~/.vim/plugins/autoclose.vim

" Syntax highlighting
syntax on
set cursorline

" Autocomplete wordlists
set dictionary+=~/.vim/words/tex.dict

" Add dictionary wordlists to <C-n>
set complete+=k

" Spaces instead of tabs
set softtabstop=4
set shiftwidth=4
set tabstop=4
set expandtab

" Automatically indent on a new line
set autoindent

" Turn mouse on
set mouse=a

" Line numbers and wrap
set number
set nowrap

" cursor
let &t_ti.="\e[1 q"
let &t_SI.="\e[5 q"
let &t_EI.="\e[1 q"
let &t_te.="\e[0 q"
let &t_SR.="\e[3 q"

" encoding
set encoding=utf-8

" backspace setting
set backspace=2
imap <A-BS> <C-w>

" Clipboard
set clipboard=unnamed

" Keep lines below and above cursor
set scrolloff=8

" Scroll horizontally 1 char at a time
set sidescroll=1
set sidescrolloff=4

" Highlight searches
set hlsearch

" spell check
setlocal spell
set spelllang=en_us
hi clear SpellBad
hi clear SpellCap
hi clear SpellRare
hi SpellBad cterm=underline
inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u

" Plugins
call plug#begin('~/.vim/plugged')

Plug 'lervag/vimtex'
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_view_forward_search_on_start=0
let g:vimtex_quickfix_mode=0
" Conceal on .tex files
if &filetype ==# 'tex'
    set conceallevel=2
    let g:tex_conceal='abdmg'
endif
"let g:vimtex_indent_enabled = 0

Plug 'sirver/ultisnips'
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'

" Paste images into markdown files
Plug 'zedchance/md-img-paste.vim'
autocmd FileType markdown nmap <buffer><silent> <leader>p :call mdip#MarkdownClipboardImage()<CR>
let g:mdip_imgdir_absolute = '/Users/zedchance/Dropbox/Files/Code/Sites/notes/static'
let g:mdip_imgdir_intext = '/notes'

" hugo helper
Plug 'robertbasic/vim-hugo-helper'

" plist helper
Plug 'darfink/vim-plist'

" code completer
Plug 'ycm-core/YouCompleteMe'
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_filetype_blacklist = { 'tex': 1, 'markdown': 1 }
let g:ycm_key_list_select_completion = []
let g:ycm_key_list_previous_completion = []

" git diff in gutter
Plug 'airblade/vim-gitgutter'

call plug#end()

" colorscheme
colorscheme akintoij
hi texItalStyle cterm=bold
