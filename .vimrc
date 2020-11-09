" python stuff
if has('python3')
endif

" Plugins
set runtimepath^=~/.vim/plugins/autoclose.vim

" Syntax highlighting
syntax on
colorscheme peachpuff
hi MatchParen cterm=bold ctermbg=none ctermfg=blue

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

" Disable override of colorscheme in MacVim
let macvim_skip_colorscheme=1

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

" Keep lines below and above cursor
set scrolloff=5

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
let g:vimtex_quickfix_mode=0
set conceallevel=0
let g:tex_conceal='abdmg'
"let g:vimtex_indent_enabled = 0

Plug 'sirver/ultisnips'
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'

call plug#end()

