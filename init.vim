call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
"   - Vim (Windows): '~/vimfiles/plugged'
"   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
" You can specify a custom plugin directory by passing it as the argument
"   - e.g. `call plug#begin('~/.vim/plugged')`
"   - Avoid using standard Vim directory names like 'plugin'

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
" Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-default branch
" Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }


" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim' 

" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'vim-airline/vim-airline-themes'

Plug 'vim-airline/vim-airline'

Plug 'Yggdroot/indentLine'
Plug 'psliwka/vim-smoothie'
Plug 'tpope/vim-fugitive'

Plug 'tpope/vim-commentary'
" Plug 'ycm-core/YouCompleteMe'
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'tpope/vim-surround'
Plug 'ryanoasis/vim-devicons'
Plug 'powerline/powerline-fonts'
Plug 'jiangmiao/auto-pairs'
" Plug 'phpactor/phpactor', {'for': 'php', 'tag': '*', 'do': 'composer install --no-dev -o'}
" Initialize plugin system

Plug 'vim-scripts/AutoComplPop'

Plug 'sheerun/vim-polyglot'
Plug 'preservim/tagbar'

call plug#end()

" colorscheme dracula
set backspace=indent,eol,start
set ts=4 sw=4
let g:airline_theme = 'ayu_mirage'
set encoding=UTF-8
if (&term =~ '^xterm' && &t_Co == 256)
  set t_ut= | set ttyscroll=1
endif

set ic

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nmap <F8> :TagbarToggle<CR>

let $PATH = "C:\\Program Files\\Git\\usr\\bin;" . $PATH
