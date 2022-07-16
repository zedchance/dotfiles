" nvim init

" set nocompatible            " disable compatibility to old-time vi
set showmatch               " show matching 
set ignorecase              " case insensitive 
set mouse=v                 " middle-click paste with 
set hlsearch                " highlight search 
set incsearch               " incremental search
set tabstop=4               " number of columns occupied by a tab 
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=4            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
set wildmode=longest,list   " get bash-like tab completions
" set cc=100                  " set an 100 column border for good coding style
filetype plugin indent on   " allow auto-indenting depending on file type
syntax on                   " syntax highlighting
set mouse=a                 " enable mouse click
set clipboard=unnamedplus   " using system clipboard
filetype plugin on
set cursorline              " highlight current cursorline
set ttyfast                 " Speed up scrolling in Vim
" set spell                 " enable spell check (may need to download language package)
set noswapfile            " disable creating swap file
" set backupdir=~/.cache/vim " Directory to store backup files.
set nowrap
set backspace=2             " backspace setting
imap <A-BS> <C-w>
set sidescroll=1            " scroll horizontally 1 char at a time
set sidescrolloff=4
set scrolloff=8             " Keep lines below and above cursor


" Plugin Section
call plug#begin("~/.vim/plugged")
    Plug 'EdenEast/nightfox.nvim'
    Plug 'dracula/vim'
    Plug 'projekt0n/github-nvim-theme'
    Plug 'ryanoasis/vim-devicons'
    " Plug 'SirVer/ultisnips'
    Plug 'honza/vim-snippets'
    Plug 'scrooloose/nerdtree'
    " Plug 'Xuyuanp/nerdtree-git-plugin'
    Plug 'preservim/nerdcommenter'
    Plug 'mhinz/vim-startify'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'nvim-lua/plenary.nvim'
    " Plug 'nvim-telescope/telescope.nvim'
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    " Plug 'nvim-lualine/lualine.nvim'
    " Plug 'nanozuki/tabby.nvim'
    Plug 'ap/vim-css-color'
    " Plug 'wfxr/minimap.vim'
call plug#end()


" color schemes
if (has("termguicolors"))
    set termguicolors
endif
syntax enable

" colorscheme evening
" colorscheme dracula
colorscheme akintoij
" colorscheme nordfox
" colorscheme github_dimmed

" open new split panes to right and below
set splitright
set splitbelow

" Vim jump to the last position when reopening a file
if has("autocmd")
    au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
                \| exe "normal! g'\"" | endif
endif

" move between panes to left/bottom/top/right
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" back to startify
" nnoremap <leader>s <cmd>Startify<cr>

" nerdtree
" nnoremap <leader>n :NERDTreeFocus<CR>

" telescope
" Find files using Telescope command-line sugar.
" nnoremap <leader>ff <cmd>Telescope find_files<cr>
" nnoremap <leader>fg <cmd>Telescope live_grep<cr>
" nnoremap <leader>fb <cmd>Telescope buffers<cr>
" nnoremap <leader>fh <cmd>Telescope help_tags<cr>
" nnoremap <leader>f* <cmd>Telescope grep_string<cr>
" nnoremap <leader>fs <cmd>Telescope git_status<cr>
" lua << END
" require('telescope').setup({
"   defaults = {
"     layout_config = {
"       horizontal = { width = 0.9 }
"     },
"   },
" })
" END

" lualine
" lua << END
" require('lualine').setup {
"   options = {
"     icons_enabled = true,
"     theme = 'auto',
"     component_separators = { left = ' ', right = ' '},
"     section_separators = { left = ' ', right = ' '},
"     disabled_filetypes = {},
"     always_divide_middle = true,
"     globalstatus = false,
"   },
"   sections = {
"     lualine_a = {},
"     lualine_b = {},
"     lualine_c = {'filename'},
"     lualine_x = {'diagnostics'},
"     lualine_y = {'progress', 'location'},
"     lualine_z = {'branch', 'diff'}
"   },
"   inactive_sections = {
"     lualine_a = {},
"     lualine_b = {},
"     lualine_c = {'filename'},
"     lualine_x = {'location'},
"     lualine_y = {},
"     lualine_z = {}
"   },
"   tabline = {
"   },
"   extensions = {}
" }
" END

" tabby
" lua << END
" require("tabby").setup({
"     tabline = require("tabby.presets").tab_only,
" })
" END

" minimap
" let g:minimap_width = 10
" let g:minimap_auto_start = 1
" let g:minimap_auto_start_win_enter = 1

