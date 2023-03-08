""""""""""""""""""""""""""""""""""""""""""""""""""if protect vim"""""""""""""""""""""""""
if (has("nvim")) " . Only for nvim
""""""""""""""""""""""""""""""""""""""""""""""""""""""""vim-plug""""""""""""""""""""""""""""
    call plug#begin()
        Plug 'pearofducks/ansible-vim'
        Plug 'pearofducks/ansible-vim', { 'do': './UltiSnips/generate.sh' }
        Plug 'sainnhe/sonokai'
        Plug 'vim-airline/vim-airline'
        Plug 'vim-airline/vim-airline-themes'
        Plug 'junegunn/fzf'
        Plug 'junegunn/fzf.vim'
        Plug 'jiangmiao/auto-pairs'
        Plug 'ryanoasis/vim-devicons'
"""         Plug 'wbthomason/packer.nvim'
"""         Plug 'neovim/nvim-lspconfig'
"""         Plug 'williamboman/nvim-lsp-installer'
        Plug 'sheerun/vim-polyglot'
    call plug#end()
    """"""""""""""""""""""""""""""airline"""""""""""""""""""""""""""""""""""""""""""""""""""""""
    let g:airline_theme = 'sonokai'
    let g:airline#extensions#tabline#formatter = 'default'
    let g:airline#extensions#tabline#enabled = 1
    let g:airline_powerline_fonts = 1
    """"""""""""""""""""""""""""""""""""themes""""""""""""""""""""""""""""""""""""""""""""""""
    
    let g:sonokai_style = 'andromeda'
    let g:sonokai_enable_italic = 1
    let g:sonokai_disable_italic_comment = 0
    let g:sonokai_diagnostic_line_highlight = 1
    let g:sonokai_current_word = 'bold'
    colorscheme sonokai
        highlight Normal guibg=NONE ctermbg=NONE
        highlight EndOfBuffer guibg=NONE ctermbg=NONE
endif
"""""""""""""""""""""""""""""""""""""""""""""""""""end protect vim"""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Global Sets"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax on               " Enable syntax highlight
set tabstop=4           " Show existing tab with 4 spaces width
set softtabstop=4       " Show existing tab with 4 spaces width
set shiftwidth=4        " When indenting with '>', use 4 spaces width
set expandtab           " On pressing tab, insert 4 spaces
set smarttab            " insert tabs on the start of a line according to shiftwidth
set smartindent         " Automatically inserts one extra level of indentation in some cases
set hidden              " Hides the current buffer when a new file is openned
set cursorline          " Show cursor liner 
set number relativenumber      " Number relative line        
set incsearch           " Incremental search
set ignorecase          " Ingore case in search
set smartcase           " Consider case if there is a upper case character
set scrolloff=8         " Minimum number of lines to keep above and below the cursor
set signcolumn=yes      " Add a column on the left. Useful for linting
set cmdheight=2         " Give more space for displaying messages
set updatetime=100      " Time in miliseconds to consider the changes
set clipboard=unnamedplus " Clipboard integration. not work in vim
set encoding=utf-8      " The encoding should be utf-8 to activate the font icons
set splitbelow          " Create the horizontal splits below
set autoread            " Update vim after file update from outside
set mouse=a             " Enable mouse support
filetype on             " Detect and set the filetype option and trigger the FileType Event
filetype plugin on      " Load the plugin file for the file type, if any
filetype indent on      " Load the indent file for the file type, if any
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif
if has("autocmd")
  " When editing a file, always jump to the last cursor position
  autocmd BufReadPost *
  \ if line("'\"") > 0 && line ("'\"") <= line("$") |
  \   exe "normal g`\"" |
  \ endif
endif

""""""""""""""""""""""""""""""""""""""""""""remaps"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""".vimrc is symbolic link to .config/nvim/init.vim"""""""""""""""
map <C-j> <C-w>j
map <C-h> <C-w>h
map <C-k> <C-w>k
map <C-l> <C-w>l
map <C-t> :tabNext<CR>
nmap qq :q
nmap qf :q!
nmap wq :wq <CR>
nmap ss :%s/
nmap ww :w <CR>
nmap tt :tabnew 
nmap tv :vsplit
nmap op o<Esc>p
nmap oi O<Esc>j
vnoremap jk <Esc>
vnoremap jk <Esc>
nmap oo A<CR>
nmap oo A<CR>
inoremap jk <Esc>
vnoremap jk <Esc>
"""""""""""""""""""""""""""""""""fzf"""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""fzf"""""""""""""""""""""""""""""""""
nmap ff <Esc> :Files ~/
vnoremap ff <Esc> :Files ~/
map bb <Esc> :Buffers <CR>
"""""""""""""""""""""""""""buffer management"""""""""""""""""""""""""""
map bw <Esc> :w <CR> <Esc> :bw <CR>
map bq <Esc> :bdelete! <CR>
