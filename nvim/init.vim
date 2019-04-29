""" Dependencies

source ~/.dotfiles/nvim/plugins.vim
source ~/.dotfiles/nvim/keymaps.vim

""" Colors

" Disable Background Color Erase (BCE) so that color schemes render properly when inside 256-color tmux and GNU screen.
" See also http://snk.tuxfamily.org/log/vim-256color-bce.html
if &term =~ '256color'
    set t_ut=
endif

" Use 24-bit (true-color) mode in Vim/Neovim when outside tmux (this is for the OneDark colorscheme)
if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif
if (has("termguicolors"))
    set termguicolors
endif

""" General

set hidden " Allow for current buffer to be backgrounded
set number " Show current line number on the side bar
set noshowmode " Disable the mode status at the bottom
set showcmd " Show last command executed at the bottom of screen
set scrolloff=2 " Keep 2 screen lines above/below the cursor if possible
set ignorecase " Ignore case when searching ...
set smartcase " ... unless search pattern contains upper case characters
set smartindent " Smart autoindenting when starting a new line
set nowrap " Don't wrap lines
set linebreak " Wrap long lines; don't break words
set colorcolumn=121 " Highlight the 81st column
set mouse-=a " Disable mouse click to go to position
set autoread " Detect when a file is changed
set list lcs=tab:\ \ " When cursor is on a tab char, go to beginning of tab, not end (Note: the space after the second \ is important)
set splitbelow " Open files below the current window when doing a horizontal split
set splitright " Open files to the right of the current window when doing a vertical split
set hlsearch " Highlight search results
set noswapfile " Don't make swap files
set formatoptions=croqlj " Format options that are good for Google style. See :help fo-table
set backspace=indent,eol,start " Allow backspacing through autoindents, line-endings, and backwards through the start of an insertion
set incsearch " Search as characters are entered

""" Spaces & Tabs

set tabstop=2       " number of visual spaces per TAB
set softtabstop=2   " number of spaces in tab when editing
set shiftwidth=2    " number of spaces to use for autoindent
set expandtab       " tabs are space
set autoindent
set copyindent      " copy indent from the previous line

""" Clipboard

set clipboard+=unnamedplus

""" Auto Commands

autocmd insertenter * :setlocal nohlsearch " Toggle hl off when entering insert mode
autocmd insertleave * :setlocal hlsearch " Toggle hl back on when leaving insert mode

filetype plugin indent on " Enable file type based indenting and syntax highlighting (Note: needs to be at the end)
syntax on
